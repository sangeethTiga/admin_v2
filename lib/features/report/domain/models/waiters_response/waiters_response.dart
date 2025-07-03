// To parse this JSON data, do
//
//     final waitersResponse = waitersResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'waiters_response.freezed.dart';
part 'waiters_response.g.dart';

List<WaitersResponse> waitersResponseFromJson(String str) => List<WaitersResponse>.from(json.decode(str).map((x) => WaitersResponse.fromJson(x)));

String waitersResponseToJson(List<WaitersResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class WaitersResponse with _$WaitersResponse {
    const factory WaitersResponse({
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
    }) = _WaitersResponse;

    factory WaitersResponse.fromJson(Map<String, dynamic> json) => _$WaitersResponseFromJson(json);
}
