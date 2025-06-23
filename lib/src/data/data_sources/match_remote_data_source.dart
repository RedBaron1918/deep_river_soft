import 'dart:math';
import 'package:deep_river_soft/core/models/match_model.dart';
import 'package:deep_river_soft/core/models/odds_model.dart';
import 'package:deep_river_soft/core/models/sport_model.dart';
import 'package:deep_river_soft/core/web_socket_client.dart';
import 'package:faker/faker.dart';

abstract interface class MatchRemoteDataSource {
  Future<List<MatchModel>> getMatches();

  Stream<OddsModel> get oddsUpdates;

  void dispose();
}

class MockMatchRemoteDataSource implements MatchRemoteDataSource {
  final _faker = Faker();
  final _random = Random();
  final _webSocketClient = WebSocketClient();

  List<MatchModel>? _cachedMatches;

  @override
  Future<List<MatchModel>> getMatches() async {
    if (_cachedMatches != null) {
      return _cachedMatches!;
    }

    final matches = List.generate(10, (index) {
      final sportType =
          SportType.values[_random.nextInt(SportType.values.length)];
      return MatchModel(
        id: 'match_$index',
        sport: SportModel(name: sportType.name.toUpperCase(), type: sportType),
        homeTeam: _faker.company.name(),
        awayTeam: _faker.company.name(),
        homeTeamScore: _random.nextInt(5),
        awayTeamScore: _random.nextInt(5),
        startTime: DateTime.now().subtract(
          Duration(minutes: _random.nextInt(60)),
        ),
        odds: {
          '1': (_random.nextDouble() * 3) + 1.3,
          'X': (_random.nextDouble() * 2) + 1.5,
          '2': (_random.nextDouble() * 3) + 1.3,
        },
      );
    });

    _cachedMatches = matches;

    _webSocketClient.connect(matchIds: matches.map((m) => m.id).toList());

    return matches;
  }

  @override
  Stream<OddsModel> get oddsUpdates => _webSocketClient.stream;

  @override
  void dispose() {
    _webSocketClient.disconnect();
  }
}
