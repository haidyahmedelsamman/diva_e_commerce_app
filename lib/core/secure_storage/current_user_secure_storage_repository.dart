import 'secure_storage_service.dart';

class CurrentUserSecureStorageRepository {
  final SecureStorageService _secureStorageService;

  static const String _passwordKey = 'currentUserPassword';

  CurrentUserSecureStorageRepository(this._secureStorageService);

  Future<void> savePassword(String password) async {
    await _secureStorageService.writeString(_passwordKey, password);
  }

  Future<String?> getPassword() async {
    return await _secureStorageService.readString(_passwordKey);
  }

  Future<void> deletePassword() async {
    await _secureStorageService.delete(_passwordKey);
  }

  Future<bool> isPasswordSaved() async {
    return await _secureStorageService.containsKey(_passwordKey);
  }
}
