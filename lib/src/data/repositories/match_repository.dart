import 'package:deep_river_soft/src/data/data_sources/match_local_data_source.dart';
import 'package:deep_river_soft/src/data/data_sources/match_remote_data_source.dart';
import 'package:deep_river_soft/src/data/models/match_model.dart';
import 'package:deep_river_soft/src/data/models/odds_model.dart';

abstract interface class MatchRepository {
  Future<List<MatchModel>> getAllMatches();

  Future<Map<int, String>> getSavedOdds();

  Stream<OddsModel> get oddsUpdates;

  Future<void> saveOdd(int matchId, String oddsKey);

  Future<void> removeOdd(int matchId);

  void dispose();
}

class MatchRepositoryImpl implements MatchRepository {
  final MatchRemoteDataSource _remoteDataSource;
  final MatchLocalDataSource _localDataSource;

  MatchRepositoryImpl({
    required MatchRemoteDataSource remoteDataSource,
    required MatchLocalDataSource localDataSource,
  }) : _remoteDataSource = remoteDataSource,
       _localDataSource = localDataSource;

  @override
  Future<List<MatchModel>> getAllMatches() => _remoteDataSource.getAllMatches();

  @override
  Stream<OddsModel> get oddsUpdates => _remoteDataSource.oddsUpdates;

  @override
  Future<Map<int, String>> getSavedOdds() => _localDataSource.getSavedOdds();

  @override
  Future<void> saveOdd(int matchId, String oddsKey) =>
      _localDataSource.saveOdd(matchId, oddsKey);

  @override
  Future<void> removeOdd(int matchId) => _localDataSource.removeOdd(matchId);

  @override
  void dispose() {
    _remoteDataSource.dispose();
  }
}
