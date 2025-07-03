// To parse this JSON data, do
//
//     final cashierResponse = cashierResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'cashier_response.freezed.dart';
part 'cashier_response.g.dart';

List<CashierResponse> cashierResponseFromJson(String str) => List<CashierResponse>.from(json.decode(str).map((x) => CashierResponse.fromJson(x)));

String cashierResponseToJson(List<CashierResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class CashierResponse with _$CashierResponse {
    const factory CashierResponse({
        @JsonKey(name: "user_id")
        int? userId,
        @JsonKey(name: "store_id")
        int? storeId,
        @JsonKey(name: "company_users_id")
        int? companyUsersId,
        @JsonKey(name: "user_name")
        String? userName,
        @JsonKey(name: "user_gender")
        String? userGender,
        @JsonKey(name: "user_email")
        String? userEmail,
        @JsonKey(name: "user_role_id")
        int? userRoleId,
        @JsonKey(name: "user_phone")
        int? userPhone,
        @JsonKey(name: "user_pwd")
        String? userPwd,
        @JsonKey(name: "is_active")
        int? isActive,
        @JsonKey(name: "created_at")
        String? createdAt,
        @JsonKey(name: "updated_at")
        String? updatedAt,
        @JsonKey(name: "is_synced")
        int? isSynced,
    }) = _CashierResponse;

    factory CashierResponse.fromJson(Map<String, dynamic> json) => _$CashierResponseFromJson(json);
}
