// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cashier_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CashierResponseImpl _$$CashierResponseImplFromJson(
  Map<String, dynamic> json,
) => _$CashierResponseImpl(
  userId: (json['user_id'] as num?)?.toInt(),
  storeId: (json['store_id'] as num?)?.toInt(),
  companyUsersId: (json['company_users_id'] as num?)?.toInt(),
  userName: json['user_name'] as String?,
  userGender: json['user_gender'] as String?,
  userEmail: json['user_email'] as String?,
  userRoleId: (json['user_role_id'] as num?)?.toInt(),
  userPhone: (json['user_phone'] as num?)?.toInt(),
  userPwd: json['user_pwd'] as String?,
  isActive: (json['is_active'] as num?)?.toInt(),
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  isSynced: (json['is_synced'] as num?)?.toInt(),
);

Map<String, dynamic> _$$CashierResponseImplToJson(
  _$CashierResponseImpl instance,
) => <String, dynamic>{
  'user_id': instance.userId,
  'store_id': instance.storeId,
  'company_users_id': instance.companyUsersId,
  'user_name': instance.userName,
  'user_gender': instance.userGender,
  'user_email': instance.userEmail,
  'user_role_id': instance.userRoleId,
  'user_phone': instance.userPhone,
  'user_pwd': instance.userPwd,
  'is_active': instance.isActive,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'is_synced': instance.isSynced,
};
