part of 'match_bloc.dart';

@freezed
class MatchEvent with _$MatchEvent {
  const factory MatchEvent.loadMatches({@Default(false) bool forceRefresh}) =
      LoadMatches;

  const factory MatchEvent.filterChanged({required SportType newFilter}) =
      FilterChanged;

  const factory MatchEvent.oddSelected({
    required int matchId,
    required String oddKey,
  }) = OddSelected;

  const factory MatchEvent.manualOddsUpdateRequested({required int matchId}) =
      ManualOddsUpdateRequested;

  const factory MatchEvent.oddsUpdated(OddsModel update) = _OddsUpdated;

  const factory MatchEvent.highlightExpired(int matchId) = _HighlightExpired;
}
