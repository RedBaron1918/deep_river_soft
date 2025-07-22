import 'dart:math';
import 'package:deep_river_soft/src/data/models/match_model.dart';
import 'package:deep_river_soft/src/data/models/odds_model.dart';
import 'package:deep_river_soft/src/data/models/sport_model.dart';
import 'package:deep_river_soft/core/mock_web_socket_client.dart';
import 'package:faker/faker.dart';

abstract interface class MatchRemoteDataSource {
  Future<List<MatchModel>> getAllMatches();
  Stream<OddsModel> get oddsUpdates;
  void dispose();
}

class MockMatchRemoteDataSource implements MatchRemoteDataSource {
  final _faker = Faker();
  final _random = Random();
  final _mockWebSocketClient = MockWebSocketClient();

  @override
  Future<List<MatchModel>> getAllMatches() async {
    final sportsList = SportType.values
        .where((s) => s != SportType.all)
        .toList();
    final matches = List.generate(10000, (index) {
      final sport = sportsList[_random.nextInt(sportsList.length)];
      return MatchModel(
        id: index,
        sport: SportModel(name: sport.name.toUpperCase(), type: sport),
        homeTeam: _faker.company.name(),
        awayTeam: _faker.company.name(),
        homeTeamScore: _random.nextInt(5),
        awayTeamScore: _random.nextInt(5),
        startTime: DateTime.now().subtract(
          Duration(minutes: _random.nextInt(60)),
        ),
        odds: {
          'home': (_random.nextDouble() * 3) + 1.3,
          'X': (_random.nextDouble() * 2) + 1.5,
          'away': (_random.nextDouble() * 3) + 1.3,
        },
      );
    });

    _mockWebSocketClient.connect(matchIds: matches.map((m) => m.id).toList());

    return matches;
  }

  @override
  Stream<OddsModel> get oddsUpdates => _mockWebSocketClient.stream;

  @override
  void dispose() {
    _mockWebSocketClient.disconnect();
  }
}
