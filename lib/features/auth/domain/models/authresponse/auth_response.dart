import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@freezed
class AuthResponseDetails with _$AuthResponseDetails {
    const factory AuthResponseDetails({
        @JsonKey(name: "user_name")
        String? userName,
        @JsonKey(name: "user_email")
        String? userEmail,
        @JsonKey(name: "user_phone")
        int? userPhone,
        @JsonKey(name: "company_users_id")
        int? companyUsersId,
        @JsonKey(name: "user_role_id")
        int? userRoleId,
        @JsonKey(name: "role_name")
        String? roleName,
        @JsonKey(name: "privilages")
        List<Privilage>? privilages,
        @JsonKey(name: "comp_name")
        String? compName,
        @JsonKey(name: "currency_code")
        String? currencyCode,
        @JsonKey(name: "decimal_digits")
        int? decimalDigits,
        @JsonKey(name: "is_settings_completed")
        int? isSettingsCompleted,
        @JsonKey(name: "token")
        String? token,
    }) = _AuthResponseDetails;

    factory AuthResponseDetails.fromJson(Map<String, dynamic> json) => _$AuthResponseDetailsFromJson(json);
}

@freezed
class Privilage with _$Privilage {
    const factory Privilage({
        @JsonKey(name: "privilege_id")
        int? privilegeId,
        @JsonKey(name: "privilege_name")
        String? privilegeName,
        @JsonKey(name: "routerLink")
        String? routerLink,
    }) = _Privilage;

    factory Privilage.fromJson(Map<String, dynamic> json) => _$PrivilageFromJson(json);
}
