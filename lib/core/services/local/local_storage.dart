import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorage {
  final FlutterSecureStorage secureStorage;

  LocalStorage({
    required this.secureStorage,
  });

  Future<void> setString(String key, String value) async {
    await secureStorage.write(key: key, value: value);
  }

  Future<String?> getString(String key) async {
    return await secureStorage.read(key: key);
  }

  Future<void> setBool(String key, bool valu) async {
    String value = valu == true ? 'true' : 'false';
    await secureStorage.write(key: key, value: value);
  }

  Future<bool?> getBool(String key) async {
    final value = await secureStorage.read(key: key);
    if (value == 'true') return true;
    if (value == 'false') return false;
    return null;
  }

  Future<void> delete(String key) async {
    return await secureStorage.delete(key: key);
  }

  final String _cachedCode = 'cachedCode';

  Future<String> getCachedLanguage() async {
    final code = await secureStorage.read(key: _cachedCode);
    return code ?? 'en';
  }

  Future<void> changLanguage(String code) async {
    await secureStorage.write(key: _cachedCode, value: code);
  }

  Future<void> clearSecureStorage() async {
    await secureStorage.deleteAll();
  }
}
