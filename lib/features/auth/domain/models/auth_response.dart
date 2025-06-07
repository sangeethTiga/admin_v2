import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@freezed
class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "error_code") int? errorCode,
    @JsonKey(name: "error_message") String? errorMessage,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "api_url") String? apiUrl,
    @JsonKey(name: "token") String? token,
    @JsonKey(name: "user") User? user,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: "user_name") String? userName,
    @JsonKey(name: "user_email") String? userEmail,
    @JsonKey(name: "user_pwd") String? userPwd,
    @JsonKey(name: "user_phone") int? userPhone,
    @JsonKey(name: "company_users_id") int? companyUsersId,
    @JsonKey(name: "user_role_id") int? userRoleId,
    @JsonKey(name: "role_name") String? roleName,
    @JsonKey(name: "privilages") List<Privilage>? privilages,
    @JsonKey(name: "comp_name") String? compName,
    @JsonKey(name: "currency_code") String? currencyCode,
    @JsonKey(name: "decimal_digits") dynamic decimalDigits,
    @JsonKey(name: "is_settings_completed") int? isSettingsCompleted,
    @JsonKey(name: "token") String? token,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Privilage with _$Privilage {
  const factory Privilage({
    @JsonKey(name: "privilege_id") int? privilegeId,
    @JsonKey(name: "privilege_name") String? privilegeName,
    @JsonKey(name: "routerLink") String? routerLink,
  }) = _Privilage;

  factory Privilage.fromJson(Map<String, dynamic> json) =>
      _$PrivilageFromJson(json);
}
