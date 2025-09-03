import 'dart:convert';
import 'package:admin_v2/features/auth/domain/models/auth_response.dart';
import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthUtils {
  AuthUtils._();
  static AuthUtils? _instance;
  static final AuthUtils instance = (_instance ??= AuthUtils._());

  static const FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  Future<void> writeUserData(AuthResponse user) async {
    await _writeSecure('user', jsonEncode(user.toJson()));
  }

  Future<AuthResponse?> readUserData() async {
    final String? userData = await _readSecure('user');
    if (userData != null) {
      final Map<String, dynamic> userMap = jsonDecode(userData);
      return AuthResponse.fromJson(userMap);
    }
    return null;
  }

  Future<void> writeStoreData(StoreResponse data) async {
    await _writeSecure('store', jsonEncode(data.toJson()));
  }

  Future<void> deleteAccessToken() async {
    await AuthUtils._secureStorage.delete(key: 'token');
  }

  Future<StoreResponse?> readStoreData() async {
    final String? storeData = await _readSecure('store');
    if (storeData != null) {
      final Map<String, dynamic> storeMap = jsonDecode(storeData);
      return StoreResponse.fromJson(storeMap);
    }
    return null;
  }

  Future<void> writeAccessTokens(String token) async {
    await _writeSecure('token', token);
  }

  Future<String?> get readAccessToken async {
    return await _readSecure('token');
  }

  Future<void> writeRefreshTokens(String token) async {
    await _writeSecure('refresh_token', token);
  }

  Future<String?> get readRefreshTokens async {
    return await _readSecure('refresh_token');
  }

  Future<bool> get isSignedIn async {
    final String? token = await _readSecure('token');
    return token != null;
  }

  Future<void> deleteAll() async {
    await _secureStorage.deleteAll();
  }

  Future<void> _writeSecure(String key, String value) async {
    await _secureStorage.write(key: key, value: value);
  }

  Future<String?> _readSecure(String key) async {
    return await _secureStorage.read(key: key);
  }
}
