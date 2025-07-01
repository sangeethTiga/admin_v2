// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_offer_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

EditOfferResponse _$EditOfferResponseFromJson(Map<String, dynamic> json) {
  return _EditOfferResponse.fromJson(json);
}

/// @nodoc
mixin _$EditOfferResponse {
  @JsonKey(name: "product_id")
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "coupon_id")
  int? get couponId => throw _privateConstructorUsedError;
  @JsonKey(name: "store_id")
  int? get storeId => throw _privateConstructorUsedError;
  @JsonKey(name: "branch_id")
  int? get branchId => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_var_code")
  String? get prodVarCode => throw _privateConstructorUsedError;
  @JsonKey(name: "resource_id")
  int? get resourceId => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_offer_type_id")
  int? get prodOfferTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "price_type_id")
  int? get priceTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "max_order_qty")
  int? get maxOrderQty => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_price")
  double? get offerPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_price_percentage")
  int? get offerPricePercentage => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_from_date")
  DateTime? get offerFromDate => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_to_date")
  DateTime? get offerToDate => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_type_id")
  int? get offerTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  int? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_by")
  int? get updatedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_partner_id")
  int? get deliveryPartnerId => throw _privateConstructorUsedError;

  /// Serializes this EditOfferResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EditOfferResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditOfferResponseCopyWith<EditOfferResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditOfferResponseCopyWith<$Res> {
  factory $EditOfferResponseCopyWith(
    EditOfferResponse value,
    $Res Function(EditOfferResponse) then,
  ) = _$EditOfferResponseCopyWithImpl<$Res, EditOfferResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "product_id") int? productId,
    @JsonKey(name: "coupon_id") int? couponId,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "branch_id") int? branchId,
    @JsonKey(name: "prod_var_code") String? prodVarCode,
    @JsonKey(name: "resource_id") int? resourceId,
    @JsonKey(name: "prod_offer_type_id") int? prodOfferTypeId,
    @JsonKey(name: "price_type_id") int? priceTypeId,
    @JsonKey(name: "max_order_qty") int? maxOrderQty,
    @JsonKey(name: "offer_price") double? offerPrice,
    @JsonKey(name: "offer_price_percentage") int? offerPricePercentage,
    @JsonKey(name: "offer_from_date") DateTime? offerFromDate,
    @JsonKey(name: "offer_to_date") DateTime? offerToDate,
    @JsonKey(name: "offer_type_id") int? offerTypeId,
    @JsonKey(name: "created_by") int? createdBy,
    @JsonKey(name: "updated_by") int? updatedBy,
    @JsonKey(name: "delivery_partner_id") int? deliveryPartnerId,
  });
}

/// @nodoc
class _$EditOfferResponseCopyWithImpl<$Res, $Val extends EditOfferResponse>
    implements $EditOfferResponseCopyWith<$Res> {
  _$EditOfferResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditOfferResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? couponId = freezed,
    Object? storeId = freezed,
    Object? branchId = freezed,
    Object? prodVarCode = freezed,
    Object? resourceId = freezed,
    Object? prodOfferTypeId = freezed,
    Object? priceTypeId = freezed,
    Object? maxOrderQty = freezed,
    Object? offerPrice = freezed,
    Object? offerPricePercentage = freezed,
    Object? offerFromDate = freezed,
    Object? offerToDate = freezed,
    Object? offerTypeId = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? deliveryPartnerId = freezed,
  }) {
    return _then(
      _value.copyWith(
            productId: freezed == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as int?,
            couponId: freezed == couponId
                ? _value.couponId
                : couponId // ignore: cast_nullable_to_non_nullable
                      as int?,
            storeId: freezed == storeId
                ? _value.storeId
                : storeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            branchId: freezed == branchId
                ? _value.branchId
                : branchId // ignore: cast_nullable_to_non_nullable
                      as int?,
            prodVarCode: freezed == prodVarCode
                ? _value.prodVarCode
                : prodVarCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            resourceId: freezed == resourceId
                ? _value.resourceId
                : resourceId // ignore: cast_nullable_to_non_nullable
                      as int?,
            prodOfferTypeId: freezed == prodOfferTypeId
                ? _value.prodOfferTypeId
                : prodOfferTypeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            priceTypeId: freezed == priceTypeId
                ? _value.priceTypeId
                : priceTypeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            maxOrderQty: freezed == maxOrderQty
                ? _value.maxOrderQty
                : maxOrderQty // ignore: cast_nullable_to_non_nullable
                      as int?,
            offerPrice: freezed == offerPrice
                ? _value.offerPrice
                : offerPrice // ignore: cast_nullable_to_non_nullable
                      as double?,
            offerPricePercentage: freezed == offerPricePercentage
                ? _value.offerPricePercentage
                : offerPricePercentage // ignore: cast_nullable_to_non_nullable
                      as int?,
            offerFromDate: freezed == offerFromDate
                ? _value.offerFromDate
                : offerFromDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            offerToDate: freezed == offerToDate
                ? _value.offerToDate
                : offerToDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            offerTypeId: freezed == offerTypeId
                ? _value.offerTypeId
                : offerTypeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            createdBy: freezed == createdBy
                ? _value.createdBy
                : createdBy // ignore: cast_nullable_to_non_nullable
                      as int?,
            updatedBy: freezed == updatedBy
                ? _value.updatedBy
                : updatedBy // ignore: cast_nullable_to_non_nullable
                      as int?,
            deliveryPartnerId: freezed == deliveryPartnerId
                ? _value.deliveryPartnerId
                : deliveryPartnerId // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EditOfferResponseImplCopyWith<$Res>
    implements $EditOfferResponseCopyWith<$Res> {
  factory _$$EditOfferResponseImplCopyWith(
    _$EditOfferResponseImpl value,
    $Res Function(_$EditOfferResponseImpl) then,
  ) = __$$EditOfferResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "product_id") int? productId,
    @JsonKey(name: "coupon_id") int? couponId,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "branch_id") int? branchId,
    @JsonKey(name: "prod_var_code") String? prodVarCode,
    @JsonKey(name: "resource_id") int? resourceId,
    @JsonKey(name: "prod_offer_type_id") int? prodOfferTypeId,
    @JsonKey(name: "price_type_id") int? priceTypeId,
    @JsonKey(name: "max_order_qty") int? maxOrderQty,
    @JsonKey(name: "offer_price") double? offerPrice,
    @JsonKey(name: "offer_price_percentage") int? offerPricePercentage,
    @JsonKey(name: "offer_from_date") DateTime? offerFromDate,
    @JsonKey(name: "offer_to_date") DateTime? offerToDate,
    @JsonKey(name: "offer_type_id") int? offerTypeId,
    @JsonKey(name: "created_by") int? createdBy,
    @JsonKey(name: "updated_by") int? updatedBy,
    @JsonKey(name: "delivery_partner_id") int? deliveryPartnerId,
  });
}

/// @nodoc
class __$$EditOfferResponseImplCopyWithImpl<$Res>
    extends _$EditOfferResponseCopyWithImpl<$Res, _$EditOfferResponseImpl>
    implements _$$EditOfferResponseImplCopyWith<$Res> {
  __$$EditOfferResponseImplCopyWithImpl(
    _$EditOfferResponseImpl _value,
    $Res Function(_$EditOfferResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EditOfferResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? couponId = freezed,
    Object? storeId = freezed,
    Object? branchId = freezed,
    Object? prodVarCode = freezed,
    Object? resourceId = freezed,
    Object? prodOfferTypeId = freezed,
    Object? priceTypeId = freezed,
    Object? maxOrderQty = freezed,
    Object? offerPrice = freezed,
    Object? offerPricePercentage = freezed,
    Object? offerFromDate = freezed,
    Object? offerToDate = freezed,
    Object? offerTypeId = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? deliveryPartnerId = freezed,
  }) {
    return _then(
      _$EditOfferResponseImpl(
        productId: freezed == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as int?,
        couponId: freezed == couponId
            ? _value.couponId
            : couponId // ignore: cast_nullable_to_non_nullable
                  as int?,
        storeId: freezed == storeId
            ? _value.storeId
            : storeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        branchId: freezed == branchId
            ? _value.branchId
            : branchId // ignore: cast_nullable_to_non_nullable
                  as int?,
        prodVarCode: freezed == prodVarCode
            ? _value.prodVarCode
            : prodVarCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        resourceId: freezed == resourceId
            ? _value.resourceId
            : resourceId // ignore: cast_nullable_to_non_nullable
                  as int?,
        prodOfferTypeId: freezed == prodOfferTypeId
            ? _value.prodOfferTypeId
            : prodOfferTypeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        priceTypeId: freezed == priceTypeId
            ? _value.priceTypeId
            : priceTypeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        maxOrderQty: freezed == maxOrderQty
            ? _value.maxOrderQty
            : maxOrderQty // ignore: cast_nullable_to_non_nullable
                  as int?,
        offerPrice: freezed == offerPrice
            ? _value.offerPrice
            : offerPrice // ignore: cast_nullable_to_non_nullable
                  as double?,
        offerPricePercentage: freezed == offerPricePercentage
            ? _value.offerPricePercentage
            : offerPricePercentage // ignore: cast_nullable_to_non_nullable
                  as int?,
        offerFromDate: freezed == offerFromDate
            ? _value.offerFromDate
            : offerFromDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        offerToDate: freezed == offerToDate
            ? _value.offerToDate
            : offerToDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        offerTypeId: freezed == offerTypeId
            ? _value.offerTypeId
            : offerTypeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        createdBy: freezed == createdBy
            ? _value.createdBy
            : createdBy // ignore: cast_nullable_to_non_nullable
                  as int?,
        updatedBy: freezed == updatedBy
            ? _value.updatedBy
            : updatedBy // ignore: cast_nullable_to_non_nullable
                  as int?,
        deliveryPartnerId: freezed == deliveryPartnerId
            ? _value.deliveryPartnerId
            : deliveryPartnerId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EditOfferResponseImpl implements _EditOfferResponse {
  const _$EditOfferResponseImpl({
    @JsonKey(name: "product_id") this.productId,
    @JsonKey(name: "coupon_id") this.couponId,
    @JsonKey(name: "store_id") this.storeId,
    @JsonKey(name: "branch_id") this.branchId,
    @JsonKey(name: "prod_var_code") this.prodVarCode,
    @JsonKey(name: "resource_id") this.resourceId,
    @JsonKey(name: "prod_offer_type_id") this.prodOfferTypeId,
    @JsonKey(name: "price_type_id") this.priceTypeId,
    @JsonKey(name: "max_order_qty") this.maxOrderQty,
    @JsonKey(name: "offer_price") this.offerPrice,
    @JsonKey(name: "offer_price_percentage") this.offerPricePercentage,
    @JsonKey(name: "offer_from_date") this.offerFromDate,
    @JsonKey(name: "offer_to_date") this.offerToDate,
    @JsonKey(name: "offer_type_id") this.offerTypeId,
    @JsonKey(name: "created_by") this.createdBy,
    @JsonKey(name: "updated_by") this.updatedBy,
    @JsonKey(name: "delivery_partner_id") this.deliveryPartnerId,
  });

  factory _$EditOfferResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditOfferResponseImplFromJson(json);

  @override
  @JsonKey(name: "product_id")
  final int? productId;
  @override
  @JsonKey(name: "coupon_id")
  final int? couponId;
  @override
  @JsonKey(name: "store_id")
  final int? storeId;
  @override
  @JsonKey(name: "branch_id")
  final int? branchId;
  @override
  @JsonKey(name: "prod_var_code")
  final String? prodVarCode;
  @override
  @JsonKey(name: "resource_id")
  final int? resourceId;
  @override
  @JsonKey(name: "prod_offer_type_id")
  final int? prodOfferTypeId;
  @override
  @JsonKey(name: "price_type_id")
  final int? priceTypeId;
  @override
  @JsonKey(name: "max_order_qty")
  final int? maxOrderQty;
  @override
  @JsonKey(name: "offer_price")
  final double? offerPrice;
  @override
  @JsonKey(name: "offer_price_percentage")
  final int? offerPricePercentage;
  @override
  @JsonKey(name: "offer_from_date")
  final DateTime? offerFromDate;
  @override
  @JsonKey(name: "offer_to_date")
  final DateTime? offerToDate;
  @override
  @JsonKey(name: "offer_type_id")
  final int? offerTypeId;
  @override
  @JsonKey(name: "created_by")
  final int? createdBy;
  @override
  @JsonKey(name: "updated_by")
  final int? updatedBy;
  @override
  @JsonKey(name: "delivery_partner_id")
  final int? deliveryPartnerId;

  @override
  String toString() {
    return 'EditOfferResponse(productId: $productId, couponId: $couponId, storeId: $storeId, branchId: $branchId, prodVarCode: $prodVarCode, resourceId: $resourceId, prodOfferTypeId: $prodOfferTypeId, priceTypeId: $priceTypeId, maxOrderQty: $maxOrderQty, offerPrice: $offerPrice, offerPricePercentage: $offerPricePercentage, offerFromDate: $offerFromDate, offerToDate: $offerToDate, offerTypeId: $offerTypeId, createdBy: $createdBy, updatedBy: $updatedBy, deliveryPartnerId: $deliveryPartnerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditOfferResponseImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.couponId, couponId) ||
                other.couponId == couponId) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId) &&
            (identical(other.prodVarCode, prodVarCode) ||
                other.prodVarCode == prodVarCode) &&
            (identical(other.resourceId, resourceId) ||
                other.resourceId == resourceId) &&
            (identical(other.prodOfferTypeId, prodOfferTypeId) ||
                other.prodOfferTypeId == prodOfferTypeId) &&
            (identical(other.priceTypeId, priceTypeId) ||
                other.priceTypeId == priceTypeId) &&
            (identical(other.maxOrderQty, maxOrderQty) ||
                other.maxOrderQty == maxOrderQty) &&
            (identical(other.offerPrice, offerPrice) ||
                other.offerPrice == offerPrice) &&
            (identical(other.offerPricePercentage, offerPricePercentage) ||
                other.offerPricePercentage == offerPricePercentage) &&
            (identical(other.offerFromDate, offerFromDate) ||
                other.offerFromDate == offerFromDate) &&
            (identical(other.offerToDate, offerToDate) ||
                other.offerToDate == offerToDate) &&
            (identical(other.offerTypeId, offerTypeId) ||
                other.offerTypeId == offerTypeId) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            (identical(other.deliveryPartnerId, deliveryPartnerId) ||
                other.deliveryPartnerId == deliveryPartnerId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    productId,
    couponId,
    storeId,
    branchId,
    prodVarCode,
    resourceId,
    prodOfferTypeId,
    priceTypeId,
    maxOrderQty,
    offerPrice,
    offerPricePercentage,
    offerFromDate,
    offerToDate,
    offerTypeId,
    createdBy,
    updatedBy,
    deliveryPartnerId,
  );

  /// Create a copy of EditOfferResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditOfferResponseImplCopyWith<_$EditOfferResponseImpl> get copyWith =>
      __$$EditOfferResponseImplCopyWithImpl<_$EditOfferResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$EditOfferResponseImplToJson(this);
  }
}

abstract class _EditOfferResponse implements EditOfferResponse {
  const factory _EditOfferResponse({
    @JsonKey(name: "product_id") final int? productId,
    @JsonKey(name: "coupon_id") final int? couponId,
    @JsonKey(name: "store_id") final int? storeId,
    @JsonKey(name: "branch_id") final int? branchId,
    @JsonKey(name: "prod_var_code") final String? prodVarCode,
    @JsonKey(name: "resource_id") final int? resourceId,
    @JsonKey(name: "prod_offer_type_id") final int? prodOfferTypeId,
    @JsonKey(name: "price_type_id") final int? priceTypeId,
    @JsonKey(name: "max_order_qty") final int? maxOrderQty,
    @JsonKey(name: "offer_price") final double? offerPrice,
    @JsonKey(name: "offer_price_percentage") final int? offerPricePercentage,
    @JsonKey(name: "offer_from_date") final DateTime? offerFromDate,
    @JsonKey(name: "offer_to_date") final DateTime? offerToDate,
    @JsonKey(name: "offer_type_id") final int? offerTypeId,
    @JsonKey(name: "created_by") final int? createdBy,
    @JsonKey(name: "updated_by") final int? updatedBy,
    @JsonKey(name: "delivery_partner_id") final int? deliveryPartnerId,
  }) = _$EditOfferResponseImpl;

  factory _EditOfferResponse.fromJson(Map<String, dynamic> json) =
      _$EditOfferResponseImpl.fromJson;

  @override
  @JsonKey(name: "product_id")
  int? get productId;
  @override
  @JsonKey(name: "coupon_id")
  int? get couponId;
  @override
  @JsonKey(name: "store_id")
  int? get storeId;
  @override
  @JsonKey(name: "branch_id")
  int? get branchId;
  @override
  @JsonKey(name: "prod_var_code")
  String? get prodVarCode;
  @override
  @JsonKey(name: "resource_id")
  int? get resourceId;
  @override
  @JsonKey(name: "prod_offer_type_id")
  int? get prodOfferTypeId;
  @override
  @JsonKey(name: "price_type_id")
  int? get priceTypeId;
  @override
  @JsonKey(name: "max_order_qty")
  int? get maxOrderQty;
  @override
  @JsonKey(name: "offer_price")
  double? get offerPrice;
  @override
  @JsonKey(name: "offer_price_percentage")
  int? get offerPricePercentage;
  @override
  @JsonKey(name: "offer_from_date")
  DateTime? get offerFromDate;
  @override
  @JsonKey(name: "offer_to_date")
  DateTime? get offerToDate;
  @override
  @JsonKey(name: "offer_type_id")
  int? get offerTypeId;
  @override
  @JsonKey(name: "created_by")
  int? get createdBy;
  @override
  @JsonKey(name: "updated_by")
  int? get updatedBy;
  @override
  @JsonKey(name: "delivery_partner_id")
  int? get deliveryPartnerId;

  /// Create a copy of EditOfferResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditOfferResponseImplCopyWith<_$EditOfferResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
