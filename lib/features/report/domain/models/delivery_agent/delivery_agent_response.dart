import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_agent_response.freezed.dart';
part 'delivery_agent_response.g.dart';

@freezed
class DeliveryAgentResponse with _$DeliveryAgentResponse {
  const factory DeliveryAgentResponse({
    @JsonKey(name: "delivery_agent_id") int? deliveryAgentId,
    @JsonKey(name: "rc_id") int? rcId,
    @JsonKey(name: "user_name") String? userName,
    @JsonKey(name: "agent_age") int? agentAge,
    @JsonKey(name: "identity_proof_img") List<dynamic>? identityProofImg,
    @JsonKey(name: "rc_img") List<dynamic>? rcImg,
    @JsonKey(name: "profile_img") String? profileImg,
    @JsonKey(name: "profile_id") int? profileId,
    @JsonKey(name: "licence_img") List<dynamic>? licenceImg,
    @JsonKey(name: "areas") List<Area>? areas,
    @JsonKey(name: "accessArray") List<AccessArray>? accessArray,
    @JsonKey(name: "user_phone") int? userPhone,
    @JsonKey(name: "vehicle_type_id") int? vehicleTypeId,
    @JsonKey(name: "delivery_partner_id") int? deliveryPartnerId,
    @JsonKey(name: "delivery_partner_name") String? deliveryPartnerName,
    @JsonKey(name: "company_users_id") int? companyUsersId,
    @JsonKey(name: "licence_id") int? licenceId,
    @JsonKey(name: "identity_proof_id") int? identityProofId,
    @JsonKey(name: "vehicle_type_name") String? vehicleTypeName,
    @JsonKey(name: "user_email") String? userEmail,
    @JsonKey(name: "user_pwd") String? userPwd,
    @JsonKey(name: "bank_holder") dynamic bankHolder,
    @JsonKey(name: "acct_number") dynamic acctNumber,
    @JsonKey(name: "ifsc_code") dynamic ifscCode,
    @JsonKey(name: "visa_expires") dynamic visaExpires,
    @JsonKey(name: "licence_expires") dynamic licenceExpires,
    @JsonKey(name: "bank") dynamic bank,
    @JsonKey(name: "is_online") int? isOnline,
    @JsonKey(name: "rowcount") int? rowcount,
    @JsonKey(name: "stores") List<Store>? stores,
    @JsonKey(name: "de_id") String? deId,
    @JsonKey(name: "is_verified") int? isVerified,
    @JsonKey(name: "pin") int? pin,
  }) = _DeliveryAgentResponse;

  factory DeliveryAgentResponse.fromJson(Map<String, dynamic> json) =>
      _$DeliveryAgentResponseFromJson(json);
}

@freezed
class AccessArray with _$AccessArray {
  const factory AccessArray({
    @JsonKey(name: "user_access_id") int? userAccessId,
    @JsonKey(name: "company_users_id") int? companyUsersId,
    @JsonKey(name: "app_type_id") int? appTypeId,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "is_synced") int? isSynced,
  }) = _AccessArray;

  factory AccessArray.fromJson(Map<String, dynamic> json) =>
      _$AccessArrayFromJson(json);
}


@freezed
class Area with _$Area {
  const factory Area({
    @JsonKey(name: "delivery_agent_area_id") int? deliveryAgentAreaId,
    @JsonKey(name: "delivery_agent_id") int? deliveryAgentId,
    @JsonKey(name: "company_users_id") int? companyUsersId,
    @JsonKey(name: "area_id") int? areaId,
    @JsonKey(name: "area_name") String? areaName,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _Area;

  factory Area.fromJson(Map<String, dynamic> json) =>
      _$AreaFromJson(json);
}

@freezed
class Store with _$Store {
  const factory Store({
    @JsonKey(name: "user_id") int? userId,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "company_users_id") int? companyUsersId,
    @JsonKey(name: "user_name") String? userName,
    @JsonKey(name: "user_gender") String? userGender,
    @JsonKey(name: "user_email") String? userEmail,
    @JsonKey(name: "user_role_id") int? userRoleId,
    @JsonKey(name: "user_phone") int? userPhone,
    @JsonKey(name: "user_pwd") String? userPwd,
    @JsonKey(name: "is_active") int? isActive,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "is_synced") int? isSynced,
    @JsonKey(name: "store_name") String? storeName,
  }) = _Store;

  factory Store.fromJson(Map<String, dynamic> json) =>
      _$StoreFromJson(json);
}
