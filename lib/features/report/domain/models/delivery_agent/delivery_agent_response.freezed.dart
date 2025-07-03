// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_agent_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DeliveryAgentResponse _$DeliveryAgentResponseFromJson(
  Map<String, dynamic> json,
) {
  return _DeliveryAgentResponse.fromJson(json);
}

/// @nodoc
mixin _$DeliveryAgentResponse {
  @JsonKey(name: "delivery_agent_id")
  int? get deliveryAgentId => throw _privateConstructorUsedError;
  @JsonKey(name: "rc_id")
  int? get rcId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_name")
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: "agent_age")
  int? get agentAge => throw _privateConstructorUsedError;
  @JsonKey(name: "identity_proof_img")
  List<dynamic>? get identityProofImg => throw _privateConstructorUsedError;
  @JsonKey(name: "rc_img")
  List<dynamic>? get rcImg => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_img")
  String? get profileImg => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_id")
  int? get profileId => throw _privateConstructorUsedError;
  @JsonKey(name: "licence_img")
  List<dynamic>? get licenceImg => throw _privateConstructorUsedError;
  @JsonKey(name: "areas")
  List<Area>? get areas => throw _privateConstructorUsedError;
  @JsonKey(name: "accessArray")
  List<AccessArray>? get accessArray => throw _privateConstructorUsedError;
  @JsonKey(name: "user_phone")
  int? get userPhone => throw _privateConstructorUsedError;
  @JsonKey(name: "vehicle_type_id")
  int? get vehicleTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_partner_id")
  int? get deliveryPartnerId => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_partner_name")
  String? get deliveryPartnerName => throw _privateConstructorUsedError;
  @JsonKey(name: "company_users_id")
  int? get companyUsersId => throw _privateConstructorUsedError;
  @JsonKey(name: "licence_id")
  int? get licenceId => throw _privateConstructorUsedError;
  @JsonKey(name: "identity_proof_id")
  int? get identityProofId => throw _privateConstructorUsedError;
  @JsonKey(name: "vehicle_type_name")
  String? get vehicleTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: "user_email")
  String? get userEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "user_pwd")
  String? get userPwd => throw _privateConstructorUsedError;
  @JsonKey(name: "bank_holder")
  dynamic get bankHolder => throw _privateConstructorUsedError;
  @JsonKey(name: "acct_number")
  dynamic get acctNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "ifsc_code")
  dynamic get ifscCode => throw _privateConstructorUsedError;
  @JsonKey(name: "visa_expires")
  dynamic get visaExpires => throw _privateConstructorUsedError;
  @JsonKey(name: "licence_expires")
  dynamic get licenceExpires => throw _privateConstructorUsedError;
  @JsonKey(name: "bank")
  dynamic get bank => throw _privateConstructorUsedError;
  @JsonKey(name: "is_online")
  int? get isOnline => throw _privateConstructorUsedError;
  @JsonKey(name: "rowcount")
  int? get rowcount => throw _privateConstructorUsedError;
  @JsonKey(name: "stores")
  List<Store>? get stores => throw _privateConstructorUsedError;
  @JsonKey(name: "de_id")
  String? get deId => throw _privateConstructorUsedError;
  @JsonKey(name: "is_verified")
  int? get isVerified => throw _privateConstructorUsedError;
  @JsonKey(name: "pin")
  int? get pin => throw _privateConstructorUsedError;

  /// Serializes this DeliveryAgentResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryAgentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryAgentResponseCopyWith<DeliveryAgentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryAgentResponseCopyWith<$Res> {
  factory $DeliveryAgentResponseCopyWith(
    DeliveryAgentResponse value,
    $Res Function(DeliveryAgentResponse) then,
  ) = _$DeliveryAgentResponseCopyWithImpl<$Res, DeliveryAgentResponse>;
  @useResult
  $Res call({
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
  });
}

/// @nodoc
class _$DeliveryAgentResponseCopyWithImpl<
  $Res,
  $Val extends DeliveryAgentResponse
>
    implements $DeliveryAgentResponseCopyWith<$Res> {
  _$DeliveryAgentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryAgentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryAgentId = freezed,
    Object? rcId = freezed,
    Object? userName = freezed,
    Object? agentAge = freezed,
    Object? identityProofImg = freezed,
    Object? rcImg = freezed,
    Object? profileImg = freezed,
    Object? profileId = freezed,
    Object? licenceImg = freezed,
    Object? areas = freezed,
    Object? accessArray = freezed,
    Object? userPhone = freezed,
    Object? vehicleTypeId = freezed,
    Object? deliveryPartnerId = freezed,
    Object? deliveryPartnerName = freezed,
    Object? companyUsersId = freezed,
    Object? licenceId = freezed,
    Object? identityProofId = freezed,
    Object? vehicleTypeName = freezed,
    Object? userEmail = freezed,
    Object? userPwd = freezed,
    Object? bankHolder = freezed,
    Object? acctNumber = freezed,
    Object? ifscCode = freezed,
    Object? visaExpires = freezed,
    Object? licenceExpires = freezed,
    Object? bank = freezed,
    Object? isOnline = freezed,
    Object? rowcount = freezed,
    Object? stores = freezed,
    Object? deId = freezed,
    Object? isVerified = freezed,
    Object? pin = freezed,
  }) {
    return _then(
      _value.copyWith(
            deliveryAgentId: freezed == deliveryAgentId
                ? _value.deliveryAgentId
                : deliveryAgentId // ignore: cast_nullable_to_non_nullable
                      as int?,
            rcId: freezed == rcId
                ? _value.rcId
                : rcId // ignore: cast_nullable_to_non_nullable
                      as int?,
            userName: freezed == userName
                ? _value.userName
                : userName // ignore: cast_nullable_to_non_nullable
                      as String?,
            agentAge: freezed == agentAge
                ? _value.agentAge
                : agentAge // ignore: cast_nullable_to_non_nullable
                      as int?,
            identityProofImg: freezed == identityProofImg
                ? _value.identityProofImg
                : identityProofImg // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            rcImg: freezed == rcImg
                ? _value.rcImg
                : rcImg // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            profileImg: freezed == profileImg
                ? _value.profileImg
                : profileImg // ignore: cast_nullable_to_non_nullable
                      as String?,
            profileId: freezed == profileId
                ? _value.profileId
                : profileId // ignore: cast_nullable_to_non_nullable
                      as int?,
            licenceImg: freezed == licenceImg
                ? _value.licenceImg
                : licenceImg // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            areas: freezed == areas
                ? _value.areas
                : areas // ignore: cast_nullable_to_non_nullable
                      as List<Area>?,
            accessArray: freezed == accessArray
                ? _value.accessArray
                : accessArray // ignore: cast_nullable_to_non_nullable
                      as List<AccessArray>?,
            userPhone: freezed == userPhone
                ? _value.userPhone
                : userPhone // ignore: cast_nullable_to_non_nullable
                      as int?,
            vehicleTypeId: freezed == vehicleTypeId
                ? _value.vehicleTypeId
                : vehicleTypeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            deliveryPartnerId: freezed == deliveryPartnerId
                ? _value.deliveryPartnerId
                : deliveryPartnerId // ignore: cast_nullable_to_non_nullable
                      as int?,
            deliveryPartnerName: freezed == deliveryPartnerName
                ? _value.deliveryPartnerName
                : deliveryPartnerName // ignore: cast_nullable_to_non_nullable
                      as String?,
            companyUsersId: freezed == companyUsersId
                ? _value.companyUsersId
                : companyUsersId // ignore: cast_nullable_to_non_nullable
                      as int?,
            licenceId: freezed == licenceId
                ? _value.licenceId
                : licenceId // ignore: cast_nullable_to_non_nullable
                      as int?,
            identityProofId: freezed == identityProofId
                ? _value.identityProofId
                : identityProofId // ignore: cast_nullable_to_non_nullable
                      as int?,
            vehicleTypeName: freezed == vehicleTypeName
                ? _value.vehicleTypeName
                : vehicleTypeName // ignore: cast_nullable_to_non_nullable
                      as String?,
            userEmail: freezed == userEmail
                ? _value.userEmail
                : userEmail // ignore: cast_nullable_to_non_nullable
                      as String?,
            userPwd: freezed == userPwd
                ? _value.userPwd
                : userPwd // ignore: cast_nullable_to_non_nullable
                      as String?,
            bankHolder: freezed == bankHolder
                ? _value.bankHolder
                : bankHolder // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            acctNumber: freezed == acctNumber
                ? _value.acctNumber
                : acctNumber // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            ifscCode: freezed == ifscCode
                ? _value.ifscCode
                : ifscCode // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            visaExpires: freezed == visaExpires
                ? _value.visaExpires
                : visaExpires // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            licenceExpires: freezed == licenceExpires
                ? _value.licenceExpires
                : licenceExpires // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            bank: freezed == bank
                ? _value.bank
                : bank // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            isOnline: freezed == isOnline
                ? _value.isOnline
                : isOnline // ignore: cast_nullable_to_non_nullable
                      as int?,
            rowcount: freezed == rowcount
                ? _value.rowcount
                : rowcount // ignore: cast_nullable_to_non_nullable
                      as int?,
            stores: freezed == stores
                ? _value.stores
                : stores // ignore: cast_nullable_to_non_nullable
                      as List<Store>?,
            deId: freezed == deId
                ? _value.deId
                : deId // ignore: cast_nullable_to_non_nullable
                      as String?,
            isVerified: freezed == isVerified
                ? _value.isVerified
                : isVerified // ignore: cast_nullable_to_non_nullable
                      as int?,
            pin: freezed == pin
                ? _value.pin
                : pin // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeliveryAgentResponseImplCopyWith<$Res>
    implements $DeliveryAgentResponseCopyWith<$Res> {
  factory _$$DeliveryAgentResponseImplCopyWith(
    _$DeliveryAgentResponseImpl value,
    $Res Function(_$DeliveryAgentResponseImpl) then,
  ) = __$$DeliveryAgentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
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
  });
}

/// @nodoc
class __$$DeliveryAgentResponseImplCopyWithImpl<$Res>
    extends
        _$DeliveryAgentResponseCopyWithImpl<$Res, _$DeliveryAgentResponseImpl>
    implements _$$DeliveryAgentResponseImplCopyWith<$Res> {
  __$$DeliveryAgentResponseImplCopyWithImpl(
    _$DeliveryAgentResponseImpl _value,
    $Res Function(_$DeliveryAgentResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeliveryAgentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryAgentId = freezed,
    Object? rcId = freezed,
    Object? userName = freezed,
    Object? agentAge = freezed,
    Object? identityProofImg = freezed,
    Object? rcImg = freezed,
    Object? profileImg = freezed,
    Object? profileId = freezed,
    Object? licenceImg = freezed,
    Object? areas = freezed,
    Object? accessArray = freezed,
    Object? userPhone = freezed,
    Object? vehicleTypeId = freezed,
    Object? deliveryPartnerId = freezed,
    Object? deliveryPartnerName = freezed,
    Object? companyUsersId = freezed,
    Object? licenceId = freezed,
    Object? identityProofId = freezed,
    Object? vehicleTypeName = freezed,
    Object? userEmail = freezed,
    Object? userPwd = freezed,
    Object? bankHolder = freezed,
    Object? acctNumber = freezed,
    Object? ifscCode = freezed,
    Object? visaExpires = freezed,
    Object? licenceExpires = freezed,
    Object? bank = freezed,
    Object? isOnline = freezed,
    Object? rowcount = freezed,
    Object? stores = freezed,
    Object? deId = freezed,
    Object? isVerified = freezed,
    Object? pin = freezed,
  }) {
    return _then(
      _$DeliveryAgentResponseImpl(
        deliveryAgentId: freezed == deliveryAgentId
            ? _value.deliveryAgentId
            : deliveryAgentId // ignore: cast_nullable_to_non_nullable
                  as int?,
        rcId: freezed == rcId
            ? _value.rcId
            : rcId // ignore: cast_nullable_to_non_nullable
                  as int?,
        userName: freezed == userName
            ? _value.userName
            : userName // ignore: cast_nullable_to_non_nullable
                  as String?,
        agentAge: freezed == agentAge
            ? _value.agentAge
            : agentAge // ignore: cast_nullable_to_non_nullable
                  as int?,
        identityProofImg: freezed == identityProofImg
            ? _value._identityProofImg
            : identityProofImg // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        rcImg: freezed == rcImg
            ? _value._rcImg
            : rcImg // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        profileImg: freezed == profileImg
            ? _value.profileImg
            : profileImg // ignore: cast_nullable_to_non_nullable
                  as String?,
        profileId: freezed == profileId
            ? _value.profileId
            : profileId // ignore: cast_nullable_to_non_nullable
                  as int?,
        licenceImg: freezed == licenceImg
            ? _value._licenceImg
            : licenceImg // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        areas: freezed == areas
            ? _value._areas
            : areas // ignore: cast_nullable_to_non_nullable
                  as List<Area>?,
        accessArray: freezed == accessArray
            ? _value._accessArray
            : accessArray // ignore: cast_nullable_to_non_nullable
                  as List<AccessArray>?,
        userPhone: freezed == userPhone
            ? _value.userPhone
            : userPhone // ignore: cast_nullable_to_non_nullable
                  as int?,
        vehicleTypeId: freezed == vehicleTypeId
            ? _value.vehicleTypeId
            : vehicleTypeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        deliveryPartnerId: freezed == deliveryPartnerId
            ? _value.deliveryPartnerId
            : deliveryPartnerId // ignore: cast_nullable_to_non_nullable
                  as int?,
        deliveryPartnerName: freezed == deliveryPartnerName
            ? _value.deliveryPartnerName
            : deliveryPartnerName // ignore: cast_nullable_to_non_nullable
                  as String?,
        companyUsersId: freezed == companyUsersId
            ? _value.companyUsersId
            : companyUsersId // ignore: cast_nullable_to_non_nullable
                  as int?,
        licenceId: freezed == licenceId
            ? _value.licenceId
            : licenceId // ignore: cast_nullable_to_non_nullable
                  as int?,
        identityProofId: freezed == identityProofId
            ? _value.identityProofId
            : identityProofId // ignore: cast_nullable_to_non_nullable
                  as int?,
        vehicleTypeName: freezed == vehicleTypeName
            ? _value.vehicleTypeName
            : vehicleTypeName // ignore: cast_nullable_to_non_nullable
                  as String?,
        userEmail: freezed == userEmail
            ? _value.userEmail
            : userEmail // ignore: cast_nullable_to_non_nullable
                  as String?,
        userPwd: freezed == userPwd
            ? _value.userPwd
            : userPwd // ignore: cast_nullable_to_non_nullable
                  as String?,
        bankHolder: freezed == bankHolder
            ? _value.bankHolder
            : bankHolder // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        acctNumber: freezed == acctNumber
            ? _value.acctNumber
            : acctNumber // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        ifscCode: freezed == ifscCode
            ? _value.ifscCode
            : ifscCode // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        visaExpires: freezed == visaExpires
            ? _value.visaExpires
            : visaExpires // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        licenceExpires: freezed == licenceExpires
            ? _value.licenceExpires
            : licenceExpires // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        bank: freezed == bank
            ? _value.bank
            : bank // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        isOnline: freezed == isOnline
            ? _value.isOnline
            : isOnline // ignore: cast_nullable_to_non_nullable
                  as int?,
        rowcount: freezed == rowcount
            ? _value.rowcount
            : rowcount // ignore: cast_nullable_to_non_nullable
                  as int?,
        stores: freezed == stores
            ? _value._stores
            : stores // ignore: cast_nullable_to_non_nullable
                  as List<Store>?,
        deId: freezed == deId
            ? _value.deId
            : deId // ignore: cast_nullable_to_non_nullable
                  as String?,
        isVerified: freezed == isVerified
            ? _value.isVerified
            : isVerified // ignore: cast_nullable_to_non_nullable
                  as int?,
        pin: freezed == pin
            ? _value.pin
            : pin // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryAgentResponseImpl implements _DeliveryAgentResponse {
  const _$DeliveryAgentResponseImpl({
    @JsonKey(name: "delivery_agent_id") this.deliveryAgentId,
    @JsonKey(name: "rc_id") this.rcId,
    @JsonKey(name: "user_name") this.userName,
    @JsonKey(name: "agent_age") this.agentAge,
    @JsonKey(name: "identity_proof_img") final List<dynamic>? identityProofImg,
    @JsonKey(name: "rc_img") final List<dynamic>? rcImg,
    @JsonKey(name: "profile_img") this.profileImg,
    @JsonKey(name: "profile_id") this.profileId,
    @JsonKey(name: "licence_img") final List<dynamic>? licenceImg,
    @JsonKey(name: "areas") final List<Area>? areas,
    @JsonKey(name: "accessArray") final List<AccessArray>? accessArray,
    @JsonKey(name: "user_phone") this.userPhone,
    @JsonKey(name: "vehicle_type_id") this.vehicleTypeId,
    @JsonKey(name: "delivery_partner_id") this.deliveryPartnerId,
    @JsonKey(name: "delivery_partner_name") this.deliveryPartnerName,
    @JsonKey(name: "company_users_id") this.companyUsersId,
    @JsonKey(name: "licence_id") this.licenceId,
    @JsonKey(name: "identity_proof_id") this.identityProofId,
    @JsonKey(name: "vehicle_type_name") this.vehicleTypeName,
    @JsonKey(name: "user_email") this.userEmail,
    @JsonKey(name: "user_pwd") this.userPwd,
    @JsonKey(name: "bank_holder") this.bankHolder,
    @JsonKey(name: "acct_number") this.acctNumber,
    @JsonKey(name: "ifsc_code") this.ifscCode,
    @JsonKey(name: "visa_expires") this.visaExpires,
    @JsonKey(name: "licence_expires") this.licenceExpires,
    @JsonKey(name: "bank") this.bank,
    @JsonKey(name: "is_online") this.isOnline,
    @JsonKey(name: "rowcount") this.rowcount,
    @JsonKey(name: "stores") final List<Store>? stores,
    @JsonKey(name: "de_id") this.deId,
    @JsonKey(name: "is_verified") this.isVerified,
    @JsonKey(name: "pin") this.pin,
  }) : _identityProofImg = identityProofImg,
       _rcImg = rcImg,
       _licenceImg = licenceImg,
       _areas = areas,
       _accessArray = accessArray,
       _stores = stores;

  factory _$DeliveryAgentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryAgentResponseImplFromJson(json);

  @override
  @JsonKey(name: "delivery_agent_id")
  final int? deliveryAgentId;
  @override
  @JsonKey(name: "rc_id")
  final int? rcId;
  @override
  @JsonKey(name: "user_name")
  final String? userName;
  @override
  @JsonKey(name: "agent_age")
  final int? agentAge;
  final List<dynamic>? _identityProofImg;
  @override
  @JsonKey(name: "identity_proof_img")
  List<dynamic>? get identityProofImg {
    final value = _identityProofImg;
    if (value == null) return null;
    if (_identityProofImg is EqualUnmodifiableListView)
      return _identityProofImg;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _rcImg;
  @override
  @JsonKey(name: "rc_img")
  List<dynamic>? get rcImg {
    final value = _rcImg;
    if (value == null) return null;
    if (_rcImg is EqualUnmodifiableListView) return _rcImg;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "profile_img")
  final String? profileImg;
  @override
  @JsonKey(name: "profile_id")
  final int? profileId;
  final List<dynamic>? _licenceImg;
  @override
  @JsonKey(name: "licence_img")
  List<dynamic>? get licenceImg {
    final value = _licenceImg;
    if (value == null) return null;
    if (_licenceImg is EqualUnmodifiableListView) return _licenceImg;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Area>? _areas;
  @override
  @JsonKey(name: "areas")
  List<Area>? get areas {
    final value = _areas;
    if (value == null) return null;
    if (_areas is EqualUnmodifiableListView) return _areas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AccessArray>? _accessArray;
  @override
  @JsonKey(name: "accessArray")
  List<AccessArray>? get accessArray {
    final value = _accessArray;
    if (value == null) return null;
    if (_accessArray is EqualUnmodifiableListView) return _accessArray;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "user_phone")
  final int? userPhone;
  @override
  @JsonKey(name: "vehicle_type_id")
  final int? vehicleTypeId;
  @override
  @JsonKey(name: "delivery_partner_id")
  final int? deliveryPartnerId;
  @override
  @JsonKey(name: "delivery_partner_name")
  final String? deliveryPartnerName;
  @override
  @JsonKey(name: "company_users_id")
  final int? companyUsersId;
  @override
  @JsonKey(name: "licence_id")
  final int? licenceId;
  @override
  @JsonKey(name: "identity_proof_id")
  final int? identityProofId;
  @override
  @JsonKey(name: "vehicle_type_name")
  final String? vehicleTypeName;
  @override
  @JsonKey(name: "user_email")
  final String? userEmail;
  @override
  @JsonKey(name: "user_pwd")
  final String? userPwd;
  @override
  @JsonKey(name: "bank_holder")
  final dynamic bankHolder;
  @override
  @JsonKey(name: "acct_number")
  final dynamic acctNumber;
  @override
  @JsonKey(name: "ifsc_code")
  final dynamic ifscCode;
  @override
  @JsonKey(name: "visa_expires")
  final dynamic visaExpires;
  @override
  @JsonKey(name: "licence_expires")
  final dynamic licenceExpires;
  @override
  @JsonKey(name: "bank")
  final dynamic bank;
  @override
  @JsonKey(name: "is_online")
  final int? isOnline;
  @override
  @JsonKey(name: "rowcount")
  final int? rowcount;
  final List<Store>? _stores;
  @override
  @JsonKey(name: "stores")
  List<Store>? get stores {
    final value = _stores;
    if (value == null) return null;
    if (_stores is EqualUnmodifiableListView) return _stores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "de_id")
  final String? deId;
  @override
  @JsonKey(name: "is_verified")
  final int? isVerified;
  @override
  @JsonKey(name: "pin")
  final int? pin;

  @override
  String toString() {
    return 'DeliveryAgentResponse(deliveryAgentId: $deliveryAgentId, rcId: $rcId, userName: $userName, agentAge: $agentAge, identityProofImg: $identityProofImg, rcImg: $rcImg, profileImg: $profileImg, profileId: $profileId, licenceImg: $licenceImg, areas: $areas, accessArray: $accessArray, userPhone: $userPhone, vehicleTypeId: $vehicleTypeId, deliveryPartnerId: $deliveryPartnerId, deliveryPartnerName: $deliveryPartnerName, companyUsersId: $companyUsersId, licenceId: $licenceId, identityProofId: $identityProofId, vehicleTypeName: $vehicleTypeName, userEmail: $userEmail, userPwd: $userPwd, bankHolder: $bankHolder, acctNumber: $acctNumber, ifscCode: $ifscCode, visaExpires: $visaExpires, licenceExpires: $licenceExpires, bank: $bank, isOnline: $isOnline, rowcount: $rowcount, stores: $stores, deId: $deId, isVerified: $isVerified, pin: $pin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryAgentResponseImpl &&
            (identical(other.deliveryAgentId, deliveryAgentId) ||
                other.deliveryAgentId == deliveryAgentId) &&
            (identical(other.rcId, rcId) || other.rcId == rcId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.agentAge, agentAge) ||
                other.agentAge == agentAge) &&
            const DeepCollectionEquality().equals(
              other._identityProofImg,
              _identityProofImg,
            ) &&
            const DeepCollectionEquality().equals(other._rcImg, _rcImg) &&
            (identical(other.profileImg, profileImg) ||
                other.profileImg == profileImg) &&
            (identical(other.profileId, profileId) ||
                other.profileId == profileId) &&
            const DeepCollectionEquality().equals(
              other._licenceImg,
              _licenceImg,
            ) &&
            const DeepCollectionEquality().equals(other._areas, _areas) &&
            const DeepCollectionEquality().equals(
              other._accessArray,
              _accessArray,
            ) &&
            (identical(other.userPhone, userPhone) ||
                other.userPhone == userPhone) &&
            (identical(other.vehicleTypeId, vehicleTypeId) ||
                other.vehicleTypeId == vehicleTypeId) &&
            (identical(other.deliveryPartnerId, deliveryPartnerId) ||
                other.deliveryPartnerId == deliveryPartnerId) &&
            (identical(other.deliveryPartnerName, deliveryPartnerName) ||
                other.deliveryPartnerName == deliveryPartnerName) &&
            (identical(other.companyUsersId, companyUsersId) ||
                other.companyUsersId == companyUsersId) &&
            (identical(other.licenceId, licenceId) ||
                other.licenceId == licenceId) &&
            (identical(other.identityProofId, identityProofId) ||
                other.identityProofId == identityProofId) &&
            (identical(other.vehicleTypeName, vehicleTypeName) ||
                other.vehicleTypeName == vehicleTypeName) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.userPwd, userPwd) || other.userPwd == userPwd) &&
            const DeepCollectionEquality().equals(
              other.bankHolder,
              bankHolder,
            ) &&
            const DeepCollectionEquality().equals(
              other.acctNumber,
              acctNumber,
            ) &&
            const DeepCollectionEquality().equals(other.ifscCode, ifscCode) &&
            const DeepCollectionEquality().equals(
              other.visaExpires,
              visaExpires,
            ) &&
            const DeepCollectionEquality().equals(
              other.licenceExpires,
              licenceExpires,
            ) &&
            const DeepCollectionEquality().equals(other.bank, bank) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.rowcount, rowcount) ||
                other.rowcount == rowcount) &&
            const DeepCollectionEquality().equals(other._stores, _stores) &&
            (identical(other.deId, deId) || other.deId == deId) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    deliveryAgentId,
    rcId,
    userName,
    agentAge,
    const DeepCollectionEquality().hash(_identityProofImg),
    const DeepCollectionEquality().hash(_rcImg),
    profileImg,
    profileId,
    const DeepCollectionEquality().hash(_licenceImg),
    const DeepCollectionEquality().hash(_areas),
    const DeepCollectionEquality().hash(_accessArray),
    userPhone,
    vehicleTypeId,
    deliveryPartnerId,
    deliveryPartnerName,
    companyUsersId,
    licenceId,
    identityProofId,
    vehicleTypeName,
    userEmail,
    userPwd,
    const DeepCollectionEquality().hash(bankHolder),
    const DeepCollectionEquality().hash(acctNumber),
    const DeepCollectionEquality().hash(ifscCode),
    const DeepCollectionEquality().hash(visaExpires),
    const DeepCollectionEquality().hash(licenceExpires),
    const DeepCollectionEquality().hash(bank),
    isOnline,
    rowcount,
    const DeepCollectionEquality().hash(_stores),
    deId,
    isVerified,
    pin,
  ]);

  /// Create a copy of DeliveryAgentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryAgentResponseImplCopyWith<_$DeliveryAgentResponseImpl>
  get copyWith =>
      __$$DeliveryAgentResponseImplCopyWithImpl<_$DeliveryAgentResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryAgentResponseImplToJson(this);
  }
}

abstract class _DeliveryAgentResponse implements DeliveryAgentResponse {
  const factory _DeliveryAgentResponse({
    @JsonKey(name: "delivery_agent_id") final int? deliveryAgentId,
    @JsonKey(name: "rc_id") final int? rcId,
    @JsonKey(name: "user_name") final String? userName,
    @JsonKey(name: "agent_age") final int? agentAge,
    @JsonKey(name: "identity_proof_img") final List<dynamic>? identityProofImg,
    @JsonKey(name: "rc_img") final List<dynamic>? rcImg,
    @JsonKey(name: "profile_img") final String? profileImg,
    @JsonKey(name: "profile_id") final int? profileId,
    @JsonKey(name: "licence_img") final List<dynamic>? licenceImg,
    @JsonKey(name: "areas") final List<Area>? areas,
    @JsonKey(name: "accessArray") final List<AccessArray>? accessArray,
    @JsonKey(name: "user_phone") final int? userPhone,
    @JsonKey(name: "vehicle_type_id") final int? vehicleTypeId,
    @JsonKey(name: "delivery_partner_id") final int? deliveryPartnerId,
    @JsonKey(name: "delivery_partner_name") final String? deliveryPartnerName,
    @JsonKey(name: "company_users_id") final int? companyUsersId,
    @JsonKey(name: "licence_id") final int? licenceId,
    @JsonKey(name: "identity_proof_id") final int? identityProofId,
    @JsonKey(name: "vehicle_type_name") final String? vehicleTypeName,
    @JsonKey(name: "user_email") final String? userEmail,
    @JsonKey(name: "user_pwd") final String? userPwd,
    @JsonKey(name: "bank_holder") final dynamic bankHolder,
    @JsonKey(name: "acct_number") final dynamic acctNumber,
    @JsonKey(name: "ifsc_code") final dynamic ifscCode,
    @JsonKey(name: "visa_expires") final dynamic visaExpires,
    @JsonKey(name: "licence_expires") final dynamic licenceExpires,
    @JsonKey(name: "bank") final dynamic bank,
    @JsonKey(name: "is_online") final int? isOnline,
    @JsonKey(name: "rowcount") final int? rowcount,
    @JsonKey(name: "stores") final List<Store>? stores,
    @JsonKey(name: "de_id") final String? deId,
    @JsonKey(name: "is_verified") final int? isVerified,
    @JsonKey(name: "pin") final int? pin,
  }) = _$DeliveryAgentResponseImpl;

  factory _DeliveryAgentResponse.fromJson(Map<String, dynamic> json) =
      _$DeliveryAgentResponseImpl.fromJson;

  @override
  @JsonKey(name: "delivery_agent_id")
  int? get deliveryAgentId;
  @override
  @JsonKey(name: "rc_id")
  int? get rcId;
  @override
  @JsonKey(name: "user_name")
  String? get userName;
  @override
  @JsonKey(name: "agent_age")
  int? get agentAge;
  @override
  @JsonKey(name: "identity_proof_img")
  List<dynamic>? get identityProofImg;
  @override
  @JsonKey(name: "rc_img")
  List<dynamic>? get rcImg;
  @override
  @JsonKey(name: "profile_img")
  String? get profileImg;
  @override
  @JsonKey(name: "profile_id")
  int? get profileId;
  @override
  @JsonKey(name: "licence_img")
  List<dynamic>? get licenceImg;
  @override
  @JsonKey(name: "areas")
  List<Area>? get areas;
  @override
  @JsonKey(name: "accessArray")
  List<AccessArray>? get accessArray;
  @override
  @JsonKey(name: "user_phone")
  int? get userPhone;
  @override
  @JsonKey(name: "vehicle_type_id")
  int? get vehicleTypeId;
  @override
  @JsonKey(name: "delivery_partner_id")
  int? get deliveryPartnerId;
  @override
  @JsonKey(name: "delivery_partner_name")
  String? get deliveryPartnerName;
  @override
  @JsonKey(name: "company_users_id")
  int? get companyUsersId;
  @override
  @JsonKey(name: "licence_id")
  int? get licenceId;
  @override
  @JsonKey(name: "identity_proof_id")
  int? get identityProofId;
  @override
  @JsonKey(name: "vehicle_type_name")
  String? get vehicleTypeName;
  @override
  @JsonKey(name: "user_email")
  String? get userEmail;
  @override
  @JsonKey(name: "user_pwd")
  String? get userPwd;
  @override
  @JsonKey(name: "bank_holder")
  dynamic get bankHolder;
  @override
  @JsonKey(name: "acct_number")
  dynamic get acctNumber;
  @override
  @JsonKey(name: "ifsc_code")
  dynamic get ifscCode;
  @override
  @JsonKey(name: "visa_expires")
  dynamic get visaExpires;
  @override
  @JsonKey(name: "licence_expires")
  dynamic get licenceExpires;
  @override
  @JsonKey(name: "bank")
  dynamic get bank;
  @override
  @JsonKey(name: "is_online")
  int? get isOnline;
  @override
  @JsonKey(name: "rowcount")
  int? get rowcount;
  @override
  @JsonKey(name: "stores")
  List<Store>? get stores;
  @override
  @JsonKey(name: "de_id")
  String? get deId;
  @override
  @JsonKey(name: "is_verified")
  int? get isVerified;
  @override
  @JsonKey(name: "pin")
  int? get pin;

  /// Create a copy of DeliveryAgentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryAgentResponseImplCopyWith<_$DeliveryAgentResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

AccessArray _$AccessArrayFromJson(Map<String, dynamic> json) {
  return _AccessArray.fromJson(json);
}

/// @nodoc
mixin _$AccessArray {
  @JsonKey(name: "user_access_id")
  int? get userAccessId => throw _privateConstructorUsedError;
  @JsonKey(name: "company_users_id")
  int? get companyUsersId => throw _privateConstructorUsedError;
  @JsonKey(name: "app_type_id")
  int? get appTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "is_synced")
  int? get isSynced => throw _privateConstructorUsedError;

  /// Serializes this AccessArray to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccessArray
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccessArrayCopyWith<AccessArray> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessArrayCopyWith<$Res> {
  factory $AccessArrayCopyWith(
    AccessArray value,
    $Res Function(AccessArray) then,
  ) = _$AccessArrayCopyWithImpl<$Res, AccessArray>;
  @useResult
  $Res call({
    @JsonKey(name: "user_access_id") int? userAccessId,
    @JsonKey(name: "company_users_id") int? companyUsersId,
    @JsonKey(name: "app_type_id") int? appTypeId,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "is_synced") int? isSynced,
  });
}

/// @nodoc
class _$AccessArrayCopyWithImpl<$Res, $Val extends AccessArray>
    implements $AccessArrayCopyWith<$Res> {
  _$AccessArrayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccessArray
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAccessId = freezed,
    Object? companyUsersId = freezed,
    Object? appTypeId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isSynced = freezed,
  }) {
    return _then(
      _value.copyWith(
            userAccessId: freezed == userAccessId
                ? _value.userAccessId
                : userAccessId // ignore: cast_nullable_to_non_nullable
                      as int?,
            companyUsersId: freezed == companyUsersId
                ? _value.companyUsersId
                : companyUsersId // ignore: cast_nullable_to_non_nullable
                      as int?,
            appTypeId: freezed == appTypeId
                ? _value.appTypeId
                : appTypeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            isSynced: freezed == isSynced
                ? _value.isSynced
                : isSynced // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AccessArrayImplCopyWith<$Res>
    implements $AccessArrayCopyWith<$Res> {
  factory _$$AccessArrayImplCopyWith(
    _$AccessArrayImpl value,
    $Res Function(_$AccessArrayImpl) then,
  ) = __$$AccessArrayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "user_access_id") int? userAccessId,
    @JsonKey(name: "company_users_id") int? companyUsersId,
    @JsonKey(name: "app_type_id") int? appTypeId,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "is_synced") int? isSynced,
  });
}

/// @nodoc
class __$$AccessArrayImplCopyWithImpl<$Res>
    extends _$AccessArrayCopyWithImpl<$Res, _$AccessArrayImpl>
    implements _$$AccessArrayImplCopyWith<$Res> {
  __$$AccessArrayImplCopyWithImpl(
    _$AccessArrayImpl _value,
    $Res Function(_$AccessArrayImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AccessArray
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAccessId = freezed,
    Object? companyUsersId = freezed,
    Object? appTypeId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isSynced = freezed,
  }) {
    return _then(
      _$AccessArrayImpl(
        userAccessId: freezed == userAccessId
            ? _value.userAccessId
            : userAccessId // ignore: cast_nullable_to_non_nullable
                  as int?,
        companyUsersId: freezed == companyUsersId
            ? _value.companyUsersId
            : companyUsersId // ignore: cast_nullable_to_non_nullable
                  as int?,
        appTypeId: freezed == appTypeId
            ? _value.appTypeId
            : appTypeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        isSynced: freezed == isSynced
            ? _value.isSynced
            : isSynced // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AccessArrayImpl implements _AccessArray {
  const _$AccessArrayImpl({
    @JsonKey(name: "user_access_id") this.userAccessId,
    @JsonKey(name: "company_users_id") this.companyUsersId,
    @JsonKey(name: "app_type_id") this.appTypeId,
    @JsonKey(name: "created_at") this.createdAt,
    @JsonKey(name: "updated_at") this.updatedAt,
    @JsonKey(name: "is_synced") this.isSynced,
  });

  factory _$AccessArrayImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccessArrayImplFromJson(json);

  @override
  @JsonKey(name: "user_access_id")
  final int? userAccessId;
  @override
  @JsonKey(name: "company_users_id")
  final int? companyUsersId;
  @override
  @JsonKey(name: "app_type_id")
  final int? appTypeId;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  @JsonKey(name: "is_synced")
  final int? isSynced;

  @override
  String toString() {
    return 'AccessArray(userAccessId: $userAccessId, companyUsersId: $companyUsersId, appTypeId: $appTypeId, createdAt: $createdAt, updatedAt: $updatedAt, isSynced: $isSynced)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccessArrayImpl &&
            (identical(other.userAccessId, userAccessId) ||
                other.userAccessId == userAccessId) &&
            (identical(other.companyUsersId, companyUsersId) ||
                other.companyUsersId == companyUsersId) &&
            (identical(other.appTypeId, appTypeId) ||
                other.appTypeId == appTypeId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isSynced, isSynced) ||
                other.isSynced == isSynced));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userAccessId,
    companyUsersId,
    appTypeId,
    createdAt,
    updatedAt,
    isSynced,
  );

  /// Create a copy of AccessArray
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccessArrayImplCopyWith<_$AccessArrayImpl> get copyWith =>
      __$$AccessArrayImplCopyWithImpl<_$AccessArrayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccessArrayImplToJson(this);
  }
}

abstract class _AccessArray implements AccessArray {
  const factory _AccessArray({
    @JsonKey(name: "user_access_id") final int? userAccessId,
    @JsonKey(name: "company_users_id") final int? companyUsersId,
    @JsonKey(name: "app_type_id") final int? appTypeId,
    @JsonKey(name: "created_at") final String? createdAt,
    @JsonKey(name: "updated_at") final String? updatedAt,
    @JsonKey(name: "is_synced") final int? isSynced,
  }) = _$AccessArrayImpl;

  factory _AccessArray.fromJson(Map<String, dynamic> json) =
      _$AccessArrayImpl.fromJson;

  @override
  @JsonKey(name: "user_access_id")
  int? get userAccessId;
  @override
  @JsonKey(name: "company_users_id")
  int? get companyUsersId;
  @override
  @JsonKey(name: "app_type_id")
  int? get appTypeId;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(name: "is_synced")
  int? get isSynced;

  /// Create a copy of AccessArray
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccessArrayImplCopyWith<_$AccessArrayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Area _$AreaFromJson(Map<String, dynamic> json) {
  return _Area.fromJson(json);
}

/// @nodoc
mixin _$Area {
  @JsonKey(name: "delivery_agent_area_id")
  int? get deliveryAgentAreaId => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_agent_id")
  int? get deliveryAgentId => throw _privateConstructorUsedError;
  @JsonKey(name: "company_users_id")
  int? get companyUsersId => throw _privateConstructorUsedError;
  @JsonKey(name: "area_id")
  int? get areaId => throw _privateConstructorUsedError;
  @JsonKey(name: "area_name")
  String? get areaName => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Area to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Area
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AreaCopyWith<Area> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaCopyWith<$Res> {
  factory $AreaCopyWith(Area value, $Res Function(Area) then) =
      _$AreaCopyWithImpl<$Res, Area>;
  @useResult
  $Res call({
    @JsonKey(name: "delivery_agent_area_id") int? deliveryAgentAreaId,
    @JsonKey(name: "delivery_agent_id") int? deliveryAgentId,
    @JsonKey(name: "company_users_id") int? companyUsersId,
    @JsonKey(name: "area_id") int? areaId,
    @JsonKey(name: "area_name") String? areaName,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  });
}

/// @nodoc
class _$AreaCopyWithImpl<$Res, $Val extends Area>
    implements $AreaCopyWith<$Res> {
  _$AreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Area
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryAgentAreaId = freezed,
    Object? deliveryAgentId = freezed,
    Object? companyUsersId = freezed,
    Object? areaId = freezed,
    Object? areaName = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            deliveryAgentAreaId: freezed == deliveryAgentAreaId
                ? _value.deliveryAgentAreaId
                : deliveryAgentAreaId // ignore: cast_nullable_to_non_nullable
                      as int?,
            deliveryAgentId: freezed == deliveryAgentId
                ? _value.deliveryAgentId
                : deliveryAgentId // ignore: cast_nullable_to_non_nullable
                      as int?,
            companyUsersId: freezed == companyUsersId
                ? _value.companyUsersId
                : companyUsersId // ignore: cast_nullable_to_non_nullable
                      as int?,
            areaId: freezed == areaId
                ? _value.areaId
                : areaId // ignore: cast_nullable_to_non_nullable
                      as int?,
            areaName: freezed == areaName
                ? _value.areaName
                : areaName // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AreaImplCopyWith<$Res> implements $AreaCopyWith<$Res> {
  factory _$$AreaImplCopyWith(
    _$AreaImpl value,
    $Res Function(_$AreaImpl) then,
  ) = __$$AreaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "delivery_agent_area_id") int? deliveryAgentAreaId,
    @JsonKey(name: "delivery_agent_id") int? deliveryAgentId,
    @JsonKey(name: "company_users_id") int? companyUsersId,
    @JsonKey(name: "area_id") int? areaId,
    @JsonKey(name: "area_name") String? areaName,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  });
}

/// @nodoc
class __$$AreaImplCopyWithImpl<$Res>
    extends _$AreaCopyWithImpl<$Res, _$AreaImpl>
    implements _$$AreaImplCopyWith<$Res> {
  __$$AreaImplCopyWithImpl(_$AreaImpl _value, $Res Function(_$AreaImpl) _then)
    : super(_value, _then);

  /// Create a copy of Area
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryAgentAreaId = freezed,
    Object? deliveryAgentId = freezed,
    Object? companyUsersId = freezed,
    Object? areaId = freezed,
    Object? areaName = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$AreaImpl(
        deliveryAgentAreaId: freezed == deliveryAgentAreaId
            ? _value.deliveryAgentAreaId
            : deliveryAgentAreaId // ignore: cast_nullable_to_non_nullable
                  as int?,
        deliveryAgentId: freezed == deliveryAgentId
            ? _value.deliveryAgentId
            : deliveryAgentId // ignore: cast_nullable_to_non_nullable
                  as int?,
        companyUsersId: freezed == companyUsersId
            ? _value.companyUsersId
            : companyUsersId // ignore: cast_nullable_to_non_nullable
                  as int?,
        areaId: freezed == areaId
            ? _value.areaId
            : areaId // ignore: cast_nullable_to_non_nullable
                  as int?,
        areaName: freezed == areaName
            ? _value.areaName
            : areaName // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AreaImpl implements _Area {
  const _$AreaImpl({
    @JsonKey(name: "delivery_agent_area_id") this.deliveryAgentAreaId,
    @JsonKey(name: "delivery_agent_id") this.deliveryAgentId,
    @JsonKey(name: "company_users_id") this.companyUsersId,
    @JsonKey(name: "area_id") this.areaId,
    @JsonKey(name: "area_name") this.areaName,
    @JsonKey(name: "created_at") this.createdAt,
    @JsonKey(name: "updated_at") this.updatedAt,
  });

  factory _$AreaImpl.fromJson(Map<String, dynamic> json) =>
      _$$AreaImplFromJson(json);

  @override
  @JsonKey(name: "delivery_agent_area_id")
  final int? deliveryAgentAreaId;
  @override
  @JsonKey(name: "delivery_agent_id")
  final int? deliveryAgentId;
  @override
  @JsonKey(name: "company_users_id")
  final int? companyUsersId;
  @override
  @JsonKey(name: "area_id")
  final int? areaId;
  @override
  @JsonKey(name: "area_name")
  final String? areaName;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @override
  String toString() {
    return 'Area(deliveryAgentAreaId: $deliveryAgentAreaId, deliveryAgentId: $deliveryAgentId, companyUsersId: $companyUsersId, areaId: $areaId, areaName: $areaName, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AreaImpl &&
            (identical(other.deliveryAgentAreaId, deliveryAgentAreaId) ||
                other.deliveryAgentAreaId == deliveryAgentAreaId) &&
            (identical(other.deliveryAgentId, deliveryAgentId) ||
                other.deliveryAgentId == deliveryAgentId) &&
            (identical(other.companyUsersId, companyUsersId) ||
                other.companyUsersId == companyUsersId) &&
            (identical(other.areaId, areaId) || other.areaId == areaId) &&
            (identical(other.areaName, areaName) ||
                other.areaName == areaName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    deliveryAgentAreaId,
    deliveryAgentId,
    companyUsersId,
    areaId,
    areaName,
    createdAt,
    updatedAt,
  );

  /// Create a copy of Area
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AreaImplCopyWith<_$AreaImpl> get copyWith =>
      __$$AreaImplCopyWithImpl<_$AreaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AreaImplToJson(this);
  }
}

abstract class _Area implements Area {
  const factory _Area({
    @JsonKey(name: "delivery_agent_area_id") final int? deliveryAgentAreaId,
    @JsonKey(name: "delivery_agent_id") final int? deliveryAgentId,
    @JsonKey(name: "company_users_id") final int? companyUsersId,
    @JsonKey(name: "area_id") final int? areaId,
    @JsonKey(name: "area_name") final String? areaName,
    @JsonKey(name: "created_at") final String? createdAt,
    @JsonKey(name: "updated_at") final String? updatedAt,
  }) = _$AreaImpl;

  factory _Area.fromJson(Map<String, dynamic> json) = _$AreaImpl.fromJson;

  @override
  @JsonKey(name: "delivery_agent_area_id")
  int? get deliveryAgentAreaId;
  @override
  @JsonKey(name: "delivery_agent_id")
  int? get deliveryAgentId;
  @override
  @JsonKey(name: "company_users_id")
  int? get companyUsersId;
  @override
  @JsonKey(name: "area_id")
  int? get areaId;
  @override
  @JsonKey(name: "area_name")
  String? get areaName;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;

  /// Create a copy of Area
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AreaImplCopyWith<_$AreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Store _$StoreFromJson(Map<String, dynamic> json) {
  return _Store.fromJson(json);
}

/// @nodoc
mixin _$Store {
  @JsonKey(name: "user_id")
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "store_id")
  int? get storeId => throw _privateConstructorUsedError;
  @JsonKey(name: "company_users_id")
  int? get companyUsersId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_name")
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: "user_gender")
  String? get userGender => throw _privateConstructorUsedError;
  @JsonKey(name: "user_email")
  String? get userEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "user_role_id")
  int? get userRoleId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_phone")
  int? get userPhone => throw _privateConstructorUsedError;
  @JsonKey(name: "user_pwd")
  String? get userPwd => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  int? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "is_synced")
  int? get isSynced => throw _privateConstructorUsedError;
  @JsonKey(name: "store_name")
  String? get storeName => throw _privateConstructorUsedError;

  /// Serializes this Store to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreCopyWith<Store> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreCopyWith<$Res> {
  factory $StoreCopyWith(Store value, $Res Function(Store) then) =
      _$StoreCopyWithImpl<$Res, Store>;
  @useResult
  $Res call({
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
  });
}

/// @nodoc
class _$StoreCopyWithImpl<$Res, $Val extends Store>
    implements $StoreCopyWith<$Res> {
  _$StoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? storeId = freezed,
    Object? companyUsersId = freezed,
    Object? userName = freezed,
    Object? userGender = freezed,
    Object? userEmail = freezed,
    Object? userRoleId = freezed,
    Object? userPhone = freezed,
    Object? userPwd = freezed,
    Object? isActive = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isSynced = freezed,
    Object? storeName = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int?,
            storeId: freezed == storeId
                ? _value.storeId
                : storeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            companyUsersId: freezed == companyUsersId
                ? _value.companyUsersId
                : companyUsersId // ignore: cast_nullable_to_non_nullable
                      as int?,
            userName: freezed == userName
                ? _value.userName
                : userName // ignore: cast_nullable_to_non_nullable
                      as String?,
            userGender: freezed == userGender
                ? _value.userGender
                : userGender // ignore: cast_nullable_to_non_nullable
                      as String?,
            userEmail: freezed == userEmail
                ? _value.userEmail
                : userEmail // ignore: cast_nullable_to_non_nullable
                      as String?,
            userRoleId: freezed == userRoleId
                ? _value.userRoleId
                : userRoleId // ignore: cast_nullable_to_non_nullable
                      as int?,
            userPhone: freezed == userPhone
                ? _value.userPhone
                : userPhone // ignore: cast_nullable_to_non_nullable
                      as int?,
            userPwd: freezed == userPwd
                ? _value.userPwd
                : userPwd // ignore: cast_nullable_to_non_nullable
                      as String?,
            isActive: freezed == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as int?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            isSynced: freezed == isSynced
                ? _value.isSynced
                : isSynced // ignore: cast_nullable_to_non_nullable
                      as int?,
            storeName: freezed == storeName
                ? _value.storeName
                : storeName // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StoreImplCopyWith<$Res> implements $StoreCopyWith<$Res> {
  factory _$$StoreImplCopyWith(
    _$StoreImpl value,
    $Res Function(_$StoreImpl) then,
  ) = __$$StoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
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
  });
}

/// @nodoc
class __$$StoreImplCopyWithImpl<$Res>
    extends _$StoreCopyWithImpl<$Res, _$StoreImpl>
    implements _$$StoreImplCopyWith<$Res> {
  __$$StoreImplCopyWithImpl(
    _$StoreImpl _value,
    $Res Function(_$StoreImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? storeId = freezed,
    Object? companyUsersId = freezed,
    Object? userName = freezed,
    Object? userGender = freezed,
    Object? userEmail = freezed,
    Object? userRoleId = freezed,
    Object? userPhone = freezed,
    Object? userPwd = freezed,
    Object? isActive = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isSynced = freezed,
    Object? storeName = freezed,
  }) {
    return _then(
      _$StoreImpl(
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int?,
        storeId: freezed == storeId
            ? _value.storeId
            : storeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        companyUsersId: freezed == companyUsersId
            ? _value.companyUsersId
            : companyUsersId // ignore: cast_nullable_to_non_nullable
                  as int?,
        userName: freezed == userName
            ? _value.userName
            : userName // ignore: cast_nullable_to_non_nullable
                  as String?,
        userGender: freezed == userGender
            ? _value.userGender
            : userGender // ignore: cast_nullable_to_non_nullable
                  as String?,
        userEmail: freezed == userEmail
            ? _value.userEmail
            : userEmail // ignore: cast_nullable_to_non_nullable
                  as String?,
        userRoleId: freezed == userRoleId
            ? _value.userRoleId
            : userRoleId // ignore: cast_nullable_to_non_nullable
                  as int?,
        userPhone: freezed == userPhone
            ? _value.userPhone
            : userPhone // ignore: cast_nullable_to_non_nullable
                  as int?,
        userPwd: freezed == userPwd
            ? _value.userPwd
            : userPwd // ignore: cast_nullable_to_non_nullable
                  as String?,
        isActive: freezed == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as int?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        isSynced: freezed == isSynced
            ? _value.isSynced
            : isSynced // ignore: cast_nullable_to_non_nullable
                  as int?,
        storeName: freezed == storeName
            ? _value.storeName
            : storeName // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreImpl implements _Store {
  const _$StoreImpl({
    @JsonKey(name: "user_id") this.userId,
    @JsonKey(name: "store_id") this.storeId,
    @JsonKey(name: "company_users_id") this.companyUsersId,
    @JsonKey(name: "user_name") this.userName,
    @JsonKey(name: "user_gender") this.userGender,
    @JsonKey(name: "user_email") this.userEmail,
    @JsonKey(name: "user_role_id") this.userRoleId,
    @JsonKey(name: "user_phone") this.userPhone,
    @JsonKey(name: "user_pwd") this.userPwd,
    @JsonKey(name: "is_active") this.isActive,
    @JsonKey(name: "created_at") this.createdAt,
    @JsonKey(name: "updated_at") this.updatedAt,
    @JsonKey(name: "is_synced") this.isSynced,
    @JsonKey(name: "store_name") this.storeName,
  });

  factory _$StoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreImplFromJson(json);

  @override
  @JsonKey(name: "user_id")
  final int? userId;
  @override
  @JsonKey(name: "store_id")
  final int? storeId;
  @override
  @JsonKey(name: "company_users_id")
  final int? companyUsersId;
  @override
  @JsonKey(name: "user_name")
  final String? userName;
  @override
  @JsonKey(name: "user_gender")
  final String? userGender;
  @override
  @JsonKey(name: "user_email")
  final String? userEmail;
  @override
  @JsonKey(name: "user_role_id")
  final int? userRoleId;
  @override
  @JsonKey(name: "user_phone")
  final int? userPhone;
  @override
  @JsonKey(name: "user_pwd")
  final String? userPwd;
  @override
  @JsonKey(name: "is_active")
  final int? isActive;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  @JsonKey(name: "is_synced")
  final int? isSynced;
  @override
  @JsonKey(name: "store_name")
  final String? storeName;

  @override
  String toString() {
    return 'Store(userId: $userId, storeId: $storeId, companyUsersId: $companyUsersId, userName: $userName, userGender: $userGender, userEmail: $userEmail, userRoleId: $userRoleId, userPhone: $userPhone, userPwd: $userPwd, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, isSynced: $isSynced, storeName: $storeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.companyUsersId, companyUsersId) ||
                other.companyUsersId == companyUsersId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userGender, userGender) ||
                other.userGender == userGender) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.userRoleId, userRoleId) ||
                other.userRoleId == userRoleId) &&
            (identical(other.userPhone, userPhone) ||
                other.userPhone == userPhone) &&
            (identical(other.userPwd, userPwd) || other.userPwd == userPwd) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isSynced, isSynced) ||
                other.isSynced == isSynced) &&
            (identical(other.storeName, storeName) ||
                other.storeName == storeName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    storeId,
    companyUsersId,
    userName,
    userGender,
    userEmail,
    userRoleId,
    userPhone,
    userPwd,
    isActive,
    createdAt,
    updatedAt,
    isSynced,
    storeName,
  );

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreImplCopyWith<_$StoreImpl> get copyWith =>
      __$$StoreImplCopyWithImpl<_$StoreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreImplToJson(this);
  }
}

abstract class _Store implements Store {
  const factory _Store({
    @JsonKey(name: "user_id") final int? userId,
    @JsonKey(name: "store_id") final int? storeId,
    @JsonKey(name: "company_users_id") final int? companyUsersId,
    @JsonKey(name: "user_name") final String? userName,
    @JsonKey(name: "user_gender") final String? userGender,
    @JsonKey(name: "user_email") final String? userEmail,
    @JsonKey(name: "user_role_id") final int? userRoleId,
    @JsonKey(name: "user_phone") final int? userPhone,
    @JsonKey(name: "user_pwd") final String? userPwd,
    @JsonKey(name: "is_active") final int? isActive,
    @JsonKey(name: "created_at") final String? createdAt,
    @JsonKey(name: "updated_at") final String? updatedAt,
    @JsonKey(name: "is_synced") final int? isSynced,
    @JsonKey(name: "store_name") final String? storeName,
  }) = _$StoreImpl;

  factory _Store.fromJson(Map<String, dynamic> json) = _$StoreImpl.fromJson;

  @override
  @JsonKey(name: "user_id")
  int? get userId;
  @override
  @JsonKey(name: "store_id")
  int? get storeId;
  @override
  @JsonKey(name: "company_users_id")
  int? get companyUsersId;
  @override
  @JsonKey(name: "user_name")
  String? get userName;
  @override
  @JsonKey(name: "user_gender")
  String? get userGender;
  @override
  @JsonKey(name: "user_email")
  String? get userEmail;
  @override
  @JsonKey(name: "user_role_id")
  int? get userRoleId;
  @override
  @JsonKey(name: "user_phone")
  int? get userPhone;
  @override
  @JsonKey(name: "user_pwd")
  String? get userPwd;
  @override
  @JsonKey(name: "is_active")
  int? get isActive;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(name: "is_synced")
  int? get isSynced;
  @override
  @JsonKey(name: "store_name")
  String? get storeName;

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreImplCopyWith<_$StoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
