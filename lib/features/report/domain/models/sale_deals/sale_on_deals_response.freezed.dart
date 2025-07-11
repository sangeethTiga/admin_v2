// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_on_deals_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SaleOnDeals _$SaleOnDealsFromJson(Map<String, dynamic> json) {
  return _SaleOnDeals.fromJson(json);
}

/// @nodoc
mixin _$SaleOnDeals {
  @JsonKey(name: "prod_order_id")
  int? get prodOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: "product_id")
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_price", fromJson: parseDouble)
  double? get offerPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "order_date")
  String? get orderDate => throw _privateConstructorUsedError;
  @JsonKey(name: "store_name")
  String? get storeName => throw _privateConstructorUsedError;
  @JsonKey(name: "product_name")
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: "order_item_qty")
  int? get orderItemQty => throw _privateConstructorUsedError;
  @JsonKey(name: "order_item_total", fromJson: parseDouble)
  double? get orderItemTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "order_item_net_amt", fromJson: parseDouble)
  double? get orderItemNetAmt => throw _privateConstructorUsedError;
  @JsonKey(name: "rowcount")
  int? get rowcount => throw _privateConstructorUsedError;

  /// Serializes this SaleOnDeals to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SaleOnDeals
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SaleOnDealsCopyWith<SaleOnDeals> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleOnDealsCopyWith<$Res> {
  factory $SaleOnDealsCopyWith(
    SaleOnDeals value,
    $Res Function(SaleOnDeals) then,
  ) = _$SaleOnDealsCopyWithImpl<$Res, SaleOnDeals>;
  @useResult
  $Res call({
    @JsonKey(name: "prod_order_id") int? prodOrderId,
    @JsonKey(name: "product_id") int? productId,
    @JsonKey(name: "offer_price", fromJson: parseDouble) double? offerPrice,
    @JsonKey(name: "order_date") String? orderDate,
    @JsonKey(name: "store_name") String? storeName,
    @JsonKey(name: "product_name") String? productName,
    @JsonKey(name: "order_item_qty") int? orderItemQty,
    @JsonKey(name: "order_item_total", fromJson: parseDouble)
    double? orderItemTotal,
    @JsonKey(name: "order_item_net_amt", fromJson: parseDouble)
    double? orderItemNetAmt,
    @JsonKey(name: "rowcount") int? rowcount,
  });
}

/// @nodoc
class _$SaleOnDealsCopyWithImpl<$Res, $Val extends SaleOnDeals>
    implements $SaleOnDealsCopyWith<$Res> {
  _$SaleOnDealsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SaleOnDeals
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodOrderId = freezed,
    Object? productId = freezed,
    Object? offerPrice = freezed,
    Object? orderDate = freezed,
    Object? storeName = freezed,
    Object? productName = freezed,
    Object? orderItemQty = freezed,
    Object? orderItemTotal = freezed,
    Object? orderItemNetAmt = freezed,
    Object? rowcount = freezed,
  }) {
    return _then(
      _value.copyWith(
            prodOrderId: freezed == prodOrderId
                ? _value.prodOrderId
                : prodOrderId // ignore: cast_nullable_to_non_nullable
                      as int?,
            productId: freezed == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as int?,
            offerPrice: freezed == offerPrice
                ? _value.offerPrice
                : offerPrice // ignore: cast_nullable_to_non_nullable
                      as double?,
            orderDate: freezed == orderDate
                ? _value.orderDate
                : orderDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            storeName: freezed == storeName
                ? _value.storeName
                : storeName // ignore: cast_nullable_to_non_nullable
                      as String?,
            productName: freezed == productName
                ? _value.productName
                : productName // ignore: cast_nullable_to_non_nullable
                      as String?,
            orderItemQty: freezed == orderItemQty
                ? _value.orderItemQty
                : orderItemQty // ignore: cast_nullable_to_non_nullable
                      as int?,
            orderItemTotal: freezed == orderItemTotal
                ? _value.orderItemTotal
                : orderItemTotal // ignore: cast_nullable_to_non_nullable
                      as double?,
            orderItemNetAmt: freezed == orderItemNetAmt
                ? _value.orderItemNetAmt
                : orderItemNetAmt // ignore: cast_nullable_to_non_nullable
                      as double?,
            rowcount: freezed == rowcount
                ? _value.rowcount
                : rowcount // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SaleOnDealsImplCopyWith<$Res>
    implements $SaleOnDealsCopyWith<$Res> {
  factory _$$SaleOnDealsImplCopyWith(
    _$SaleOnDealsImpl value,
    $Res Function(_$SaleOnDealsImpl) then,
  ) = __$$SaleOnDealsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "prod_order_id") int? prodOrderId,
    @JsonKey(name: "product_id") int? productId,
    @JsonKey(name: "offer_price", fromJson: parseDouble) double? offerPrice,
    @JsonKey(name: "order_date") String? orderDate,
    @JsonKey(name: "store_name") String? storeName,
    @JsonKey(name: "product_name") String? productName,
    @JsonKey(name: "order_item_qty") int? orderItemQty,
    @JsonKey(name: "order_item_total", fromJson: parseDouble)
    double? orderItemTotal,
    @JsonKey(name: "order_item_net_amt", fromJson: parseDouble)
    double? orderItemNetAmt,
    @JsonKey(name: "rowcount") int? rowcount,
  });
}

/// @nodoc
class __$$SaleOnDealsImplCopyWithImpl<$Res>
    extends _$SaleOnDealsCopyWithImpl<$Res, _$SaleOnDealsImpl>
    implements _$$SaleOnDealsImplCopyWith<$Res> {
  __$$SaleOnDealsImplCopyWithImpl(
    _$SaleOnDealsImpl _value,
    $Res Function(_$SaleOnDealsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SaleOnDeals
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodOrderId = freezed,
    Object? productId = freezed,
    Object? offerPrice = freezed,
    Object? orderDate = freezed,
    Object? storeName = freezed,
    Object? productName = freezed,
    Object? orderItemQty = freezed,
    Object? orderItemTotal = freezed,
    Object? orderItemNetAmt = freezed,
    Object? rowcount = freezed,
  }) {
    return _then(
      _$SaleOnDealsImpl(
        prodOrderId: freezed == prodOrderId
            ? _value.prodOrderId
            : prodOrderId // ignore: cast_nullable_to_non_nullable
                  as int?,
        productId: freezed == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as int?,
        offerPrice: freezed == offerPrice
            ? _value.offerPrice
            : offerPrice // ignore: cast_nullable_to_non_nullable
                  as double?,
        orderDate: freezed == orderDate
            ? _value.orderDate
            : orderDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        storeName: freezed == storeName
            ? _value.storeName
            : storeName // ignore: cast_nullable_to_non_nullable
                  as String?,
        productName: freezed == productName
            ? _value.productName
            : productName // ignore: cast_nullable_to_non_nullable
                  as String?,
        orderItemQty: freezed == orderItemQty
            ? _value.orderItemQty
            : orderItemQty // ignore: cast_nullable_to_non_nullable
                  as int?,
        orderItemTotal: freezed == orderItemTotal
            ? _value.orderItemTotal
            : orderItemTotal // ignore: cast_nullable_to_non_nullable
                  as double?,
        orderItemNetAmt: freezed == orderItemNetAmt
            ? _value.orderItemNetAmt
            : orderItemNetAmt // ignore: cast_nullable_to_non_nullable
                  as double?,
        rowcount: freezed == rowcount
            ? _value.rowcount
            : rowcount // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SaleOnDealsImpl implements _SaleOnDeals {
  const _$SaleOnDealsImpl({
    @JsonKey(name: "prod_order_id") this.prodOrderId,
    @JsonKey(name: "product_id") this.productId,
    @JsonKey(name: "offer_price", fromJson: parseDouble) this.offerPrice,
    @JsonKey(name: "order_date") this.orderDate,
    @JsonKey(name: "store_name") this.storeName,
    @JsonKey(name: "product_name") this.productName,
    @JsonKey(name: "order_item_qty") this.orderItemQty,
    @JsonKey(name: "order_item_total", fromJson: parseDouble)
    this.orderItemTotal,
    @JsonKey(name: "order_item_net_amt", fromJson: parseDouble)
    this.orderItemNetAmt,
    @JsonKey(name: "rowcount") this.rowcount,
  });

  factory _$SaleOnDealsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaleOnDealsImplFromJson(json);

  @override
  @JsonKey(name: "prod_order_id")
  final int? prodOrderId;
  @override
  @JsonKey(name: "product_id")
  final int? productId;
  @override
  @JsonKey(name: "offer_price", fromJson: parseDouble)
  final double? offerPrice;
  @override
  @JsonKey(name: "order_date")
  final String? orderDate;
  @override
  @JsonKey(name: "store_name")
  final String? storeName;
  @override
  @JsonKey(name: "product_name")
  final String? productName;
  @override
  @JsonKey(name: "order_item_qty")
  final int? orderItemQty;
  @override
  @JsonKey(name: "order_item_total", fromJson: parseDouble)
  final double? orderItemTotal;
  @override
  @JsonKey(name: "order_item_net_amt", fromJson: parseDouble)
  final double? orderItemNetAmt;
  @override
  @JsonKey(name: "rowcount")
  final int? rowcount;

  @override
  String toString() {
    return 'SaleOnDeals(prodOrderId: $prodOrderId, productId: $productId, offerPrice: $offerPrice, orderDate: $orderDate, storeName: $storeName, productName: $productName, orderItemQty: $orderItemQty, orderItemTotal: $orderItemTotal, orderItemNetAmt: $orderItemNetAmt, rowcount: $rowcount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaleOnDealsImpl &&
            (identical(other.prodOrderId, prodOrderId) ||
                other.prodOrderId == prodOrderId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.offerPrice, offerPrice) ||
                other.offerPrice == offerPrice) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.storeName, storeName) ||
                other.storeName == storeName) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.orderItemQty, orderItemQty) ||
                other.orderItemQty == orderItemQty) &&
            (identical(other.orderItemTotal, orderItemTotal) ||
                other.orderItemTotal == orderItemTotal) &&
            (identical(other.orderItemNetAmt, orderItemNetAmt) ||
                other.orderItemNetAmt == orderItemNetAmt) &&
            (identical(other.rowcount, rowcount) ||
                other.rowcount == rowcount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    prodOrderId,
    productId,
    offerPrice,
    orderDate,
    storeName,
    productName,
    orderItemQty,
    orderItemTotal,
    orderItemNetAmt,
    rowcount,
  );

  /// Create a copy of SaleOnDeals
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaleOnDealsImplCopyWith<_$SaleOnDealsImpl> get copyWith =>
      __$$SaleOnDealsImplCopyWithImpl<_$SaleOnDealsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaleOnDealsImplToJson(this);
  }
}

abstract class _SaleOnDeals implements SaleOnDeals {
  const factory _SaleOnDeals({
    @JsonKey(name: "prod_order_id") final int? prodOrderId,
    @JsonKey(name: "product_id") final int? productId,
    @JsonKey(name: "offer_price", fromJson: parseDouble)
    final double? offerPrice,
    @JsonKey(name: "order_date") final String? orderDate,
    @JsonKey(name: "store_name") final String? storeName,
    @JsonKey(name: "product_name") final String? productName,
    @JsonKey(name: "order_item_qty") final int? orderItemQty,
    @JsonKey(name: "order_item_total", fromJson: parseDouble)
    final double? orderItemTotal,
    @JsonKey(name: "order_item_net_amt", fromJson: parseDouble)
    final double? orderItemNetAmt,
    @JsonKey(name: "rowcount") final int? rowcount,
  }) = _$SaleOnDealsImpl;

  factory _SaleOnDeals.fromJson(Map<String, dynamic> json) =
      _$SaleOnDealsImpl.fromJson;

  @override
  @JsonKey(name: "prod_order_id")
  int? get prodOrderId;
  @override
  @JsonKey(name: "product_id")
  int? get productId;
  @override
  @JsonKey(name: "offer_price", fromJson: parseDouble)
  double? get offerPrice;
  @override
  @JsonKey(name: "order_date")
  String? get orderDate;
  @override
  @JsonKey(name: "store_name")
  String? get storeName;
  @override
  @JsonKey(name: "product_name")
  String? get productName;
  @override
  @JsonKey(name: "order_item_qty")
  int? get orderItemQty;
  @override
  @JsonKey(name: "order_item_total", fromJson: parseDouble)
  double? get orderItemTotal;
  @override
  @JsonKey(name: "order_item_net_amt", fromJson: parseDouble)
  double? get orderItemNetAmt;
  @override
  @JsonKey(name: "rowcount")
  int? get rowcount;

  /// Create a copy of SaleOnDeals
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaleOnDealsImplCopyWith<_$SaleOnDealsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
