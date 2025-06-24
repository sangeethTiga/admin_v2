// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StockUpdateRequest _$StockUpdateRequestFromJson(Map<String, dynamic> json) {
  return _StockUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$StockUpdateRequest {
  @JsonKey(name: "product_id")
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "maintain_stock")
  int? get maintainStock => throw _privateConstructorUsedError;
  @JsonKey(name: "stock_qty")
  double? get stockQty => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_var_id")
  int? get prodVarId => throw _privateConstructorUsedError;
  @JsonKey(name: "product_item_condition_id")
  int? get productItemConditionId => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_date")
  DateTime? get updatedDate => throw _privateConstructorUsedError;
  @JsonKey(name: "price_per_unit")
  double? get pricePerUnit => throw _privateConstructorUsedError;
  @JsonKey(name: "total_price")
  double? get totalPrice => throw _privateConstructorUsedError;

  /// Serializes this StockUpdateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StockUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StockUpdateRequestCopyWith<StockUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockUpdateRequestCopyWith<$Res> {
  factory $StockUpdateRequestCopyWith(
    StockUpdateRequest value,
    $Res Function(StockUpdateRequest) then,
  ) = _$StockUpdateRequestCopyWithImpl<$Res, StockUpdateRequest>;
  @useResult
  $Res call({
    @JsonKey(name: "product_id") int? productId,
    @JsonKey(name: "maintain_stock") int? maintainStock,
    @JsonKey(name: "stock_qty") double? stockQty,
    @JsonKey(name: "prod_var_id") int? prodVarId,
    @JsonKey(name: "product_item_condition_id") int? productItemConditionId,
    @JsonKey(name: "updated_date") DateTime? updatedDate,
    @JsonKey(name: "price_per_unit") double? pricePerUnit,
    @JsonKey(name: "total_price") double? totalPrice,
  });
}

/// @nodoc
class _$StockUpdateRequestCopyWithImpl<$Res, $Val extends StockUpdateRequest>
    implements $StockUpdateRequestCopyWith<$Res> {
  _$StockUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StockUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? maintainStock = freezed,
    Object? stockQty = freezed,
    Object? prodVarId = freezed,
    Object? productItemConditionId = freezed,
    Object? updatedDate = freezed,
    Object? pricePerUnit = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(
      _value.copyWith(
            productId: freezed == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as int?,
            maintainStock: freezed == maintainStock
                ? _value.maintainStock
                : maintainStock // ignore: cast_nullable_to_non_nullable
                      as int?,
            stockQty: freezed == stockQty
                ? _value.stockQty
                : stockQty // ignore: cast_nullable_to_non_nullable
                      as double?,
            prodVarId: freezed == prodVarId
                ? _value.prodVarId
                : prodVarId // ignore: cast_nullable_to_non_nullable
                      as int?,
            productItemConditionId: freezed == productItemConditionId
                ? _value.productItemConditionId
                : productItemConditionId // ignore: cast_nullable_to_non_nullable
                      as int?,
            updatedDate: freezed == updatedDate
                ? _value.updatedDate
                : updatedDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            pricePerUnit: freezed == pricePerUnit
                ? _value.pricePerUnit
                : pricePerUnit // ignore: cast_nullable_to_non_nullable
                      as double?,
            totalPrice: freezed == totalPrice
                ? _value.totalPrice
                : totalPrice // ignore: cast_nullable_to_non_nullable
                      as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StockUpdateRequestImplCopyWith<$Res>
    implements $StockUpdateRequestCopyWith<$Res> {
  factory _$$StockUpdateRequestImplCopyWith(
    _$StockUpdateRequestImpl value,
    $Res Function(_$StockUpdateRequestImpl) then,
  ) = __$$StockUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "product_id") int? productId,
    @JsonKey(name: "maintain_stock") int? maintainStock,
    @JsonKey(name: "stock_qty") double? stockQty,
    @JsonKey(name: "prod_var_id") int? prodVarId,
    @JsonKey(name: "product_item_condition_id") int? productItemConditionId,
    @JsonKey(name: "updated_date") DateTime? updatedDate,
    @JsonKey(name: "price_per_unit") double? pricePerUnit,
    @JsonKey(name: "total_price") double? totalPrice,
  });
}

/// @nodoc
class __$$StockUpdateRequestImplCopyWithImpl<$Res>
    extends _$StockUpdateRequestCopyWithImpl<$Res, _$StockUpdateRequestImpl>
    implements _$$StockUpdateRequestImplCopyWith<$Res> {
  __$$StockUpdateRequestImplCopyWithImpl(
    _$StockUpdateRequestImpl _value,
    $Res Function(_$StockUpdateRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StockUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? maintainStock = freezed,
    Object? stockQty = freezed,
    Object? prodVarId = freezed,
    Object? productItemConditionId = freezed,
    Object? updatedDate = freezed,
    Object? pricePerUnit = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(
      _$StockUpdateRequestImpl(
        productId: freezed == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as int?,
        maintainStock: freezed == maintainStock
            ? _value.maintainStock
            : maintainStock // ignore: cast_nullable_to_non_nullable
                  as int?,
        stockQty: freezed == stockQty
            ? _value.stockQty
            : stockQty // ignore: cast_nullable_to_non_nullable
                  as double?,
        prodVarId: freezed == prodVarId
            ? _value.prodVarId
            : prodVarId // ignore: cast_nullable_to_non_nullable
                  as int?,
        productItemConditionId: freezed == productItemConditionId
            ? _value.productItemConditionId
            : productItemConditionId // ignore: cast_nullable_to_non_nullable
                  as int?,
        updatedDate: freezed == updatedDate
            ? _value.updatedDate
            : updatedDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        pricePerUnit: freezed == pricePerUnit
            ? _value.pricePerUnit
            : pricePerUnit // ignore: cast_nullable_to_non_nullable
                  as double?,
        totalPrice: freezed == totalPrice
            ? _value.totalPrice
            : totalPrice // ignore: cast_nullable_to_non_nullable
                  as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StockUpdateRequestImpl implements _StockUpdateRequest {
  const _$StockUpdateRequestImpl({
    @JsonKey(name: "product_id") this.productId,
    @JsonKey(name: "maintain_stock") this.maintainStock,
    @JsonKey(name: "stock_qty") this.stockQty,
    @JsonKey(name: "prod_var_id") this.prodVarId,
    @JsonKey(name: "product_item_condition_id") this.productItemConditionId,
    @JsonKey(name: "updated_date") this.updatedDate,
    @JsonKey(name: "price_per_unit") this.pricePerUnit,
    @JsonKey(name: "total_price") this.totalPrice,
  });

  factory _$StockUpdateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockUpdateRequestImplFromJson(json);

  @override
  @JsonKey(name: "product_id")
  final int? productId;
  @override
  @JsonKey(name: "maintain_stock")
  final int? maintainStock;
  @override
  @JsonKey(name: "stock_qty")
  final double? stockQty;
  @override
  @JsonKey(name: "prod_var_id")
  final int? prodVarId;
  @override
  @JsonKey(name: "product_item_condition_id")
  final int? productItemConditionId;
  @override
  @JsonKey(name: "updated_date")
  final DateTime? updatedDate;
  @override
  @JsonKey(name: "price_per_unit")
  final double? pricePerUnit;
  @override
  @JsonKey(name: "total_price")
  final double? totalPrice;

  @override
  String toString() {
    return 'StockUpdateRequest(productId: $productId, maintainStock: $maintainStock, stockQty: $stockQty, prodVarId: $prodVarId, productItemConditionId: $productItemConditionId, updatedDate: $updatedDate, pricePerUnit: $pricePerUnit, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockUpdateRequestImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.maintainStock, maintainStock) ||
                other.maintainStock == maintainStock) &&
            (identical(other.stockQty, stockQty) ||
                other.stockQty == stockQty) &&
            (identical(other.prodVarId, prodVarId) ||
                other.prodVarId == prodVarId) &&
            (identical(other.productItemConditionId, productItemConditionId) ||
                other.productItemConditionId == productItemConditionId) &&
            (identical(other.updatedDate, updatedDate) ||
                other.updatedDate == updatedDate) &&
            (identical(other.pricePerUnit, pricePerUnit) ||
                other.pricePerUnit == pricePerUnit) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    productId,
    maintainStock,
    stockQty,
    prodVarId,
    productItemConditionId,
    updatedDate,
    pricePerUnit,
    totalPrice,
  );

  /// Create a copy of StockUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StockUpdateRequestImplCopyWith<_$StockUpdateRequestImpl> get copyWith =>
      __$$StockUpdateRequestImplCopyWithImpl<_$StockUpdateRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$StockUpdateRequestImplToJson(this);
  }
}

abstract class _StockUpdateRequest implements StockUpdateRequest {
  const factory _StockUpdateRequest({
    @JsonKey(name: "product_id") final int? productId,
    @JsonKey(name: "maintain_stock") final int? maintainStock,
    @JsonKey(name: "stock_qty") final double? stockQty,
    @JsonKey(name: "prod_var_id") final int? prodVarId,
    @JsonKey(name: "product_item_condition_id")
    final int? productItemConditionId,
    @JsonKey(name: "updated_date") final DateTime? updatedDate,
    @JsonKey(name: "price_per_unit") final double? pricePerUnit,
    @JsonKey(name: "total_price") final double? totalPrice,
  }) = _$StockUpdateRequestImpl;

  factory _StockUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$StockUpdateRequestImpl.fromJson;

  @override
  @JsonKey(name: "product_id")
  int? get productId;
  @override
  @JsonKey(name: "maintain_stock")
  int? get maintainStock;
  @override
  @JsonKey(name: "stock_qty")
  double? get stockQty;
  @override
  @JsonKey(name: "prod_var_id")
  int? get prodVarId;
  @override
  @JsonKey(name: "product_item_condition_id")
  int? get productItemConditionId;
  @override
  @JsonKey(name: "updated_date")
  DateTime? get updatedDate;
  @override
  @JsonKey(name: "price_per_unit")
  double? get pricePerUnit;
  @override
  @JsonKey(name: "total_price")
  double? get totalPrice;

  /// Create a copy of StockUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StockUpdateRequestImplCopyWith<_$StockUpdateRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
