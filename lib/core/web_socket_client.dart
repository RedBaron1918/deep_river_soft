import 'dart:async';
import 'dart:math';

import 'package:deep_river_soft/core/models/odds_model.dart';

class WebSocketClient {
  final Random _random = Random();
  late StreamController<OddsModel> _controller;
  Timer? _timer;

  Stream<OddsModel> get stream => _controller.stream;

  void connect({
    required List<String> matchIds,
    Duration updateInterval = const Duration(seconds: 1),
  }) {
    _controller = StreamController<OddsModel>();
    _timer = Timer.periodic(updateInterval, (_) {
      if (matchIds.isEmpty) return;

      final randomMatchId = matchIds[_random.nextInt(matchIds.length)];

      final newOdds = {
        '1': (_random.nextDouble() * 3) + 1.3,
        'X': (_random.nextDouble() * 2) + 1.5,
        '2': (_random.nextDouble() * 3) + 1.3,
      };

      _controller.add(OddsModel(matchId: randomMatchId, newOdds: newOdds));
    });
  }

  void disconnect() {
    _timer?.cancel();
    _controller.close();
  }
}
