import 'package:hive_flutter/hive_flutter.dart';
import 'package:local_storage/src/local_storage_interface.dart';

abstract final class CacheKeys {
  static const String selectedOdds = 'selectedOdds';
}

final class HiveLocalStorage implements LocalStorage {
  late final Box<dynamic> _appBox;

  @override
  Future<void> init() async {
    await Hive.initFlutter();

    _appBox = await Hive.openBox('app');
  }

  @override
  Future<T?> get<T>(String key) async {
    if (!_appBox.containsKey(key)) return null;

    return _appBox.get(key) as T;
  }

  @override
  Future<void> delete(String key) {
    return _appBox.delete(key);
  }

  @override
  Future<void> store<T>(String key, T value) {
    return _appBox.put(key, value);
  }

  @override
  Future<bool> has<T>(String key) {
    return Future.value(_appBox.containsKey(key));
  }
}
