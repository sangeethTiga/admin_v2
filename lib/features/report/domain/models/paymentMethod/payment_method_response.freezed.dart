// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PaymentMethodResponse _$PaymentMethodResponseFromJson(
  Map<String, dynamic> json,
) {
  return _PaymentMethodResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentMethodResponse {
  @JsonKey(name: "pay_method_id")
  int? get payMethodId => throw _privateConstructorUsedError;
  @JsonKey(name: "store_id")
  int? get storeId => throw _privateConstructorUsedError;
  @JsonKey(name: "pay_method_name")
  String? get payMethodName => throw _privateConstructorUsedError;
  @JsonKey(name: "pay_method_arabic")
  String? get payMethodArabic => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  int? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "is_synced")
  int? get isSynced => throw _privateConstructorUsedError;
  @JsonKey(name: "remarks")
  String? get remarks => throw _privateConstructorUsedError;

  /// Serializes this PaymentMethodResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentMethodResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentMethodResponseCopyWith<PaymentMethodResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodResponseCopyWith<$Res> {
  factory $PaymentMethodResponseCopyWith(
    PaymentMethodResponse value,
    $Res Function(PaymentMethodResponse) then,
  ) = _$PaymentMethodResponseCopyWithImpl<$Res, PaymentMethodResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "pay_method_id") int? payMethodId,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "pay_method_name") String? payMethodName,
    @JsonKey(name: "pay_method_arabic") String? payMethodArabic,
    @JsonKey(name: "is_active") int? isActive,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "is_synced") int? isSynced,
    @JsonKey(name: "remarks") String? remarks,
  });
}

/// @nodoc
class _$PaymentMethodResponseCopyWithImpl<
  $Res,
  $Val extends PaymentMethodResponse
>
    implements $PaymentMethodResponseCopyWith<$Res> {
  _$PaymentMethodResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentMethodResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payMethodId = freezed,
    Object? storeId = freezed,
    Object? payMethodName = freezed,
    Object? payMethodArabic = freezed,
    Object? isActive = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isSynced = freezed,
    Object? remarks = freezed,
  }) {
    return _then(
      _value.copyWith(
            payMethodId: freezed == payMethodId
                ? _value.payMethodId
                : payMethodId // ignore: cast_nullable_to_non_nullable
                      as int?,
            storeId: freezed == storeId
                ? _value.storeId
                : storeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            payMethodName: freezed == payMethodName
                ? _value.payMethodName
                : payMethodName // ignore: cast_nullable_to_non_nullable
                      as String?,
            payMethodArabic: freezed == payMethodArabic
                ? _value.payMethodArabic
                : payMethodArabic // ignore: cast_nullable_to_non_nullable
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
            remarks: freezed == remarks
                ? _value.remarks
                : remarks // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaymentMethodResponseImplCopyWith<$Res>
    implements $PaymentMethodResponseCopyWith<$Res> {
  factory _$$PaymentMethodResponseImplCopyWith(
    _$PaymentMethodResponseImpl value,
    $Res Function(_$PaymentMethodResponseImpl) then,
  ) = __$$PaymentMethodResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "pay_method_id") int? payMethodId,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "pay_method_name") String? payMethodName,
    @JsonKey(name: "pay_method_arabic") String? payMethodArabic,
    @JsonKey(name: "is_active") int? isActive,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "is_synced") int? isSynced,
    @JsonKey(name: "remarks") String? remarks,
  });
}

/// @nodoc
class __$$PaymentMethodResponseImplCopyWithImpl<$Res>
    extends
        _$PaymentMethodResponseCopyWithImpl<$Res, _$PaymentMethodResponseImpl>
    implements _$$PaymentMethodResponseImplCopyWith<$Res> {
  __$$PaymentMethodResponseImplCopyWithImpl(
    _$PaymentMethodResponseImpl _value,
    $Res Function(_$PaymentMethodResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentMethodResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payMethodId = freezed,
    Object? storeId = freezed,
    Object? payMethodName = freezed,
    Object? payMethodArabic = freezed,
    Object? isActive = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isSynced = freezed,
    Object? remarks = freezed,
  }) {
    return _then(
      _$PaymentMethodResponseImpl(
        payMethodId: freezed == payMethodId
            ? _value.payMethodId
            : payMethodId // ignore: cast_nullable_to_non_nullable
                  as int?,
        storeId: freezed == storeId
            ? _value.storeId
            : storeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        payMethodName: freezed == payMethodName
            ? _value.payMethodName
            : payMethodName // ignore: cast_nullable_to_non_nullable
                  as String?,
        payMethodArabic: freezed == payMethodArabic
            ? _value.payMethodArabic
            : payMethodArabic // ignore: cast_nullable_to_non_nullable
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
        remarks: freezed == remarks
            ? _value.remarks
            : remarks // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentMethodResponseImpl implements _PaymentMethodResponse {
  const _$PaymentMethodResponseImpl({
    @JsonKey(name: "pay_method_id") this.payMethodId,
    @JsonKey(name: "store_id") this.storeId,
    @JsonKey(name: "pay_method_name") this.payMethodName,
    @JsonKey(name: "pay_method_arabic") this.payMethodArabic,
    @JsonKey(name: "is_active") this.isActive,
    @JsonKey(name: "created_at") this.createdAt,
    @JsonKey(name: "updated_at") this.updatedAt,
    @JsonKey(name: "is_synced") this.isSynced,
    @JsonKey(name: "remarks") this.remarks,
  });

  factory _$PaymentMethodResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentMethodResponseImplFromJson(json);

  @override
  @JsonKey(name: "pay_method_id")
  final int? payMethodId;
  @override
  @JsonKey(name: "store_id")
  final int? storeId;
  @override
  @JsonKey(name: "pay_method_name")
  final String? payMethodName;
  @override
  @JsonKey(name: "pay_method_arabic")
  final String? payMethodArabic;
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
  @JsonKey(name: "remarks")
  final String? remarks;

  @override
  String toString() {
    return 'PaymentMethodResponse(payMethodId: $payMethodId, storeId: $storeId, payMethodName: $payMethodName, payMethodArabic: $payMethodArabic, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, isSynced: $isSynced, remarks: $remarks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodResponseImpl &&
            (identical(other.payMethodId, payMethodId) ||
                other.payMethodId == payMethodId) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.payMethodName, payMethodName) ||
                other.payMethodName == payMethodName) &&
            (identical(other.payMethodArabic, payMethodArabic) ||
                other.payMethodArabic == payMethodArabic) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isSynced, isSynced) ||
                other.isSynced == isSynced) &&
            (identical(other.remarks, remarks) || other.remarks == remarks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    payMethodId,
    storeId,
    payMethodName,
    payMethodArabic,
    isActive,
    createdAt,
    updatedAt,
    isSynced,
    remarks,
  );

  /// Create a copy of PaymentMethodResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentMethodResponseImplCopyWith<_$PaymentMethodResponseImpl>
  get copyWith =>
      __$$PaymentMethodResponseImplCopyWithImpl<_$PaymentMethodResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentMethodResponseImplToJson(this);
  }
}

abstract class _PaymentMethodResponse implements PaymentMethodResponse {
  const factory _PaymentMethodResponse({
    @JsonKey(name: "pay_method_id") final int? payMethodId,
    @JsonKey(name: "store_id") final int? storeId,
    @JsonKey(name: "pay_method_name") final String? payMethodName,
    @JsonKey(name: "pay_method_arabic") final String? payMethodArabic,
    @JsonKey(name: "is_active") final int? isActive,
    @JsonKey(name: "created_at") final String? createdAt,
    @JsonKey(name: "updated_at") final String? updatedAt,
    @JsonKey(name: "is_synced") final int? isSynced,
    @JsonKey(name: "remarks") final String? remarks,
  }) = _$PaymentMethodResponseImpl;

  factory _PaymentMethodResponse.fromJson(Map<String, dynamic> json) =
      _$PaymentMethodResponseImpl.fromJson;

  @override
  @JsonKey(name: "pay_method_id")
  int? get payMethodId;
  @override
  @JsonKey(name: "store_id")
  int? get storeId;
  @override
  @JsonKey(name: "pay_method_name")
  String? get payMethodName;
  @override
  @JsonKey(name: "pay_method_arabic")
  String? get payMethodArabic;
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
  @JsonKey(name: "remarks")
  String? get remarks;

  /// Create a copy of PaymentMethodResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentMethodResponseImplCopyWith<_$PaymentMethodResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
