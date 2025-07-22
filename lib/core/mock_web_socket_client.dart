import 'dart:async';
import 'dart:math';
import 'package:deep_river_soft/src/data/models/odds_model.dart';

class MockWebSocketClient {
  final Random _random = Random();
  late StreamController<OddsModel> _controller;
  Timer? _timer;

  Stream<OddsModel> get stream => _controller.stream;

  void connect({
    required List<int> matchIds,
    Duration updateInterval = const Duration(seconds: 1),
  }) {
    _controller = StreamController<OddsModel>();

    _timer = Timer.periodic(updateInterval, (_) {
      if (matchIds.isEmpty) return;

      final randomMatchId = matchIds[_random.nextInt(matchIds.length)];
      final newOdds = {
        'home': (_random.nextDouble() * 3) + 1.3,
        'X': (_random.nextDouble() * 2) + 1.5,
        'away': (_random.nextDouble() * 3) + 1.3,
      };

      _controller.add(OddsModel(matchId: randomMatchId, newOdds: newOdds));
    });
  }

  void disconnect() {
    _timer?.cancel();
    _controller.close();
  }
}
