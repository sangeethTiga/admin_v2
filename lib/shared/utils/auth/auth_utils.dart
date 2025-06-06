// import 'dart:convert';

// import 'package:baqala_app/features/address/domain/model/address_list/address_list_response.dart';
// import 'package:baqala_app/features/auth/domain/models/verify/verify_response.dart';
// import 'package:baqala_app/features/home/domain/models/store_list/storelist_response.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// class AuthUtils {
//   AuthUtils._();
//   static AuthUtils? _instance;
//   static final AuthUtils instance = (_instance ??= AuthUtils._());

//   final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

//   Future<void> writeUserData(VerifyResponse user) async {
//     await _writeSecurely('user', jsonEncode(user.toJson()));
//   }

//   Future<void> writeStoreData(StoreData data) async {
//     await _writeSecurely('store', jsonEncode(data.toJson()));
//   }

//   Future<StoreData?> readStoreData() async {
//     final String? userData = await _secureStorage.read(key: 'store');

//     if (userData != null) {
//       final Map<String, dynamic> userMap = jsonDecode(userData);
//       return StoreData.fromJson(userMap);
//     }

//     return null;
//   }

//   Future<VerifyResponse?> readUserData() async {
//     final String? userData = await _secureStorage.read(key: 'user');

//     if (userData != null) {
//       final Map<String, dynamic> userMap = jsonDecode(userData);
//       return VerifyResponse.fromJson(userMap);
//     }

//     return null;
//   }

//   Future<void> writeAccessTokens(String token) async {
//     await _writeSecurely('token', token);
//   }

//   Future<String?> get readAccessToken async {
//     return await _secureStorage.read(key: 'token');
//   }

//   Future<void> writeRefreshTokens(String tokens) async {
//     await _writeSecurely('refresh_token', tokens);
//   }

//   Future<String?> get readRefreshTokens async {
//     return await _secureStorage.read(key: 'refresh_token');
//   }

//   Future<bool> get isSignedIn async {
//     final String? data = await _secureStorage.read(key: 'token');

//     if (data != null) {
//       return true;
//     }

//     return false;
//   }

//   Future<void> get deleteTokens async {
//     await _secureStorage.deleteAll();
//   }

//   Future<void> _writeSecurely(String key, String value) async {
//     try {
//       await _secureStorage.write(key: key, value: value);
//     } catch (e) {
//       // if (e is PlatformException && e.code == '-25299') {
//       await _secureStorage.delete(key: key);
//       await _secureStorage.write(key: key, value: value);
//       // } else {
//       //   rethrow;
//       // }
//     }
//   }

//   Future<void> writeOfferToDate(DateTime offerToDate) async {
//     await _writeSecurely('offer_to_date', offerToDate.toIso8601String());
//   }

//   Future<DateTime?> readOfferToDate() async {
//     final String? dateString = await _secureStorage.read(key: 'offer_to_date');
//     if (dateString != null) {
//       return DateTime.tryParse(dateString);
//     }
//     return null;
//   }

//   Future<void> writeAddress(AddressListResponse user) async {
//     await _writeSecurely('address', jsonEncode(user.toJson()));
//   }

//   Future<AddressListResponse?> readAddress() async {
//     final String? userData = await _secureStorage.read(key: 'address');

//     if (userData != null) {
//       final Map<String, dynamic> userMap = jsonDecode(userData);
//       return AddressListResponse.fromJson(userMap);
//     }
//     return null;
//   }

//   Future<void> deleteAddress() async {
//   await _secureStorage.delete(key: 'address');
// }

class AuthUtils {
  AuthUtils._();
  static AuthUtils? _instance;
  static final AuthUtils instance = (_instance ??= AuthUtils._());

  // Future<void> writeUserData(VerifyResponse user) async {
  //   await _writePreference('user', jsonEncode(user.toJson()));
  // }

  // Future<void> writeStoreData(StoreData data) async {
  //   await _writePreference('store', jsonEncode(data.toJson()));
  // }

  // Future<StoreData?> readStoreData() async {
  //   final String? storeData = await _readPreference('store');
  //   if (storeData != null) {
  //     final Map<String, dynamic> storeMap = jsonDecode(storeData);
  //     return StoreData.fromJson(storeMap);
  //   }
  //   return null;
  // }

  // Future<VerifyResponse?> readUserData() async {
  //   final String? userData = await _readPreference('user');
  //   if (userData != null) {
  //     final Map<String, dynamic> userMap = jsonDecode(userData);
  //     return VerifyResponse.fromJson(userMap);
  //   }
  //   return null;
  // }

  // Future<void> writeAccessTokens(String token) async {
  //   await _writePreference('token', token);
  // }

  // Future<String?> get readAccessToken async {
  //   return await _readPreference('token');
  // }

  // Future<void> writeRefreshTokens(String token) async {
  //   await _writePreference('refresh_token', token);
  // }

  // Future<String?> get readRefreshTokens async {
  //   return await _readPreference('refresh_token');
  // }

  // Future<bool> get isSignedIn async {
  //   final String? token = await _readPreference('token');
  //   return token != null;
  // }

  // Future<void> deleteAll() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.clear();
  // }

  // Future<void> _writePreference(String key, String value) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.setString(key, value);
  // }

  // Future<String?> _readPreference(String key) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   return prefs.getString(key);
  // }

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
