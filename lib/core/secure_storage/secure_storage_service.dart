import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  Future<void> writeString(String key, String value) async {
    await _secureStorage.write(key: key, value: value);
  }

  Future<String?> readString(String key) async {
    return await _secureStorage.read(key: key);
  }

  Future<void> writeInt(String key, int value) async {
    await _secureStorage.write(key: key, value: value.toString());
  }

  Future<int?> readInt(String key) async {
    String? value = await _secureStorage.read(key: key);
    return value != null ? int.tryParse(value) : null;
  }

  Future<void> writeDouble(String key, double value) async {
    await _secureStorage.write(key: key, value: value.toString());
  }

  Future<double?> readDouble(String key) async {
    String? value = await _secureStorage.read(key: key);
    return value != null ? double.tryParse(value) : null;
  }

  Future<void> writeBool(String key, bool value) async {
    await _secureStorage.write(key: key, value: value.toString());
  }

  Future<bool?> readBool(String key) async {
    String? value = await _secureStorage.read(key: key);
    return value != null ? value.toLowerCase() == 'true' : null;
  }

  Future<void> delete(String key) async {
    await _secureStorage.delete(key: key);
  }

  Future<bool> containsKey(String key) async {
    return await _secureStorage.containsKey(key: key);
  }

  Future<void> deleteAll() async {
    await _secureStorage.deleteAll();
  }
}
