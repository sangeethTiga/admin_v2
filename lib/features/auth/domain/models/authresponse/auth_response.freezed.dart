// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AuthResponseDetails _$AuthResponseDetailsFromJson(Map<String, dynamic> json) {
  return _AuthResponseDetails.fromJson(json);
}

/// @nodoc
mixin _$AuthResponseDetails {
  @JsonKey(name: "user_name")
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: "user_email")
  String? get userEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "user_phone")
  int? get userPhone => throw _privateConstructorUsedError;
  @JsonKey(name: "company_users_id")
  int? get companyUsersId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_role_id")
  int? get userRoleId => throw _privateConstructorUsedError;
  @JsonKey(name: "role_name")
  String? get roleName => throw _privateConstructorUsedError;
  @JsonKey(name: "privilages")
  List<Privilage>? get privilages => throw _privateConstructorUsedError;
  @JsonKey(name: "comp_name")
  String? get compName => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_code")
  String? get currencyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "decimal_digits")
  int? get decimalDigits => throw _privateConstructorUsedError;
  @JsonKey(name: "is_settings_completed")
  int? get isSettingsCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: "token")
  String? get token => throw _privateConstructorUsedError;

  /// Serializes this AuthResponseDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthResponseDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthResponseDetailsCopyWith<AuthResponseDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseDetailsCopyWith<$Res> {
  factory $AuthResponseDetailsCopyWith(
    AuthResponseDetails value,
    $Res Function(AuthResponseDetails) then,
  ) = _$AuthResponseDetailsCopyWithImpl<$Res, AuthResponseDetails>;
  @useResult
  $Res call({
    @JsonKey(name: "user_name") String? userName,
    @JsonKey(name: "user_email") String? userEmail,
    @JsonKey(name: "user_phone") int? userPhone,
    @JsonKey(name: "company_users_id") int? companyUsersId,
    @JsonKey(name: "user_role_id") int? userRoleId,
    @JsonKey(name: "role_name") String? roleName,
    @JsonKey(name: "privilages") List<Privilage>? privilages,
    @JsonKey(name: "comp_name") String? compName,
    @JsonKey(name: "currency_code") String? currencyCode,
    @JsonKey(name: "decimal_digits") int? decimalDigits,
    @JsonKey(name: "is_settings_completed") int? isSettingsCompleted,
    @JsonKey(name: "token") String? token,
  });
}

/// @nodoc
class _$AuthResponseDetailsCopyWithImpl<$Res, $Val extends AuthResponseDetails>
    implements $AuthResponseDetailsCopyWith<$Res> {
  _$AuthResponseDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthResponseDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? userEmail = freezed,
    Object? userPhone = freezed,
    Object? companyUsersId = freezed,
    Object? userRoleId = freezed,
    Object? roleName = freezed,
    Object? privilages = freezed,
    Object? compName = freezed,
    Object? currencyCode = freezed,
    Object? decimalDigits = freezed,
    Object? isSettingsCompleted = freezed,
    Object? token = freezed,
  }) {
    return _then(
      _value.copyWith(
            userName: freezed == userName
                ? _value.userName
                : userName // ignore: cast_nullable_to_non_nullable
                      as String?,
            userEmail: freezed == userEmail
                ? _value.userEmail
                : userEmail // ignore: cast_nullable_to_non_nullable
                      as String?,
            userPhone: freezed == userPhone
                ? _value.userPhone
                : userPhone // ignore: cast_nullable_to_non_nullable
                      as int?,
            companyUsersId: freezed == companyUsersId
                ? _value.companyUsersId
                : companyUsersId // ignore: cast_nullable_to_non_nullable
                      as int?,
            userRoleId: freezed == userRoleId
                ? _value.userRoleId
                : userRoleId // ignore: cast_nullable_to_non_nullable
                      as int?,
            roleName: freezed == roleName
                ? _value.roleName
                : roleName // ignore: cast_nullable_to_non_nullable
                      as String?,
            privilages: freezed == privilages
                ? _value.privilages
                : privilages // ignore: cast_nullable_to_non_nullable
                      as List<Privilage>?,
            compName: freezed == compName
                ? _value.compName
                : compName // ignore: cast_nullable_to_non_nullable
                      as String?,
            currencyCode: freezed == currencyCode
                ? _value.currencyCode
                : currencyCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            decimalDigits: freezed == decimalDigits
                ? _value.decimalDigits
                : decimalDigits // ignore: cast_nullable_to_non_nullable
                      as int?,
            isSettingsCompleted: freezed == isSettingsCompleted
                ? _value.isSettingsCompleted
                : isSettingsCompleted // ignore: cast_nullable_to_non_nullable
                      as int?,
            token: freezed == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AuthResponseDetailsImplCopyWith<$Res>
    implements $AuthResponseDetailsCopyWith<$Res> {
  factory _$$AuthResponseDetailsImplCopyWith(
    _$AuthResponseDetailsImpl value,
    $Res Function(_$AuthResponseDetailsImpl) then,
  ) = __$$AuthResponseDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "user_name") String? userName,
    @JsonKey(name: "user_email") String? userEmail,
    @JsonKey(name: "user_phone") int? userPhone,
    @JsonKey(name: "company_users_id") int? companyUsersId,
    @JsonKey(name: "user_role_id") int? userRoleId,
    @JsonKey(name: "role_name") String? roleName,
    @JsonKey(name: "privilages") List<Privilage>? privilages,
    @JsonKey(name: "comp_name") String? compName,
    @JsonKey(name: "currency_code") String? currencyCode,
    @JsonKey(name: "decimal_digits") int? decimalDigits,
    @JsonKey(name: "is_settings_completed") int? isSettingsCompleted,
    @JsonKey(name: "token") String? token,
  });
}

/// @nodoc
class __$$AuthResponseDetailsImplCopyWithImpl<$Res>
    extends _$AuthResponseDetailsCopyWithImpl<$Res, _$AuthResponseDetailsImpl>
    implements _$$AuthResponseDetailsImplCopyWith<$Res> {
  __$$AuthResponseDetailsImplCopyWithImpl(
    _$AuthResponseDetailsImpl _value,
    $Res Function(_$AuthResponseDetailsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthResponseDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? userEmail = freezed,
    Object? userPhone = freezed,
    Object? companyUsersId = freezed,
    Object? userRoleId = freezed,
    Object? roleName = freezed,
    Object? privilages = freezed,
    Object? compName = freezed,
    Object? currencyCode = freezed,
    Object? decimalDigits = freezed,
    Object? isSettingsCompleted = freezed,
    Object? token = freezed,
  }) {
    return _then(
      _$AuthResponseDetailsImpl(
        userName: freezed == userName
            ? _value.userName
            : userName // ignore: cast_nullable_to_non_nullable
                  as String?,
        userEmail: freezed == userEmail
            ? _value.userEmail
            : userEmail // ignore: cast_nullable_to_non_nullable
                  as String?,
        userPhone: freezed == userPhone
            ? _value.userPhone
            : userPhone // ignore: cast_nullable_to_non_nullable
                  as int?,
        companyUsersId: freezed == companyUsersId
            ? _value.companyUsersId
            : companyUsersId // ignore: cast_nullable_to_non_nullable
                  as int?,
        userRoleId: freezed == userRoleId
            ? _value.userRoleId
            : userRoleId // ignore: cast_nullable_to_non_nullable
                  as int?,
        roleName: freezed == roleName
            ? _value.roleName
            : roleName // ignore: cast_nullable_to_non_nullable
                  as String?,
        privilages: freezed == privilages
            ? _value._privilages
            : privilages // ignore: cast_nullable_to_non_nullable
                  as List<Privilage>?,
        compName: freezed == compName
            ? _value.compName
            : compName // ignore: cast_nullable_to_non_nullable
                  as String?,
        currencyCode: freezed == currencyCode
            ? _value.currencyCode
            : currencyCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        decimalDigits: freezed == decimalDigits
            ? _value.decimalDigits
            : decimalDigits // ignore: cast_nullable_to_non_nullable
                  as int?,
        isSettingsCompleted: freezed == isSettingsCompleted
            ? _value.isSettingsCompleted
            : isSettingsCompleted // ignore: cast_nullable_to_non_nullable
                  as int?,
        token: freezed == token
            ? _value.token
            : token // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthResponseDetailsImpl implements _AuthResponseDetails {
  const _$AuthResponseDetailsImpl({
    @JsonKey(name: "user_name") this.userName,
    @JsonKey(name: "user_email") this.userEmail,
    @JsonKey(name: "user_phone") this.userPhone,
    @JsonKey(name: "company_users_id") this.companyUsersId,
    @JsonKey(name: "user_role_id") this.userRoleId,
    @JsonKey(name: "role_name") this.roleName,
    @JsonKey(name: "privilages") final List<Privilage>? privilages,
    @JsonKey(name: "comp_name") this.compName,
    @JsonKey(name: "currency_code") this.currencyCode,
    @JsonKey(name: "decimal_digits") this.decimalDigits,
    @JsonKey(name: "is_settings_completed") this.isSettingsCompleted,
    @JsonKey(name: "token") this.token,
  }) : _privilages = privilages;

  factory _$AuthResponseDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthResponseDetailsImplFromJson(json);

  @override
  @JsonKey(name: "user_name")
  final String? userName;
  @override
  @JsonKey(name: "user_email")
  final String? userEmail;
  @override
  @JsonKey(name: "user_phone")
  final int? userPhone;
  @override
  @JsonKey(name: "company_users_id")
  final int? companyUsersId;
  @override
  @JsonKey(name: "user_role_id")
  final int? userRoleId;
  @override
  @JsonKey(name: "role_name")
  final String? roleName;
  final List<Privilage>? _privilages;
  @override
  @JsonKey(name: "privilages")
  List<Privilage>? get privilages {
    final value = _privilages;
    if (value == null) return null;
    if (_privilages is EqualUnmodifiableListView) return _privilages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "comp_name")
  final String? compName;
  @override
  @JsonKey(name: "currency_code")
  final String? currencyCode;
  @override
  @JsonKey(name: "decimal_digits")
  final int? decimalDigits;
  @override
  @JsonKey(name: "is_settings_completed")
  final int? isSettingsCompleted;
  @override
  @JsonKey(name: "token")
  final String? token;

  @override
  String toString() {
    return 'AuthResponseDetails(userName: $userName, userEmail: $userEmail, userPhone: $userPhone, companyUsersId: $companyUsersId, userRoleId: $userRoleId, roleName: $roleName, privilages: $privilages, compName: $compName, currencyCode: $currencyCode, decimalDigits: $decimalDigits, isSettingsCompleted: $isSettingsCompleted, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthResponseDetailsImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.userPhone, userPhone) ||
                other.userPhone == userPhone) &&
            (identical(other.companyUsersId, companyUsersId) ||
                other.companyUsersId == companyUsersId) &&
            (identical(other.userRoleId, userRoleId) ||
                other.userRoleId == userRoleId) &&
            (identical(other.roleName, roleName) ||
                other.roleName == roleName) &&
            const DeepCollectionEquality().equals(
              other._privilages,
              _privilages,
            ) &&
            (identical(other.compName, compName) ||
                other.compName == compName) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.decimalDigits, decimalDigits) ||
                other.decimalDigits == decimalDigits) &&
            (identical(other.isSettingsCompleted, isSettingsCompleted) ||
                other.isSettingsCompleted == isSettingsCompleted) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userName,
    userEmail,
    userPhone,
    companyUsersId,
    userRoleId,
    roleName,
    const DeepCollectionEquality().hash(_privilages),
    compName,
    currencyCode,
    decimalDigits,
    isSettingsCompleted,
    token,
  );

  /// Create a copy of AuthResponseDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthResponseDetailsImplCopyWith<_$AuthResponseDetailsImpl> get copyWith =>
      __$$AuthResponseDetailsImplCopyWithImpl<_$AuthResponseDetailsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthResponseDetailsImplToJson(this);
  }
}

abstract class _AuthResponseDetails implements AuthResponseDetails {
  const factory _AuthResponseDetails({
    @JsonKey(name: "user_name") final String? userName,
    @JsonKey(name: "user_email") final String? userEmail,
    @JsonKey(name: "user_phone") final int? userPhone,
    @JsonKey(name: "company_users_id") final int? companyUsersId,
    @JsonKey(name: "user_role_id") final int? userRoleId,
    @JsonKey(name: "role_name") final String? roleName,
    @JsonKey(name: "privilages") final List<Privilage>? privilages,
    @JsonKey(name: "comp_name") final String? compName,
    @JsonKey(name: "currency_code") final String? currencyCode,
    @JsonKey(name: "decimal_digits") final int? decimalDigits,
    @JsonKey(name: "is_settings_completed") final int? isSettingsCompleted,
    @JsonKey(name: "token") final String? token,
  }) = _$AuthResponseDetailsImpl;

  factory _AuthResponseDetails.fromJson(Map<String, dynamic> json) =
      _$AuthResponseDetailsImpl.fromJson;

  @override
  @JsonKey(name: "user_name")
  String? get userName;
  @override
  @JsonKey(name: "user_email")
  String? get userEmail;
  @override
  @JsonKey(name: "user_phone")
  int? get userPhone;
  @override
  @JsonKey(name: "company_users_id")
  int? get companyUsersId;
  @override
  @JsonKey(name: "user_role_id")
  int? get userRoleId;
  @override
  @JsonKey(name: "role_name")
  String? get roleName;
  @override
  @JsonKey(name: "privilages")
  List<Privilage>? get privilages;
  @override
  @JsonKey(name: "comp_name")
  String? get compName;
  @override
  @JsonKey(name: "currency_code")
  String? get currencyCode;
  @override
  @JsonKey(name: "decimal_digits")
  int? get decimalDigits;
  @override
  @JsonKey(name: "is_settings_completed")
  int? get isSettingsCompleted;
  @override
  @JsonKey(name: "token")
  String? get token;

  /// Create a copy of AuthResponseDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthResponseDetailsImplCopyWith<_$AuthResponseDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Privilage _$PrivilageFromJson(Map<String, dynamic> json) {
  return _Privilage.fromJson(json);
}

/// @nodoc
mixin _$Privilage {
  @JsonKey(name: "privilege_id")
  int? get privilegeId => throw _privateConstructorUsedError;
  @JsonKey(name: "privilege_name")
  String? get privilegeName => throw _privateConstructorUsedError;
  @JsonKey(name: "routerLink")
  String? get routerLink => throw _privateConstructorUsedError;

  /// Serializes this Privilage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Privilage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrivilageCopyWith<Privilage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivilageCopyWith<$Res> {
  factory $PrivilageCopyWith(Privilage value, $Res Function(Privilage) then) =
      _$PrivilageCopyWithImpl<$Res, Privilage>;
  @useResult
  $Res call({
    @JsonKey(name: "privilege_id") int? privilegeId,
    @JsonKey(name: "privilege_name") String? privilegeName,
    @JsonKey(name: "routerLink") String? routerLink,
  });
}

/// @nodoc
class _$PrivilageCopyWithImpl<$Res, $Val extends Privilage>
    implements $PrivilageCopyWith<$Res> {
  _$PrivilageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Privilage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privilegeId = freezed,
    Object? privilegeName = freezed,
    Object? routerLink = freezed,
  }) {
    return _then(
      _value.copyWith(
            privilegeId: freezed == privilegeId
                ? _value.privilegeId
                : privilegeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            privilegeName: freezed == privilegeName
                ? _value.privilegeName
                : privilegeName // ignore: cast_nullable_to_non_nullable
                      as String?,
            routerLink: freezed == routerLink
                ? _value.routerLink
                : routerLink // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PrivilageImplCopyWith<$Res>
    implements $PrivilageCopyWith<$Res> {
  factory _$$PrivilageImplCopyWith(
    _$PrivilageImpl value,
    $Res Function(_$PrivilageImpl) then,
  ) = __$$PrivilageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "privilege_id") int? privilegeId,
    @JsonKey(name: "privilege_name") String? privilegeName,
    @JsonKey(name: "routerLink") String? routerLink,
  });
}

/// @nodoc
class __$$PrivilageImplCopyWithImpl<$Res>
    extends _$PrivilageCopyWithImpl<$Res, _$PrivilageImpl>
    implements _$$PrivilageImplCopyWith<$Res> {
  __$$PrivilageImplCopyWithImpl(
    _$PrivilageImpl _value,
    $Res Function(_$PrivilageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Privilage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privilegeId = freezed,
    Object? privilegeName = freezed,
    Object? routerLink = freezed,
  }) {
    return _then(
      _$PrivilageImpl(
        privilegeId: freezed == privilegeId
            ? _value.privilegeId
            : privilegeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        privilegeName: freezed == privilegeName
            ? _value.privilegeName
            : privilegeName // ignore: cast_nullable_to_non_nullable
                  as String?,
        routerLink: freezed == routerLink
            ? _value.routerLink
            : routerLink // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PrivilageImpl implements _Privilage {
  const _$PrivilageImpl({
    @JsonKey(name: "privilege_id") this.privilegeId,
    @JsonKey(name: "privilege_name") this.privilegeName,
    @JsonKey(name: "routerLink") this.routerLink,
  });

  factory _$PrivilageImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrivilageImplFromJson(json);

  @override
  @JsonKey(name: "privilege_id")
  final int? privilegeId;
  @override
  @JsonKey(name: "privilege_name")
  final String? privilegeName;
  @override
  @JsonKey(name: "routerLink")
  final String? routerLink;

  @override
  String toString() {
    return 'Privilage(privilegeId: $privilegeId, privilegeName: $privilegeName, routerLink: $routerLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivilageImpl &&
            (identical(other.privilegeId, privilegeId) ||
                other.privilegeId == privilegeId) &&
            (identical(other.privilegeName, privilegeName) ||
                other.privilegeName == privilegeName) &&
            (identical(other.routerLink, routerLink) ||
                other.routerLink == routerLink));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, privilegeId, privilegeName, routerLink);

  /// Create a copy of Privilage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivilageImplCopyWith<_$PrivilageImpl> get copyWith =>
      __$$PrivilageImplCopyWithImpl<_$PrivilageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrivilageImplToJson(this);
  }
}

abstract class _Privilage implements Privilage {
  const factory _Privilage({
    @JsonKey(name: "privilege_id") final int? privilegeId,
    @JsonKey(name: "privilege_name") final String? privilegeName,
    @JsonKey(name: "routerLink") final String? routerLink,
  }) = _$PrivilageImpl;

  factory _Privilage.fromJson(Map<String, dynamic> json) =
      _$PrivilageImpl.fromJson;

  @override
  @JsonKey(name: "privilege_id")
  int? get privilegeId;
  @override
  @JsonKey(name: "privilege_name")
  String? get privilegeName;
  @override
  @JsonKey(name: "routerLink")
  String? get routerLink;

  /// Create a copy of Privilage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrivilageImplCopyWith<_$PrivilageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
