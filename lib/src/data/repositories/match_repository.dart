import 'package:deep_river_soft/core/models/match_model.dart';
import 'package:deep_river_soft/core/models/odds_model.dart';
import 'package:deep_river_soft/src/data/data_sources/match_remote_data_source.dart';

abstract interface class MatchRepository {
  /// Fetches all matches.
  Future<List<MatchModel>> getMatches();

  // Future<Map<String, String>> getSavedSelections();

  /// Provides a stream of real-time odds updates.
  Stream<OddsModel> get oddsUpdates;

  // Future<void> saveSelection(String matchId, String oddsKey);

  // Future<void> removeSelection(String matchId);

  void dispose();
}

/// The concrete implementation of [MatchRepository].
///
/// It coordinates data between the remote data source (for matches)
/// and the local data source (for user selections).
class MatchRepositoryImpl implements MatchRepository {
  final MatchRemoteDataSource _remoteDataSource;

  MatchRepositoryImpl({required MatchRemoteDataSource remoteDataSource})
    : _remoteDataSource = remoteDataSource;

  @override
  Future<List<MatchModel>> getMatches() => _remoteDataSource.getMatches();

  @override
  Stream<OddsModel> get oddsUpdates => _remoteDataSource.oddsUpdates;

  // @override
  // Future<Map<String, String>> getSavedSelections() =>
  //     _localDataSource.getSelectedOdds();

  // @override
  // Future<void> saveSelection(String matchId, String oddsKey) =>
  //     _localDataSource.saveSelectedOdd(matchId, oddsKey);

  // @override
  // Future<void> removeSelection(String matchId) =>
  //     _localDataSource.removeSelectedOdd(matchId);

  @override
  void dispose() {
    _remoteDataSource.dispose();
  }
}
