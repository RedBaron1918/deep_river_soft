part of 'match_bloc.dart';

enum MatchStatus { initial, loading, success, failure }

@freezed
sealed class MatchState with _$MatchState {
  const factory MatchState({
    @Default(MatchStatus.initial) MatchStatus status,
    @Default([]) List<MatchModel> allMatches,
    @Default([]) List<MatchModel> filteredMatches,
    @Default(SportType.all) SportType? selectedFilter,
    @Default({}) Map<int, String> selectedOdds,
    Object? error,
  }) = _MatchState;
}
