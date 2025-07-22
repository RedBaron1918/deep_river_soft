import 'package:local_storage/local_storage.dart';

abstract interface class MatchLocalDataSource {
  Future<Map<int, String>> getSavedOdds();

  Future<void> saveOdd(int matchId, String oddsKey);

  Future<void> removeOdd(int matchId);
}

class MatchLocalDataSourceImpl implements MatchLocalDataSource {
  final LocalStorage _localStorage;

  MatchLocalDataSourceImpl(this._localStorage);

  @override
  Future<Map<int, String>> getSavedOdds() async {
    final rawResult = await _localStorage.get(CacheKeys.selectedOdds);

    if (rawResult == null) return {};

    final result = (rawResult as Map).map<int, String>((key, value) {
      return MapEntry(int.parse(key.toString()), value.toString());
    });

    return result;
  }

  @override
  Future<void> saveOdd(int matchId, String oddsKey) async {
    final currentSelections = await getSavedOdds();
    currentSelections[matchId] = oddsKey;
    await _localStorage.store(CacheKeys.selectedOdds, currentSelections);
  }

  @override
  Future<void> removeOdd(int matchId) async {
    final Map<int, String> currentSelections = await getSavedOdds();

    currentSelections.remove(matchId);

    await _localStorage.store(CacheKeys.selectedOdds, currentSelections);
  }
}
