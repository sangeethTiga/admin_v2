// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthResponseDetailsImpl _$$AuthResponseDetailsImplFromJson(
  Map<String, dynamic> json,
) => _$AuthResponseDetailsImpl(
  userName: json['user_name'] as String?,
  userEmail: json['user_email'] as String?,
  userPhone: (json['user_phone'] as num?)?.toInt(),
  companyUsersId: (json['company_users_id'] as num?)?.toInt(),
  userRoleId: (json['user_role_id'] as num?)?.toInt(),
  roleName: json['role_name'] as String?,
  privilages: (json['privilages'] as List<dynamic>?)
      ?.map((e) => Privilage.fromJson(e as Map<String, dynamic>))
      .toList(),
  compName: json['comp_name'] as String?,
  currencyCode: json['currency_code'] as String?,
  decimalDigits: (json['decimal_digits'] as num?)?.toInt(),
  isSettingsCompleted: (json['is_settings_completed'] as num?)?.toInt(),
  token: json['token'] as String?,
);

Map<String, dynamic> _$$AuthResponseDetailsImplToJson(
  _$AuthResponseDetailsImpl instance,
) => <String, dynamic>{
  'user_name': instance.userName,
  'user_email': instance.userEmail,
  'user_phone': instance.userPhone,
  'company_users_id': instance.companyUsersId,
  'user_role_id': instance.userRoleId,
  'role_name': instance.roleName,
  'privilages': instance.privilages,
  'comp_name': instance.compName,
  'currency_code': instance.currencyCode,
  'decimal_digits': instance.decimalDigits,
  'is_settings_completed': instance.isSettingsCompleted,
  'token': instance.token,
};

_$PrivilageImpl _$$PrivilageImplFromJson(Map<String, dynamic> json) =>
    _$PrivilageImpl(
      privilegeId: (json['privilege_id'] as num?)?.toInt(),
      privilegeName: json['privilege_name'] as String?,
      routerLink: json['routerLink'] as String?,
    );

Map<String, dynamic> _$$PrivilageImplToJson(_$PrivilageImpl instance) =>
    <String, dynamic>{
      'privilege_id': instance.privilegeId,
      'privilege_name': instance.privilegeName,
      'routerLink': instance.routerLink,
    };
