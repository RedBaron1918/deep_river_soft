import 'dart:async';
import 'package:deep_river_soft/src/data/models/match_model.dart';
import 'package:deep_river_soft/src/data/models/odds_model.dart';
import 'package:deep_river_soft/src/data/models/sport_model.dart';
import 'package:deep_river_soft/src/data/repositories/match_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_bloc.freezed.dart';
part 'match_event.dart';
part 'match_state.dart';

class MatchBloc extends Bloc<MatchEvent, MatchState> {
  final MatchRepository _matchRepository;

  StreamSubscription<OddsModel>? _oddsSubscription;
  final Map<int, Timer> _highlightTimers = {};

  MatchBloc({required MatchRepository matchRepository})
    : _matchRepository = matchRepository,
      super(const MatchState()) {
    on<LoadMatches>(_onLoadMatches);
    on<FilterChanged>(_onFilterChanged);
    on<OddSelected>(_onOddSelected);
    on<_OddsUpdated>(_onOddsUpdated);
    on<_HighlightExpired>(_onHighlightExpired);
  }

  Future<void> _onLoadMatches(
    LoadMatches event,
    Emitter<MatchState> emit,
  ) async {
    if (state.status == MatchStatus.success && !event.forceRefresh) {
      return;
    }

    emit(state.copyWith(status: MatchStatus.loading));

    try {
      final results = await Future.wait([
        _matchRepository.getAllMatches(),
        _matchRepository.getSavedOdds(),
      ]);

      final matches = results[0] as List<MatchModel>;
      final savedSelections = results[1] as Map<int, String>;

      await _setupOddsSubscription();

      final filteredMatches = _applyCurrentFilter(matches);

      emit(
        state.copyWith(
          status: MatchStatus.success,
          allMatches: matches,
          filteredMatches: filteredMatches,
          selectedOdds: Map<int, String>.from(savedSelections),
          error: null,
        ),
      );
    } catch (error, stackTrace) {
      emit(state.copyWith(status: MatchStatus.failure, error: error));

      print('Error loading matches: $error\n$stackTrace');
    }
  }

  void _onFilterChanged(FilterChanged event, Emitter<MatchState> emit) {
    final newFilter = _toggleFilter(event.newFilter);
    final filteredMatches = _applyFilter(state.allMatches, newFilter);

    emit(
      state.copyWith(
        selectedFilter: newFilter,
        filteredMatches: filteredMatches,
      ),
    );
  }

  Future<void> _onOddSelected(
    OddSelected event,
    Emitter<MatchState> emit,
  ) async {
    try {
      final updatedSelections = await _updateSelection(
        event.matchId,
        event.oddKey,
      );

      emit(state.copyWith(selectedOdds: updatedSelections));
    } catch (error) {
      emit(state.copyWith(error: error));
    }
  }

  void _onOddsUpdated(_OddsUpdated event, Emitter<MatchState> emit) {
    final update = event.update;

    final updatedMatches = _updateMatchOdds(state.allMatches, update);
    if (updatedMatches == null) return;

    final filteredMatches = _applyCurrentFilter(updatedMatches);

    emit(
      state.copyWith(
        allMatches: updatedMatches,
        filteredMatches: filteredMatches,
      ),
    );

    _scheduleHighlightExpiration(update.matchId);
  }

  void _onHighlightExpired(_HighlightExpired event, Emitter<MatchState> emit) {
    _highlightTimers.remove(event.matchId)?.cancel();
  }

  SportType? _toggleFilter(SportType newFilter) {
    return state.selectedFilter == newFilter ? null : newFilter;
  }

  List<MatchModel> _applyCurrentFilter(List<MatchModel> matches) {
    return _applyFilter(matches, state.selectedFilter);
  }

  List<MatchModel> _applyFilter(List<MatchModel> matches, SportType? filter) {
    if (filter == null || filter == SportType.all) return matches;
    return matches.where((match) => match.sport.type == filter).toList();
  }

  Future<Map<int, String>> _updateSelection(int matchId, String oddKey) async {
    final currentSelections = Map<int, String>.from(state.selectedOdds);
    final isAlreadySelected = currentSelections[matchId] == oddKey;

    if (isAlreadySelected) {
      currentSelections.remove(matchId);
      await _matchRepository.removeOdd(matchId);
    } else {
      currentSelections[matchId] = oddKey;
      await _matchRepository.saveOdd(matchId, oddKey);
    }

    return currentSelections;
  }

  List<MatchModel>? _updateMatchOdds(
    List<MatchModel> matches,
    OddsModel update,
  ) {
    final matchIndex = matches.indexWhere((m) => m.id == update.matchId);
    if (matchIndex == -1) return null;

    final updatedMatch = matches[matchIndex].copyWith(odds: update.newOdds);
    return List<MatchModel>.from(matches)..[matchIndex] = updatedMatch;
  }

  void _scheduleHighlightExpiration(int matchId) {
    _highlightTimers[matchId]?.cancel();

    _highlightTimers[matchId] = Timer(const Duration(seconds: 2), () {
      if (!isClosed) {
        add(_HighlightExpired(matchId));
      }
    });
  }

  Future<void> _setupOddsSubscription() async {
    await _oddsSubscription?.cancel();
    _oddsSubscription = _matchRepository.oddsUpdates.listen((update) {
      // print('IS THIS EVEN FIRITNG???/');
      add(_OddsUpdated(update));
    }, onError: (error) => print('Odds subscription error: $error'));
  }

  @override
  Future<void> close() async {
    await _oddsSubscription?.cancel();

    for (final timer in _highlightTimers.values) {
      timer.cancel();
    }
    _highlightTimers.clear();

    _matchRepository.dispose();
    return super.close();
  }
}
