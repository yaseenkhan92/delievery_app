import 'package:deleivery_app/api/baseapi.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Saves the token (member OR guest) on the phone, encrypted.
/// Android uses the Keystore, iOS uses the Keychain.
class TokenStorage {
  TokenStorage._();

  static const String _tokenKey = 'auth_token';
  static const FlutterSecureStorage _storage = FlutterSecureStorage();

  /// Save the token and start sending it with every request.
  static Future<void> save(String token) async {
    ApiClient.instance.setToken(token);
    await _storage.write(key: _tokenKey, value: token);
  }

  static Future<String?> read() => _storage.read(key: _tokenKey);

  /// Call once at app start (before runApp). Returns true if a saved token
  /// was found and applied to Dio.
  static Future<bool> restore() async {
    final token = await read();
    if (token == null || token.isEmpty) return false;
    ApiClient.instance.setToken(token);
    return true;
  }

  /// Remove the token from the phone and from Dio (logout).
  static Future<void> clear() async {
    ApiClient.instance.clearToken();
    await _storage.delete(key: _tokenKey);
  }
}
