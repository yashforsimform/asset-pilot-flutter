import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Encrypted storage for sensitive values (auth token, etc.).
///
/// Singleton wrapper around [FlutterSecureStorage] so the rest of the app never
/// touches the plugin directly.
class SecureStorage {
  SecureStorage._();

  static final SecureStorage instance = SecureStorage._();

  static const String _kAuthToken = 'auth_token';

  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  Future<void> writeAuthToken(String token) =>
      _storage.write(key: _kAuthToken, value: token);

  Future<String?> readAuthToken() => _storage.read(key: _kAuthToken);

  Future<void> clear() => _storage.deleteAll();
}
