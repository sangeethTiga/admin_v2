// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parcel_charge_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ParcelChargeResponse _$ParcelChargeResponseFromJson(Map<String, dynamic> json) {
  return _ParcelChargeResponse.fromJson(json);
}

/// @nodoc
mixin _$ParcelChargeResponse {
  @JsonKey(name: "prod_order_id")
  int? get prodOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_no")
  String? get billNo => throw _privateConstructorUsedError;
  @JsonKey(name: "parcel_charge", fromJson: parseDouble)
  double? get parcelCharge => throw _privateConstructorUsedError;
  @JsonKey(name: "order_date")
  String? get orderDate => throw _privateConstructorUsedError;
  @JsonKey(name: "raw_count")
  int? get rawCount => throw _privateConstructorUsedError;
  @JsonKey(name: "totalamount", fromJson: parseInt)
  int? get totalamount => throw _privateConstructorUsedError;

  /// Serializes this ParcelChargeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ParcelChargeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParcelChargeResponseCopyWith<ParcelChargeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelChargeResponseCopyWith<$Res> {
  factory $ParcelChargeResponseCopyWith(
    ParcelChargeResponse value,
    $Res Function(ParcelChargeResponse) then,
  ) = _$ParcelChargeResponseCopyWithImpl<$Res, ParcelChargeResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "prod_order_id") int? prodOrderId,
    @JsonKey(name: "bill_no") String? billNo,
    @JsonKey(name: "parcel_charge", fromJson: parseDouble) double? parcelCharge,
    @JsonKey(name: "order_date") String? orderDate,
    @JsonKey(name: "raw_count") int? rawCount,
    @JsonKey(name: "totalamount", fromJson: parseInt) int? totalamount,
  });
}

/// @nodoc
class _$ParcelChargeResponseCopyWithImpl<
  $Res,
  $Val extends ParcelChargeResponse
>
    implements $ParcelChargeResponseCopyWith<$Res> {
  _$ParcelChargeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParcelChargeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodOrderId = freezed,
    Object? billNo = freezed,
    Object? parcelCharge = freezed,
    Object? orderDate = freezed,
    Object? rawCount = freezed,
    Object? totalamount = freezed,
  }) {
    return _then(
      _value.copyWith(
            prodOrderId: freezed == prodOrderId
                ? _value.prodOrderId
                : prodOrderId // ignore: cast_nullable_to_non_nullable
                      as int?,
            billNo: freezed == billNo
                ? _value.billNo
                : billNo // ignore: cast_nullable_to_non_nullable
                      as String?,
            parcelCharge: freezed == parcelCharge
                ? _value.parcelCharge
                : parcelCharge // ignore: cast_nullable_to_non_nullable
                      as double?,
            orderDate: freezed == orderDate
                ? _value.orderDate
                : orderDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            rawCount: freezed == rawCount
                ? _value.rawCount
                : rawCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalamount: freezed == totalamount
                ? _value.totalamount
                : totalamount // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ParcelChargeResponseImplCopyWith<$Res>
    implements $ParcelChargeResponseCopyWith<$Res> {
  factory _$$ParcelChargeResponseImplCopyWith(
    _$ParcelChargeResponseImpl value,
    $Res Function(_$ParcelChargeResponseImpl) then,
  ) = __$$ParcelChargeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "prod_order_id") int? prodOrderId,
    @JsonKey(name: "bill_no") String? billNo,
    @JsonKey(name: "parcel_charge", fromJson: parseDouble) double? parcelCharge,
    @JsonKey(name: "order_date") String? orderDate,
    @JsonKey(name: "raw_count") int? rawCount,
    @JsonKey(name: "totalamount", fromJson: parseInt) int? totalamount,
  });
}

/// @nodoc
class __$$ParcelChargeResponseImplCopyWithImpl<$Res>
    extends _$ParcelChargeResponseCopyWithImpl<$Res, _$ParcelChargeResponseImpl>
    implements _$$ParcelChargeResponseImplCopyWith<$Res> {
  __$$ParcelChargeResponseImplCopyWithImpl(
    _$ParcelChargeResponseImpl _value,
    $Res Function(_$ParcelChargeResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ParcelChargeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodOrderId = freezed,
    Object? billNo = freezed,
    Object? parcelCharge = freezed,
    Object? orderDate = freezed,
    Object? rawCount = freezed,
    Object? totalamount = freezed,
  }) {
    return _then(
      _$ParcelChargeResponseImpl(
        prodOrderId: freezed == prodOrderId
            ? _value.prodOrderId
            : prodOrderId // ignore: cast_nullable_to_non_nullable
                  as int?,
        billNo: freezed == billNo
            ? _value.billNo
            : billNo // ignore: cast_nullable_to_non_nullable
                  as String?,
        parcelCharge: freezed == parcelCharge
            ? _value.parcelCharge
            : parcelCharge // ignore: cast_nullable_to_non_nullable
                  as double?,
        orderDate: freezed == orderDate
            ? _value.orderDate
            : orderDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        rawCount: freezed == rawCount
            ? _value.rawCount
            : rawCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalamount: freezed == totalamount
            ? _value.totalamount
            : totalamount // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ParcelChargeResponseImpl implements _ParcelChargeResponse {
  const _$ParcelChargeResponseImpl({
    @JsonKey(name: "prod_order_id") this.prodOrderId,
    @JsonKey(name: "bill_no") this.billNo,
    @JsonKey(name: "parcel_charge", fromJson: parseDouble) this.parcelCharge,
    @JsonKey(name: "order_date") this.orderDate,
    @JsonKey(name: "raw_count") this.rawCount,
    @JsonKey(name: "totalamount", fromJson: parseInt) this.totalamount,
  });

  factory _$ParcelChargeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParcelChargeResponseImplFromJson(json);

  @override
  @JsonKey(name: "prod_order_id")
  final int? prodOrderId;
  @override
  @JsonKey(name: "bill_no")
  final String? billNo;
  @override
  @JsonKey(name: "parcel_charge", fromJson: parseDouble)
  final double? parcelCharge;
  @override
  @JsonKey(name: "order_date")
  final String? orderDate;
  @override
  @JsonKey(name: "raw_count")
  final int? rawCount;
  @override
  @JsonKey(name: "totalamount", fromJson: parseInt)
  final int? totalamount;

  @override
  String toString() {
    return 'ParcelChargeResponse(prodOrderId: $prodOrderId, billNo: $billNo, parcelCharge: $parcelCharge, orderDate: $orderDate, rawCount: $rawCount, totalamount: $totalamount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelChargeResponseImpl &&
            (identical(other.prodOrderId, prodOrderId) ||
                other.prodOrderId == prodOrderId) &&
            (identical(other.billNo, billNo) || other.billNo == billNo) &&
            (identical(other.parcelCharge, parcelCharge) ||
                other.parcelCharge == parcelCharge) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.rawCount, rawCount) ||
                other.rawCount == rawCount) &&
            (identical(other.totalamount, totalamount) ||
                other.totalamount == totalamount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    prodOrderId,
    billNo,
    parcelCharge,
    orderDate,
    rawCount,
    totalamount,
  );

  /// Create a copy of ParcelChargeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParcelChargeResponseImplCopyWith<_$ParcelChargeResponseImpl>
  get copyWith =>
      __$$ParcelChargeResponseImplCopyWithImpl<_$ParcelChargeResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ParcelChargeResponseImplToJson(this);
  }
}

abstract class _ParcelChargeResponse implements ParcelChargeResponse {
  const factory _ParcelChargeResponse({
    @JsonKey(name: "prod_order_id") final int? prodOrderId,
    @JsonKey(name: "bill_no") final String? billNo,
    @JsonKey(name: "parcel_charge", fromJson: parseDouble)
    final double? parcelCharge,
    @JsonKey(name: "order_date") final String? orderDate,
    @JsonKey(name: "raw_count") final int? rawCount,
    @JsonKey(name: "totalamount", fromJson: parseInt) final int? totalamount,
  }) = _$ParcelChargeResponseImpl;

  factory _ParcelChargeResponse.fromJson(Map<String, dynamic> json) =
      _$ParcelChargeResponseImpl.fromJson;

  @override
  @JsonKey(name: "prod_order_id")
  int? get prodOrderId;
  @override
  @JsonKey(name: "bill_no")
  String? get billNo;
  @override
  @JsonKey(name: "parcel_charge", fromJson: parseDouble)
  double? get parcelCharge;
  @override
  @JsonKey(name: "order_date")
  String? get orderDate;
  @override
  @JsonKey(name: "raw_count")
  int? get rawCount;
  @override
  @JsonKey(name: "totalamount", fromJson: parseInt)
  int? get totalamount;

  /// Create a copy of ParcelChargeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParcelChargeResponseImplCopyWith<_$ParcelChargeResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
