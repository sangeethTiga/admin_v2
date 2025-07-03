// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_agent_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryAgentResponseImpl _$$DeliveryAgentResponseImplFromJson(
  Map<String, dynamic> json,
) => _$DeliveryAgentResponseImpl(
  deliveryAgentId: (json['delivery_agent_id'] as num?)?.toInt(),
  rcId: (json['rc_id'] as num?)?.toInt(),
  userName: json['user_name'] as String?,
  agentAge: (json['agent_age'] as num?)?.toInt(),
  identityProofImg: json['identity_proof_img'] as List<dynamic>?,
  rcImg: json['rc_img'] as List<dynamic>?,
  profileImg: json['profile_img'] as String?,
  profileId: (json['profile_id'] as num?)?.toInt(),
  licenceImg: json['licence_img'] as List<dynamic>?,
  areas: (json['areas'] as List<dynamic>?)
      ?.map((e) => Area.fromJson(e as Map<String, dynamic>))
      .toList(),
  accessArray: (json['accessArray'] as List<dynamic>?)
      ?.map((e) => AccessArray.fromJson(e as Map<String, dynamic>))
      .toList(),
  userPhone: (json['user_phone'] as num?)?.toInt(),
  vehicleTypeId: (json['vehicle_type_id'] as num?)?.toInt(),
  deliveryPartnerId: (json['delivery_partner_id'] as num?)?.toInt(),
  deliveryPartnerName: json['delivery_partner_name'] as String?,
  companyUsersId: (json['company_users_id'] as num?)?.toInt(),
  licenceId: (json['licence_id'] as num?)?.toInt(),
  identityProofId: (json['identity_proof_id'] as num?)?.toInt(),
  vehicleTypeName: json['vehicle_type_name'] as String?,
  userEmail: json['user_email'] as String?,
  userPwd: json['user_pwd'] as String?,
  bankHolder: json['bank_holder'],
  acctNumber: json['acct_number'],
  ifscCode: json['ifsc_code'],
  visaExpires: json['visa_expires'],
  licenceExpires: json['licence_expires'],
  bank: json['bank'],
  isOnline: (json['is_online'] as num?)?.toInt(),
  rowcount: (json['rowcount'] as num?)?.toInt(),
  stores: (json['stores'] as List<dynamic>?)
      ?.map((e) => Store.fromJson(e as Map<String, dynamic>))
      .toList(),
  deId: json['de_id'] as String?,
  isVerified: (json['is_verified'] as num?)?.toInt(),
  pin: (json['pin'] as num?)?.toInt(),
);

Map<String, dynamic> _$$DeliveryAgentResponseImplToJson(
  _$DeliveryAgentResponseImpl instance,
) => <String, dynamic>{
  'delivery_agent_id': instance.deliveryAgentId,
  'rc_id': instance.rcId,
  'user_name': instance.userName,
  'agent_age': instance.agentAge,
  'identity_proof_img': instance.identityProofImg,
  'rc_img': instance.rcImg,
  'profile_img': instance.profileImg,
  'profile_id': instance.profileId,
  'licence_img': instance.licenceImg,
  'areas': instance.areas,
  'accessArray': instance.accessArray,
  'user_phone': instance.userPhone,
  'vehicle_type_id': instance.vehicleTypeId,
  'delivery_partner_id': instance.deliveryPartnerId,
  'delivery_partner_name': instance.deliveryPartnerName,
  'company_users_id': instance.companyUsersId,
  'licence_id': instance.licenceId,
  'identity_proof_id': instance.identityProofId,
  'vehicle_type_name': instance.vehicleTypeName,
  'user_email': instance.userEmail,
  'user_pwd': instance.userPwd,
  'bank_holder': instance.bankHolder,
  'acct_number': instance.acctNumber,
  'ifsc_code': instance.ifscCode,
  'visa_expires': instance.visaExpires,
  'licence_expires': instance.licenceExpires,
  'bank': instance.bank,
  'is_online': instance.isOnline,
  'rowcount': instance.rowcount,
  'stores': instance.stores,
  'de_id': instance.deId,
  'is_verified': instance.isVerified,
  'pin': instance.pin,
};

_$AccessArrayImpl _$$AccessArrayImplFromJson(Map<String, dynamic> json) =>
    _$AccessArrayImpl(
      userAccessId: (json['user_access_id'] as num?)?.toInt(),
      companyUsersId: (json['company_users_id'] as num?)?.toInt(),
      appTypeId: (json['app_type_id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      isSynced: (json['is_synced'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AccessArrayImplToJson(_$AccessArrayImpl instance) =>
    <String, dynamic>{
      'user_access_id': instance.userAccessId,
      'company_users_id': instance.companyUsersId,
      'app_type_id': instance.appTypeId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'is_synced': instance.isSynced,
    };

_$AreaImpl _$$AreaImplFromJson(Map<String, dynamic> json) => _$AreaImpl(
  deliveryAgentAreaId: (json['delivery_agent_area_id'] as num?)?.toInt(),
  deliveryAgentId: (json['delivery_agent_id'] as num?)?.toInt(),
  companyUsersId: (json['company_users_id'] as num?)?.toInt(),
  areaId: (json['area_id'] as num?)?.toInt(),
  areaName: json['area_name'] as String?,
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$$AreaImplToJson(_$AreaImpl instance) =>
    <String, dynamic>{
      'delivery_agent_area_id': instance.deliveryAgentAreaId,
      'delivery_agent_id': instance.deliveryAgentId,
      'company_users_id': instance.companyUsersId,
      'area_id': instance.areaId,
      'area_name': instance.areaName,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$StoreImpl _$$StoreImplFromJson(Map<String, dynamic> json) => _$StoreImpl(
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
  storeName: json['store_name'] as String?,
);

Map<String, dynamic> _$$StoreImplToJson(_$StoreImpl instance) =>
    <String, dynamic>{
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
      'store_name': instance.storeName,
    };
