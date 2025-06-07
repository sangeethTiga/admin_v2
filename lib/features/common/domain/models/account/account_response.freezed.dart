// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AccountDataResponse _$AccountDataResponseFromJson(Map<String, dynamic> json) {
  return _AccountDataResponse.fromJson(json);
}

/// @nodoc
mixin _$AccountDataResponse {
  @JsonKey(name: "account_head_id")
  int? get accountHeadId => throw _privateConstructorUsedError;
  @JsonKey(name: "account_head_name")
  String? get accountHeadName => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_type")
  int? get transactionType => throw _privateConstructorUsedError;
  @JsonKey(name: "trans_type_name")
  String? get transTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: "account_type_id")
  int? get accountTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "account_type_name")
  String? get accountTypeName => throw _privateConstructorUsedError;

  /// Serializes this AccountDataResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountDataResponseCopyWith<AccountDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDataResponseCopyWith<$Res> {
  factory $AccountDataResponseCopyWith(
    AccountDataResponse value,
    $Res Function(AccountDataResponse) then,
  ) = _$AccountDataResponseCopyWithImpl<$Res, AccountDataResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "account_head_id") int? accountHeadId,
    @JsonKey(name: "account_head_name") String? accountHeadName,
    @JsonKey(name: "transaction_type") int? transactionType,
    @JsonKey(name: "trans_type_name") String? transTypeName,
    @JsonKey(name: "account_type_id") int? accountTypeId,
    @JsonKey(name: "account_type_name") String? accountTypeName,
  });
}

/// @nodoc
class _$AccountDataResponseCopyWithImpl<$Res, $Val extends AccountDataResponse>
    implements $AccountDataResponseCopyWith<$Res> {
  _$AccountDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountHeadId = freezed,
    Object? accountHeadName = freezed,
    Object? transactionType = freezed,
    Object? transTypeName = freezed,
    Object? accountTypeId = freezed,
    Object? accountTypeName = freezed,
  }) {
    return _then(
      _value.copyWith(
            accountHeadId: freezed == accountHeadId
                ? _value.accountHeadId
                : accountHeadId // ignore: cast_nullable_to_non_nullable
                      as int?,
            accountHeadName: freezed == accountHeadName
                ? _value.accountHeadName
                : accountHeadName // ignore: cast_nullable_to_non_nullable
                      as String?,
            transactionType: freezed == transactionType
                ? _value.transactionType
                : transactionType // ignore: cast_nullable_to_non_nullable
                      as int?,
            transTypeName: freezed == transTypeName
                ? _value.transTypeName
                : transTypeName // ignore: cast_nullable_to_non_nullable
                      as String?,
            accountTypeId: freezed == accountTypeId
                ? _value.accountTypeId
                : accountTypeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            accountTypeName: freezed == accountTypeName
                ? _value.accountTypeName
                : accountTypeName // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AccountDataResponseImplCopyWith<$Res>
    implements $AccountDataResponseCopyWith<$Res> {
  factory _$$AccountDataResponseImplCopyWith(
    _$AccountDataResponseImpl value,
    $Res Function(_$AccountDataResponseImpl) then,
  ) = __$$AccountDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "account_head_id") int? accountHeadId,
    @JsonKey(name: "account_head_name") String? accountHeadName,
    @JsonKey(name: "transaction_type") int? transactionType,
    @JsonKey(name: "trans_type_name") String? transTypeName,
    @JsonKey(name: "account_type_id") int? accountTypeId,
    @JsonKey(name: "account_type_name") String? accountTypeName,
  });
}

/// @nodoc
class __$$AccountDataResponseImplCopyWithImpl<$Res>
    extends _$AccountDataResponseCopyWithImpl<$Res, _$AccountDataResponseImpl>
    implements _$$AccountDataResponseImplCopyWith<$Res> {
  __$$AccountDataResponseImplCopyWithImpl(
    _$AccountDataResponseImpl _value,
    $Res Function(_$AccountDataResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AccountDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountHeadId = freezed,
    Object? accountHeadName = freezed,
    Object? transactionType = freezed,
    Object? transTypeName = freezed,
    Object? accountTypeId = freezed,
    Object? accountTypeName = freezed,
  }) {
    return _then(
      _$AccountDataResponseImpl(
        accountHeadId: freezed == accountHeadId
            ? _value.accountHeadId
            : accountHeadId // ignore: cast_nullable_to_non_nullable
                  as int?,
        accountHeadName: freezed == accountHeadName
            ? _value.accountHeadName
            : accountHeadName // ignore: cast_nullable_to_non_nullable
                  as String?,
        transactionType: freezed == transactionType
            ? _value.transactionType
            : transactionType // ignore: cast_nullable_to_non_nullable
                  as int?,
        transTypeName: freezed == transTypeName
            ? _value.transTypeName
            : transTypeName // ignore: cast_nullable_to_non_nullable
                  as String?,
        accountTypeId: freezed == accountTypeId
            ? _value.accountTypeId
            : accountTypeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        accountTypeName: freezed == accountTypeName
            ? _value.accountTypeName
            : accountTypeName // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountDataResponseImpl implements _AccountDataResponse {
  const _$AccountDataResponseImpl({
    @JsonKey(name: "account_head_id") this.accountHeadId,
    @JsonKey(name: "account_head_name") this.accountHeadName,
    @JsonKey(name: "transaction_type") this.transactionType,
    @JsonKey(name: "trans_type_name") this.transTypeName,
    @JsonKey(name: "account_type_id") this.accountTypeId,
    @JsonKey(name: "account_type_name") this.accountTypeName,
  });

  factory _$AccountDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountDataResponseImplFromJson(json);

  @override
  @JsonKey(name: "account_head_id")
  final int? accountHeadId;
  @override
  @JsonKey(name: "account_head_name")
  final String? accountHeadName;
  @override
  @JsonKey(name: "transaction_type")
  final int? transactionType;
  @override
  @JsonKey(name: "trans_type_name")
  final String? transTypeName;
  @override
  @JsonKey(name: "account_type_id")
  final int? accountTypeId;
  @override
  @JsonKey(name: "account_type_name")
  final String? accountTypeName;

  @override
  String toString() {
    return 'AccountDataResponse(accountHeadId: $accountHeadId, accountHeadName: $accountHeadName, transactionType: $transactionType, transTypeName: $transTypeName, accountTypeId: $accountTypeId, accountTypeName: $accountTypeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountDataResponseImpl &&
            (identical(other.accountHeadId, accountHeadId) ||
                other.accountHeadId == accountHeadId) &&
            (identical(other.accountHeadName, accountHeadName) ||
                other.accountHeadName == accountHeadName) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.transTypeName, transTypeName) ||
                other.transTypeName == transTypeName) &&
            (identical(other.accountTypeId, accountTypeId) ||
                other.accountTypeId == accountTypeId) &&
            (identical(other.accountTypeName, accountTypeName) ||
                other.accountTypeName == accountTypeName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    accountHeadId,
    accountHeadName,
    transactionType,
    transTypeName,
    accountTypeId,
    accountTypeName,
  );

  /// Create a copy of AccountDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountDataResponseImplCopyWith<_$AccountDataResponseImpl> get copyWith =>
      __$$AccountDataResponseImplCopyWithImpl<_$AccountDataResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountDataResponseImplToJson(this);
  }
}

abstract class _AccountDataResponse implements AccountDataResponse {
  const factory _AccountDataResponse({
    @JsonKey(name: "account_head_id") final int? accountHeadId,
    @JsonKey(name: "account_head_name") final String? accountHeadName,
    @JsonKey(name: "transaction_type") final int? transactionType,
    @JsonKey(name: "trans_type_name") final String? transTypeName,
    @JsonKey(name: "account_type_id") final int? accountTypeId,
    @JsonKey(name: "account_type_name") final String? accountTypeName,
  }) = _$AccountDataResponseImpl;

  factory _AccountDataResponse.fromJson(Map<String, dynamic> json) =
      _$AccountDataResponseImpl.fromJson;

  @override
  @JsonKey(name: "account_head_id")
  int? get accountHeadId;
  @override
  @JsonKey(name: "account_head_name")
  String? get accountHeadName;
  @override
  @JsonKey(name: "transaction_type")
  int? get transactionType;
  @override
  @JsonKey(name: "trans_type_name")
  String? get transTypeName;
  @override
  @JsonKey(name: "account_type_id")
  int? get accountTypeId;
  @override
  @JsonKey(name: "account_type_name")
  String? get accountTypeName;

  /// Create a copy of AccountDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountDataResponseImplCopyWith<_$AccountDataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
