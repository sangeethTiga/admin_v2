// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usershift_report_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserShiftReportResponse _$UserShiftReportResponseFromJson(
  Map<String, dynamic> json,
) {
  return _UserShiftReportResponse.fromJson(json);
}

/// @nodoc
mixin _$UserShiftReportResponse {
  @JsonKey(name: "user_shift_id")
  int? get userShiftId => throw _privateConstructorUsedError;
  @JsonKey(name: "store_shift_id")
  int? get storeShiftId => throw _privateConstructorUsedError;
  @JsonKey(name: "role_id")
  int? get roleId => throw _privateConstructorUsedError;
  @JsonKey(name: "company_users_id")
  int? get companyUsersId => throw _privateConstructorUsedError;
  @JsonKey(name: "action_id")
  int? get actionId => throw _privateConstructorUsedError;
  @JsonKey(name: "drawer_balance")
  int? get drawerBalance => throw _privateConstructorUsedError;
  @JsonKey(name: "kiosk_id")
  int? get kioskId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "day_close_id")
  int? get dayCloseId => throw _privateConstructorUsedError;
  @JsonKey(name: "is_synced")
  int? get isSynced => throw _privateConstructorUsedError;
  @JsonKey(name: "device_serial_no")
  String? get deviceSerialNo => throw _privateConstructorUsedError;
  @JsonKey(name: "store_id")
  int? get storeId => throw _privateConstructorUsedError;
  @JsonKey(name: "shift_name")
  String? get shiftName => throw _privateConstructorUsedError;
  @JsonKey(name: "user_name")
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: "role_name")
  String? get roleName => throw _privateConstructorUsedError;
  @JsonKey(name: "device_name")
  String? get deviceName => throw _privateConstructorUsedError;
  @JsonKey(name: "rowcount")
  int? get rowcount => throw _privateConstructorUsedError;
  @JsonKey(name: "opening_time")
  String? get openingTime => throw _privateConstructorUsedError;
  @JsonKey(name: "opening_balance")
  double? get openingBalance => throw _privateConstructorUsedError;
  @JsonKey(name: "closing_time")
  String? get closingTime => throw _privateConstructorUsedError;
  @JsonKey(name: "closing_balance")
  double? get closingBalance => throw _privateConstructorUsedError;
  @JsonKey(name: "drawer_balances")
  List<dynamic>? get drawerBalances => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_denominations")
  List<dynamic>? get currencyDenominations =>
      throw _privateConstructorUsedError;

  /// Serializes this UserShiftReportResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserShiftReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserShiftReportResponseCopyWith<UserShiftReportResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserShiftReportResponseCopyWith<$Res> {
  factory $UserShiftReportResponseCopyWith(
    UserShiftReportResponse value,
    $Res Function(UserShiftReportResponse) then,
  ) = _$UserShiftReportResponseCopyWithImpl<$Res, UserShiftReportResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "user_shift_id") int? userShiftId,
    @JsonKey(name: "store_shift_id") int? storeShiftId,
    @JsonKey(name: "role_id") int? roleId,
    @JsonKey(name: "company_users_id") int? companyUsersId,
    @JsonKey(name: "action_id") int? actionId,
    @JsonKey(name: "drawer_balance") int? drawerBalance,
    @JsonKey(name: "kiosk_id") int? kioskId,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "day_close_id") int? dayCloseId,
    @JsonKey(name: "is_synced") int? isSynced,
    @JsonKey(name: "device_serial_no") String? deviceSerialNo,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "shift_name") String? shiftName,
    @JsonKey(name: "user_name") String? userName,
    @JsonKey(name: "role_name") String? roleName,
    @JsonKey(name: "device_name") String? deviceName,
    @JsonKey(name: "rowcount") int? rowcount,
    @JsonKey(name: "opening_time") String? openingTime,
    @JsonKey(name: "opening_balance") double? openingBalance,
    @JsonKey(name: "closing_time") String? closingTime,
    @JsonKey(name: "closing_balance") double? closingBalance,
    @JsonKey(name: "drawer_balances") List<dynamic>? drawerBalances,
    @JsonKey(name: "currency_denominations")
    List<dynamic>? currencyDenominations,
  });
}

/// @nodoc
class _$UserShiftReportResponseCopyWithImpl<
  $Res,
  $Val extends UserShiftReportResponse
>
    implements $UserShiftReportResponseCopyWith<$Res> {
  _$UserShiftReportResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserShiftReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userShiftId = freezed,
    Object? storeShiftId = freezed,
    Object? roleId = freezed,
    Object? companyUsersId = freezed,
    Object? actionId = freezed,
    Object? drawerBalance = freezed,
    Object? kioskId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? dayCloseId = freezed,
    Object? isSynced = freezed,
    Object? deviceSerialNo = freezed,
    Object? storeId = freezed,
    Object? shiftName = freezed,
    Object? userName = freezed,
    Object? roleName = freezed,
    Object? deviceName = freezed,
    Object? rowcount = freezed,
    Object? openingTime = freezed,
    Object? openingBalance = freezed,
    Object? closingTime = freezed,
    Object? closingBalance = freezed,
    Object? drawerBalances = freezed,
    Object? currencyDenominations = freezed,
  }) {
    return _then(
      _value.copyWith(
            userShiftId: freezed == userShiftId
                ? _value.userShiftId
                : userShiftId // ignore: cast_nullable_to_non_nullable
                      as int?,
            storeShiftId: freezed == storeShiftId
                ? _value.storeShiftId
                : storeShiftId // ignore: cast_nullable_to_non_nullable
                      as int?,
            roleId: freezed == roleId
                ? _value.roleId
                : roleId // ignore: cast_nullable_to_non_nullable
                      as int?,
            companyUsersId: freezed == companyUsersId
                ? _value.companyUsersId
                : companyUsersId // ignore: cast_nullable_to_non_nullable
                      as int?,
            actionId: freezed == actionId
                ? _value.actionId
                : actionId // ignore: cast_nullable_to_non_nullable
                      as int?,
            drawerBalance: freezed == drawerBalance
                ? _value.drawerBalance
                : drawerBalance // ignore: cast_nullable_to_non_nullable
                      as int?,
            kioskId: freezed == kioskId
                ? _value.kioskId
                : kioskId // ignore: cast_nullable_to_non_nullable
                      as int?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            dayCloseId: freezed == dayCloseId
                ? _value.dayCloseId
                : dayCloseId // ignore: cast_nullable_to_non_nullable
                      as int?,
            isSynced: freezed == isSynced
                ? _value.isSynced
                : isSynced // ignore: cast_nullable_to_non_nullable
                      as int?,
            deviceSerialNo: freezed == deviceSerialNo
                ? _value.deviceSerialNo
                : deviceSerialNo // ignore: cast_nullable_to_non_nullable
                      as String?,
            storeId: freezed == storeId
                ? _value.storeId
                : storeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            shiftName: freezed == shiftName
                ? _value.shiftName
                : shiftName // ignore: cast_nullable_to_non_nullable
                      as String?,
            userName: freezed == userName
                ? _value.userName
                : userName // ignore: cast_nullable_to_non_nullable
                      as String?,
            roleName: freezed == roleName
                ? _value.roleName
                : roleName // ignore: cast_nullable_to_non_nullable
                      as String?,
            deviceName: freezed == deviceName
                ? _value.deviceName
                : deviceName // ignore: cast_nullable_to_non_nullable
                      as String?,
            rowcount: freezed == rowcount
                ? _value.rowcount
                : rowcount // ignore: cast_nullable_to_non_nullable
                      as int?,
            openingTime: freezed == openingTime
                ? _value.openingTime
                : openingTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            openingBalance: freezed == openingBalance
                ? _value.openingBalance
                : openingBalance // ignore: cast_nullable_to_non_nullable
                      as double?,
            closingTime: freezed == closingTime
                ? _value.closingTime
                : closingTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            closingBalance: freezed == closingBalance
                ? _value.closingBalance
                : closingBalance // ignore: cast_nullable_to_non_nullable
                      as double?,
            drawerBalances: freezed == drawerBalances
                ? _value.drawerBalances
                : drawerBalances // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            currencyDenominations: freezed == currencyDenominations
                ? _value.currencyDenominations
                : currencyDenominations // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserShiftReportResponseImplCopyWith<$Res>
    implements $UserShiftReportResponseCopyWith<$Res> {
  factory _$$UserShiftReportResponseImplCopyWith(
    _$UserShiftReportResponseImpl value,
    $Res Function(_$UserShiftReportResponseImpl) then,
  ) = __$$UserShiftReportResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "user_shift_id") int? userShiftId,
    @JsonKey(name: "store_shift_id") int? storeShiftId,
    @JsonKey(name: "role_id") int? roleId,
    @JsonKey(name: "company_users_id") int? companyUsersId,
    @JsonKey(name: "action_id") int? actionId,
    @JsonKey(name: "drawer_balance") int? drawerBalance,
    @JsonKey(name: "kiosk_id") int? kioskId,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "day_close_id") int? dayCloseId,
    @JsonKey(name: "is_synced") int? isSynced,
    @JsonKey(name: "device_serial_no") String? deviceSerialNo,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "shift_name") String? shiftName,
    @JsonKey(name: "user_name") String? userName,
    @JsonKey(name: "role_name") String? roleName,
    @JsonKey(name: "device_name") String? deviceName,
    @JsonKey(name: "rowcount") int? rowcount,
    @JsonKey(name: "opening_time") String? openingTime,
    @JsonKey(name: "opening_balance") double? openingBalance,
    @JsonKey(name: "closing_time") String? closingTime,
    @JsonKey(name: "closing_balance") double? closingBalance,
    @JsonKey(name: "drawer_balances") List<dynamic>? drawerBalances,
    @JsonKey(name: "currency_denominations")
    List<dynamic>? currencyDenominations,
  });
}

/// @nodoc
class __$$UserShiftReportResponseImplCopyWithImpl<$Res>
    extends
        _$UserShiftReportResponseCopyWithImpl<
          $Res,
          _$UserShiftReportResponseImpl
        >
    implements _$$UserShiftReportResponseImplCopyWith<$Res> {
  __$$UserShiftReportResponseImplCopyWithImpl(
    _$UserShiftReportResponseImpl _value,
    $Res Function(_$UserShiftReportResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserShiftReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userShiftId = freezed,
    Object? storeShiftId = freezed,
    Object? roleId = freezed,
    Object? companyUsersId = freezed,
    Object? actionId = freezed,
    Object? drawerBalance = freezed,
    Object? kioskId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? dayCloseId = freezed,
    Object? isSynced = freezed,
    Object? deviceSerialNo = freezed,
    Object? storeId = freezed,
    Object? shiftName = freezed,
    Object? userName = freezed,
    Object? roleName = freezed,
    Object? deviceName = freezed,
    Object? rowcount = freezed,
    Object? openingTime = freezed,
    Object? openingBalance = freezed,
    Object? closingTime = freezed,
    Object? closingBalance = freezed,
    Object? drawerBalances = freezed,
    Object? currencyDenominations = freezed,
  }) {
    return _then(
      _$UserShiftReportResponseImpl(
        userShiftId: freezed == userShiftId
            ? _value.userShiftId
            : userShiftId // ignore: cast_nullable_to_non_nullable
                  as int?,
        storeShiftId: freezed == storeShiftId
            ? _value.storeShiftId
            : storeShiftId // ignore: cast_nullable_to_non_nullable
                  as int?,
        roleId: freezed == roleId
            ? _value.roleId
            : roleId // ignore: cast_nullable_to_non_nullable
                  as int?,
        companyUsersId: freezed == companyUsersId
            ? _value.companyUsersId
            : companyUsersId // ignore: cast_nullable_to_non_nullable
                  as int?,
        actionId: freezed == actionId
            ? _value.actionId
            : actionId // ignore: cast_nullable_to_non_nullable
                  as int?,
        drawerBalance: freezed == drawerBalance
            ? _value.drawerBalance
            : drawerBalance // ignore: cast_nullable_to_non_nullable
                  as int?,
        kioskId: freezed == kioskId
            ? _value.kioskId
            : kioskId // ignore: cast_nullable_to_non_nullable
                  as int?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        dayCloseId: freezed == dayCloseId
            ? _value.dayCloseId
            : dayCloseId // ignore: cast_nullable_to_non_nullable
                  as int?,
        isSynced: freezed == isSynced
            ? _value.isSynced
            : isSynced // ignore: cast_nullable_to_non_nullable
                  as int?,
        deviceSerialNo: freezed == deviceSerialNo
            ? _value.deviceSerialNo
            : deviceSerialNo // ignore: cast_nullable_to_non_nullable
                  as String?,
        storeId: freezed == storeId
            ? _value.storeId
            : storeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        shiftName: freezed == shiftName
            ? _value.shiftName
            : shiftName // ignore: cast_nullable_to_non_nullable
                  as String?,
        userName: freezed == userName
            ? _value.userName
            : userName // ignore: cast_nullable_to_non_nullable
                  as String?,
        roleName: freezed == roleName
            ? _value.roleName
            : roleName // ignore: cast_nullable_to_non_nullable
                  as String?,
        deviceName: freezed == deviceName
            ? _value.deviceName
            : deviceName // ignore: cast_nullable_to_non_nullable
                  as String?,
        rowcount: freezed == rowcount
            ? _value.rowcount
            : rowcount // ignore: cast_nullable_to_non_nullable
                  as int?,
        openingTime: freezed == openingTime
            ? _value.openingTime
            : openingTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        openingBalance: freezed == openingBalance
            ? _value.openingBalance
            : openingBalance // ignore: cast_nullable_to_non_nullable
                  as double?,
        closingTime: freezed == closingTime
            ? _value.closingTime
            : closingTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        closingBalance: freezed == closingBalance
            ? _value.closingBalance
            : closingBalance // ignore: cast_nullable_to_non_nullable
                  as double?,
        drawerBalances: freezed == drawerBalances
            ? _value._drawerBalances
            : drawerBalances // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        currencyDenominations: freezed == currencyDenominations
            ? _value._currencyDenominations
            : currencyDenominations // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserShiftReportResponseImpl implements _UserShiftReportResponse {
  const _$UserShiftReportResponseImpl({
    @JsonKey(name: "user_shift_id") this.userShiftId,
    @JsonKey(name: "store_shift_id") this.storeShiftId,
    @JsonKey(name: "role_id") this.roleId,
    @JsonKey(name: "company_users_id") this.companyUsersId,
    @JsonKey(name: "action_id") this.actionId,
    @JsonKey(name: "drawer_balance") this.drawerBalance,
    @JsonKey(name: "kiosk_id") this.kioskId,
    @JsonKey(name: "created_at") this.createdAt,
    @JsonKey(name: "updated_at") this.updatedAt,
    @JsonKey(name: "day_close_id") this.dayCloseId,
    @JsonKey(name: "is_synced") this.isSynced,
    @JsonKey(name: "device_serial_no") this.deviceSerialNo,
    @JsonKey(name: "store_id") this.storeId,
    @JsonKey(name: "shift_name") this.shiftName,
    @JsonKey(name: "user_name") this.userName,
    @JsonKey(name: "role_name") this.roleName,
    @JsonKey(name: "device_name") this.deviceName,
    @JsonKey(name: "rowcount") this.rowcount,
    @JsonKey(name: "opening_time") this.openingTime,
    @JsonKey(name: "opening_balance") this.openingBalance,
    @JsonKey(name: "closing_time") this.closingTime,
    @JsonKey(name: "closing_balance") this.closingBalance,
    @JsonKey(name: "drawer_balances") final List<dynamic>? drawerBalances,
    @JsonKey(name: "currency_denominations")
    final List<dynamic>? currencyDenominations,
  }) : _drawerBalances = drawerBalances,
       _currencyDenominations = currencyDenominations;

  factory _$UserShiftReportResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserShiftReportResponseImplFromJson(json);

  @override
  @JsonKey(name: "user_shift_id")
  final int? userShiftId;
  @override
  @JsonKey(name: "store_shift_id")
  final int? storeShiftId;
  @override
  @JsonKey(name: "role_id")
  final int? roleId;
  @override
  @JsonKey(name: "company_users_id")
  final int? companyUsersId;
  @override
  @JsonKey(name: "action_id")
  final int? actionId;
  @override
  @JsonKey(name: "drawer_balance")
  final int? drawerBalance;
  @override
  @JsonKey(name: "kiosk_id")
  final int? kioskId;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "day_close_id")
  final int? dayCloseId;
  @override
  @JsonKey(name: "is_synced")
  final int? isSynced;
  @override
  @JsonKey(name: "device_serial_no")
  final String? deviceSerialNo;
  @override
  @JsonKey(name: "store_id")
  final int? storeId;
  @override
  @JsonKey(name: "shift_name")
  final String? shiftName;
  @override
  @JsonKey(name: "user_name")
  final String? userName;
  @override
  @JsonKey(name: "role_name")
  final String? roleName;
  @override
  @JsonKey(name: "device_name")
  final String? deviceName;
  @override
  @JsonKey(name: "rowcount")
  final int? rowcount;
  @override
  @JsonKey(name: "opening_time")
  final String? openingTime;
  @override
  @JsonKey(name: "opening_balance")
  final double? openingBalance;
  @override
  @JsonKey(name: "closing_time")
  final String? closingTime;
  @override
  @JsonKey(name: "closing_balance")
  final double? closingBalance;
  final List<dynamic>? _drawerBalances;
  @override
  @JsonKey(name: "drawer_balances")
  List<dynamic>? get drawerBalances {
    final value = _drawerBalances;
    if (value == null) return null;
    if (_drawerBalances is EqualUnmodifiableListView) return _drawerBalances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _currencyDenominations;
  @override
  @JsonKey(name: "currency_denominations")
  List<dynamic>? get currencyDenominations {
    final value = _currencyDenominations;
    if (value == null) return null;
    if (_currencyDenominations is EqualUnmodifiableListView)
      return _currencyDenominations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserShiftReportResponse(userShiftId: $userShiftId, storeShiftId: $storeShiftId, roleId: $roleId, companyUsersId: $companyUsersId, actionId: $actionId, drawerBalance: $drawerBalance, kioskId: $kioskId, createdAt: $createdAt, updatedAt: $updatedAt, dayCloseId: $dayCloseId, isSynced: $isSynced, deviceSerialNo: $deviceSerialNo, storeId: $storeId, shiftName: $shiftName, userName: $userName, roleName: $roleName, deviceName: $deviceName, rowcount: $rowcount, openingTime: $openingTime, openingBalance: $openingBalance, closingTime: $closingTime, closingBalance: $closingBalance, drawerBalances: $drawerBalances, currencyDenominations: $currencyDenominations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserShiftReportResponseImpl &&
            (identical(other.userShiftId, userShiftId) ||
                other.userShiftId == userShiftId) &&
            (identical(other.storeShiftId, storeShiftId) ||
                other.storeShiftId == storeShiftId) &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.companyUsersId, companyUsersId) ||
                other.companyUsersId == companyUsersId) &&
            (identical(other.actionId, actionId) ||
                other.actionId == actionId) &&
            (identical(other.drawerBalance, drawerBalance) ||
                other.drawerBalance == drawerBalance) &&
            (identical(other.kioskId, kioskId) || other.kioskId == kioskId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.dayCloseId, dayCloseId) ||
                other.dayCloseId == dayCloseId) &&
            (identical(other.isSynced, isSynced) ||
                other.isSynced == isSynced) &&
            (identical(other.deviceSerialNo, deviceSerialNo) ||
                other.deviceSerialNo == deviceSerialNo) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.shiftName, shiftName) ||
                other.shiftName == shiftName) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.roleName, roleName) ||
                other.roleName == roleName) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.rowcount, rowcount) ||
                other.rowcount == rowcount) &&
            (identical(other.openingTime, openingTime) ||
                other.openingTime == openingTime) &&
            (identical(other.openingBalance, openingBalance) ||
                other.openingBalance == openingBalance) &&
            (identical(other.closingTime, closingTime) ||
                other.closingTime == closingTime) &&
            (identical(other.closingBalance, closingBalance) ||
                other.closingBalance == closingBalance) &&
            const DeepCollectionEquality().equals(
              other._drawerBalances,
              _drawerBalances,
            ) &&
            const DeepCollectionEquality().equals(
              other._currencyDenominations,
              _currencyDenominations,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    userShiftId,
    storeShiftId,
    roleId,
    companyUsersId,
    actionId,
    drawerBalance,
    kioskId,
    createdAt,
    updatedAt,
    dayCloseId,
    isSynced,
    deviceSerialNo,
    storeId,
    shiftName,
    userName,
    roleName,
    deviceName,
    rowcount,
    openingTime,
    openingBalance,
    closingTime,
    closingBalance,
    const DeepCollectionEquality().hash(_drawerBalances),
    const DeepCollectionEquality().hash(_currencyDenominations),
  ]);

  /// Create a copy of UserShiftReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserShiftReportResponseImplCopyWith<_$UserShiftReportResponseImpl>
  get copyWith =>
      __$$UserShiftReportResponseImplCopyWithImpl<
        _$UserShiftReportResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserShiftReportResponseImplToJson(this);
  }
}

abstract class _UserShiftReportResponse implements UserShiftReportResponse {
  const factory _UserShiftReportResponse({
    @JsonKey(name: "user_shift_id") final int? userShiftId,
    @JsonKey(name: "store_shift_id") final int? storeShiftId,
    @JsonKey(name: "role_id") final int? roleId,
    @JsonKey(name: "company_users_id") final int? companyUsersId,
    @JsonKey(name: "action_id") final int? actionId,
    @JsonKey(name: "drawer_balance") final int? drawerBalance,
    @JsonKey(name: "kiosk_id") final int? kioskId,
    @JsonKey(name: "created_at") final String? createdAt,
    @JsonKey(name: "updated_at") final DateTime? updatedAt,
    @JsonKey(name: "day_close_id") final int? dayCloseId,
    @JsonKey(name: "is_synced") final int? isSynced,
    @JsonKey(name: "device_serial_no") final String? deviceSerialNo,
    @JsonKey(name: "store_id") final int? storeId,
    @JsonKey(name: "shift_name") final String? shiftName,
    @JsonKey(name: "user_name") final String? userName,
    @JsonKey(name: "role_name") final String? roleName,
    @JsonKey(name: "device_name") final String? deviceName,
    @JsonKey(name: "rowcount") final int? rowcount,
    @JsonKey(name: "opening_time") final String? openingTime,
    @JsonKey(name: "opening_balance") final double? openingBalance,
    @JsonKey(name: "closing_time") final String? closingTime,
    @JsonKey(name: "closing_balance") final double? closingBalance,
    @JsonKey(name: "drawer_balances") final List<dynamic>? drawerBalances,
    @JsonKey(name: "currency_denominations")
    final List<dynamic>? currencyDenominations,
  }) = _$UserShiftReportResponseImpl;

  factory _UserShiftReportResponse.fromJson(Map<String, dynamic> json) =
      _$UserShiftReportResponseImpl.fromJson;

  @override
  @JsonKey(name: "user_shift_id")
  int? get userShiftId;
  @override
  @JsonKey(name: "store_shift_id")
  int? get storeShiftId;
  @override
  @JsonKey(name: "role_id")
  int? get roleId;
  @override
  @JsonKey(name: "company_users_id")
  int? get companyUsersId;
  @override
  @JsonKey(name: "action_id")
  int? get actionId;
  @override
  @JsonKey(name: "drawer_balance")
  int? get drawerBalance;
  @override
  @JsonKey(name: "kiosk_id")
  int? get kioskId;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "day_close_id")
  int? get dayCloseId;
  @override
  @JsonKey(name: "is_synced")
  int? get isSynced;
  @override
  @JsonKey(name: "device_serial_no")
  String? get deviceSerialNo;
  @override
  @JsonKey(name: "store_id")
  int? get storeId;
  @override
  @JsonKey(name: "shift_name")
  String? get shiftName;
  @override
  @JsonKey(name: "user_name")
  String? get userName;
  @override
  @JsonKey(name: "role_name")
  String? get roleName;
  @override
  @JsonKey(name: "device_name")
  String? get deviceName;
  @override
  @JsonKey(name: "rowcount")
  int? get rowcount;
  @override
  @JsonKey(name: "opening_time")
  String? get openingTime;
  @override
  @JsonKey(name: "opening_balance")
  double? get openingBalance;
  @override
  @JsonKey(name: "closing_time")
  String? get closingTime;
  @override
  @JsonKey(name: "closing_balance")
  double? get closingBalance;
  @override
  @JsonKey(name: "drawer_balances")
  List<dynamic>? get drawerBalances;
  @override
  @JsonKey(name: "currency_denominations")
  List<dynamic>? get currencyDenominations;

  /// Create a copy of UserShiftReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserShiftReportResponseImplCopyWith<_$UserShiftReportResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
