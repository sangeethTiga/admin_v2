import 'dart:convert';

import 'package:admin_v2/features/auth/domain/models/auth_response.dart';
import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthUtils {
  AuthUtils._();
  static AuthUtils? _instance;
  static final AuthUtils instance = (_instance ??= AuthUtils._());

  Future<void> writeUserData(AuthResponse user) async {
    await _writePreference('user', jsonEncode(user.toJson()));
  }

  Future<void> writeStoreData(StoreResponse data) async {
    await _writePreference('store', jsonEncode(data.toJson()));
  }

  Future<StoreResponse?> readStoreData() async {
    final String? storeData = await _readPreference('store');
    if (storeData != null) {
      final Map<String, dynamic> storeMap = jsonDecode(storeData);
      return StoreResponse.fromJson(storeMap);
    }
    return null;
  }

  Future<AuthResponse?> readUserData() async {
    final String? userData = await _readPreference('user');
    if (userData != null) {
      final Map<String, dynamic> userMap = jsonDecode(userData);
      return AuthResponse.fromJson(userMap);
    }
    return null;
  }

  Future<void> writeAccessTokens(String token) async {
    await _writePreference('token', token);
  }

  Future<String?> get readAccessToken async {
    return await _readPreference('token');
  }

  Future<void> writeRefreshTokens(String token) async {
    await _writePreference('refresh_token', token);
  }

  Future<String?> get readRefreshTokens async {
    return await _readPreference('refresh_token');
  }

  Future<bool> get isSignedIn async {
    final String? token = await _readPreference('token');
    return token != null;
  }

  Future<void> deleteAll() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  Future<void> _writePreference(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  Future<String?> _readPreference(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  // Future<void> writeOfferToDate(DateTime offerToDate) async {
  //   await _writePreference('offer_to_date', offerToDate.toIso8601String());
  // }

  // Future<DateTime?> readOfferToDate() async {
  //   final String? dateString = await _readPreference('offer_to_date');
  //   if (dateString != null) {
  //     return DateTime.tryParse(dateString);
  //   }
  //   return null;
  // }

  // Future<void> writeAddress(AddressListResponse address) async {
  //   await _writePreference('address', jsonEncode(address.toJson()));
  // }

  // Future<void> writeQty(ProductList product) async {
  //   await _writePreference('product', jsonEncode(product.toJson()));
  // }

  // static Future<int?> readQty() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   return prefs.getInt('product_qty');
  // }

  // Future<AddressListResponse?> readAddress() async {
  //   final String? addressData = await _readPreference('address');
  //   if (addressData != null) {
  //     final Map<String, dynamic> addressMap = jsonDecode(addressData);
  //     return AddressListResponse.fromJson(addressMap);
  //   }
  //   return null;
  // }

  // Future<void> deleteAddress() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.remove('address');
  // }
}
