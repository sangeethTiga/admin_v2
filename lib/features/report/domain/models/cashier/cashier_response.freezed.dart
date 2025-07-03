// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cashier_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CashierResponse _$CashierResponseFromJson(Map<String, dynamic> json) {
  return _CashierResponse.fromJson(json);
}

/// @nodoc
mixin _$CashierResponse {
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

  /// Serializes this CashierResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CashierResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CashierResponseCopyWith<CashierResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CashierResponseCopyWith<$Res> {
  factory $CashierResponseCopyWith(
    CashierResponse value,
    $Res Function(CashierResponse) then,
  ) = _$CashierResponseCopyWithImpl<$Res, CashierResponse>;
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
  });
}

/// @nodoc
class _$CashierResponseCopyWithImpl<$Res, $Val extends CashierResponse>
    implements $CashierResponseCopyWith<$Res> {
  _$CashierResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CashierResponse
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CashierResponseImplCopyWith<$Res>
    implements $CashierResponseCopyWith<$Res> {
  factory _$$CashierResponseImplCopyWith(
    _$CashierResponseImpl value,
    $Res Function(_$CashierResponseImpl) then,
  ) = __$$CashierResponseImplCopyWithImpl<$Res>;
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
  });
}

/// @nodoc
class __$$CashierResponseImplCopyWithImpl<$Res>
    extends _$CashierResponseCopyWithImpl<$Res, _$CashierResponseImpl>
    implements _$$CashierResponseImplCopyWith<$Res> {
  __$$CashierResponseImplCopyWithImpl(
    _$CashierResponseImpl _value,
    $Res Function(_$CashierResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CashierResponse
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
  }) {
    return _then(
      _$CashierResponseImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CashierResponseImpl implements _CashierResponse {
  const _$CashierResponseImpl({
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
  });

  factory _$CashierResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CashierResponseImplFromJson(json);

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
  String toString() {
    return 'CashierResponse(userId: $userId, storeId: $storeId, companyUsersId: $companyUsersId, userName: $userName, userGender: $userGender, userEmail: $userEmail, userRoleId: $userRoleId, userPhone: $userPhone, userPwd: $userPwd, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, isSynced: $isSynced)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CashierResponseImpl &&
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
                other.isSynced == isSynced));
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
  );

  /// Create a copy of CashierResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CashierResponseImplCopyWith<_$CashierResponseImpl> get copyWith =>
      __$$CashierResponseImplCopyWithImpl<_$CashierResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CashierResponseImplToJson(this);
  }
}

abstract class _CashierResponse implements CashierResponse {
  const factory _CashierResponse({
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
  }) = _$CashierResponseImpl;

  factory _CashierResponse.fromJson(Map<String, dynamic> json) =
      _$CashierResponseImpl.fromJson;

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

  /// Create a copy of CashierResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CashierResponseImplCopyWith<_$CashierResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
