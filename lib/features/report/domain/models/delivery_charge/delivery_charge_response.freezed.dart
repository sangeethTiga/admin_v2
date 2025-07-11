// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_charge_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DeliveryChargeResponse _$DeliveryChargeResponseFromJson(
  Map<String, dynamic> json,
) {
  return _DeliveryChargeResponse.fromJson(json);
}

/// @nodoc
mixin _$DeliveryChargeResponse {
  @JsonKey(name: "prod_order_id")
  int? get prodOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_no")
  String? get billNo => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_charge")
  String? get shippingCharge => throw _privateConstructorUsedError;
  @JsonKey(name: "order_date")
  String? get orderDate => throw _privateConstructorUsedError;
  @JsonKey(name: "raw_count")
  int? get rawCount => throw _privateConstructorUsedError;
  @JsonKey(name: "totalamount", fromJson: parseInt)
  int? get totalamount => throw _privateConstructorUsedError;

  /// Serializes this DeliveryChargeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryChargeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryChargeResponseCopyWith<DeliveryChargeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryChargeResponseCopyWith<$Res> {
  factory $DeliveryChargeResponseCopyWith(
    DeliveryChargeResponse value,
    $Res Function(DeliveryChargeResponse) then,
  ) = _$DeliveryChargeResponseCopyWithImpl<$Res, DeliveryChargeResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "prod_order_id") int? prodOrderId,
    @JsonKey(name: "bill_no") String? billNo,
    @JsonKey(name: "shipping_charge") String? shippingCharge,
    @JsonKey(name: "order_date") String? orderDate,
    @JsonKey(name: "raw_count") int? rawCount,
    @JsonKey(name: "totalamount", fromJson: parseInt) int? totalamount,
  });
}

/// @nodoc
class _$DeliveryChargeResponseCopyWithImpl<
  $Res,
  $Val extends DeliveryChargeResponse
>
    implements $DeliveryChargeResponseCopyWith<$Res> {
  _$DeliveryChargeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryChargeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodOrderId = freezed,
    Object? billNo = freezed,
    Object? shippingCharge = freezed,
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
            shippingCharge: freezed == shippingCharge
                ? _value.shippingCharge
                : shippingCharge // ignore: cast_nullable_to_non_nullable
                      as String?,
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
abstract class _$$DeliveryChargeResponseImplCopyWith<$Res>
    implements $DeliveryChargeResponseCopyWith<$Res> {
  factory _$$DeliveryChargeResponseImplCopyWith(
    _$DeliveryChargeResponseImpl value,
    $Res Function(_$DeliveryChargeResponseImpl) then,
  ) = __$$DeliveryChargeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "prod_order_id") int? prodOrderId,
    @JsonKey(name: "bill_no") String? billNo,
    @JsonKey(name: "shipping_charge") String? shippingCharge,
    @JsonKey(name: "order_date") String? orderDate,
    @JsonKey(name: "raw_count") int? rawCount,
    @JsonKey(name: "totalamount", fromJson: parseInt) int? totalamount,
  });
}

/// @nodoc
class __$$DeliveryChargeResponseImplCopyWithImpl<$Res>
    extends
        _$DeliveryChargeResponseCopyWithImpl<$Res, _$DeliveryChargeResponseImpl>
    implements _$$DeliveryChargeResponseImplCopyWith<$Res> {
  __$$DeliveryChargeResponseImplCopyWithImpl(
    _$DeliveryChargeResponseImpl _value,
    $Res Function(_$DeliveryChargeResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeliveryChargeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodOrderId = freezed,
    Object? billNo = freezed,
    Object? shippingCharge = freezed,
    Object? orderDate = freezed,
    Object? rawCount = freezed,
    Object? totalamount = freezed,
  }) {
    return _then(
      _$DeliveryChargeResponseImpl(
        prodOrderId: freezed == prodOrderId
            ? _value.prodOrderId
            : prodOrderId // ignore: cast_nullable_to_non_nullable
                  as int?,
        billNo: freezed == billNo
            ? _value.billNo
            : billNo // ignore: cast_nullable_to_non_nullable
                  as String?,
        shippingCharge: freezed == shippingCharge
            ? _value.shippingCharge
            : shippingCharge // ignore: cast_nullable_to_non_nullable
                  as String?,
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
class _$DeliveryChargeResponseImpl implements _DeliveryChargeResponse {
  const _$DeliveryChargeResponseImpl({
    @JsonKey(name: "prod_order_id") this.prodOrderId,
    @JsonKey(name: "bill_no") this.billNo,
    @JsonKey(name: "shipping_charge") this.shippingCharge,
    @JsonKey(name: "order_date") this.orderDate,
    @JsonKey(name: "raw_count") this.rawCount,
    @JsonKey(name: "totalamount", fromJson: parseInt) this.totalamount,
  });

  factory _$DeliveryChargeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryChargeResponseImplFromJson(json);

  @override
  @JsonKey(name: "prod_order_id")
  final int? prodOrderId;
  @override
  @JsonKey(name: "bill_no")
  final String? billNo;
  @override
  @JsonKey(name: "shipping_charge")
  final String? shippingCharge;
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
    return 'DeliveryChargeResponse(prodOrderId: $prodOrderId, billNo: $billNo, shippingCharge: $shippingCharge, orderDate: $orderDate, rawCount: $rawCount, totalamount: $totalamount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryChargeResponseImpl &&
            (identical(other.prodOrderId, prodOrderId) ||
                other.prodOrderId == prodOrderId) &&
            (identical(other.billNo, billNo) || other.billNo == billNo) &&
            (identical(other.shippingCharge, shippingCharge) ||
                other.shippingCharge == shippingCharge) &&
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
    shippingCharge,
    orderDate,
    rawCount,
    totalamount,
  );

  /// Create a copy of DeliveryChargeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryChargeResponseImplCopyWith<_$DeliveryChargeResponseImpl>
  get copyWith =>
      __$$DeliveryChargeResponseImplCopyWithImpl<_$DeliveryChargeResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryChargeResponseImplToJson(this);
  }
}

abstract class _DeliveryChargeResponse implements DeliveryChargeResponse {
  const factory _DeliveryChargeResponse({
    @JsonKey(name: "prod_order_id") final int? prodOrderId,
    @JsonKey(name: "bill_no") final String? billNo,
    @JsonKey(name: "shipping_charge") final String? shippingCharge,
    @JsonKey(name: "order_date") final String? orderDate,
    @JsonKey(name: "raw_count") final int? rawCount,
    @JsonKey(name: "totalamount", fromJson: parseInt) final int? totalamount,
  }) = _$DeliveryChargeResponseImpl;

  factory _DeliveryChargeResponse.fromJson(Map<String, dynamic> json) =
      _$DeliveryChargeResponseImpl.fromJson;

  @override
  @JsonKey(name: "prod_order_id")
  int? get prodOrderId;
  @override
  @JsonKey(name: "bill_no")
  String? get billNo;
  @override
  @JsonKey(name: "shipping_charge")
  String? get shippingCharge;
  @override
  @JsonKey(name: "order_date")
  String? get orderDate;
  @override
  @JsonKey(name: "raw_count")
  int? get rawCount;
  @override
  @JsonKey(name: "totalamount", fromJson: parseInt)
  int? get totalamount;

  /// Create a copy of DeliveryChargeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryChargeResponseImplCopyWith<_$DeliveryChargeResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
