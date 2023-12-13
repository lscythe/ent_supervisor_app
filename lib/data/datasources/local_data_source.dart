import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:supervisor/constants/constants.dart';
import 'package:supervisor/services/services.dart';

@lazySingleton
class LocalDataSource {
  const LocalDataSource(
    this._secureStorage,
    this._storage,
  );

  final FlutterSecureStorage _secureStorage;
  final StorageService _storage;

  Future<void> setAccessToken(String value) async =>
      _secureStorage.write(key: PreferenceKeys.accessToken, value: value);

  Future<String> getAccessToken() async =>
      await _secureStorage.read(key: PreferenceKeys.accessToken) ?? "";

  Future<void> clear() async {
    await _secureStorage.deleteAll();
  }
}
