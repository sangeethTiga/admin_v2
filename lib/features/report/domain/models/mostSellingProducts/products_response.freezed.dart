// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductsResponse _$ProductsResponseFromJson(Map<String, dynamic> json) {
  return _ProductsResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductsResponse {
  @JsonKey(name: "product_id")
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "product_name")
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: "totalorderqty")
  String? get totalorderqty => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  String? get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "store_name")
  String? get storeName => throw _privateConstructorUsedError;
  @JsonKey(name: "selling_price")
  String? get sellingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "cost_price")
  String? get costPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "total_cost_price")
  String? get totalCostPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "rowcount")
  int? get rowcount => throw _privateConstructorUsedError;
  @JsonKey(name: "profit")
  String? get profit => throw _privateConstructorUsedError;
  @JsonKey(name: "profit_percentage")
  String? get profitPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: "grand_total")
  String? get grandTotal => throw _privateConstructorUsedError;

  /// Serializes this ProductsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsResponseCopyWith<ProductsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsResponseCopyWith<$Res> {
  factory $ProductsResponseCopyWith(
    ProductsResponse value,
    $Res Function(ProductsResponse) then,
  ) = _$ProductsResponseCopyWithImpl<$Res, ProductsResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "product_id") int? productId,
    @JsonKey(name: "product_name") String? productName,
    @JsonKey(name: "totalorderqty") String? totalorderqty,
    @JsonKey(name: "total_amount") String? totalAmount,
    @JsonKey(name: "store_name") String? storeName,
    @JsonKey(name: "selling_price") String? sellingPrice,
    @JsonKey(name: "cost_price") String? costPrice,
    @JsonKey(name: "total_cost_price") String? totalCostPrice,
    @JsonKey(name: "rowcount") int? rowcount,
    @JsonKey(name: "profit") String? profit,
    @JsonKey(name: "profit_percentage") String? profitPercentage,
    @JsonKey(name: "grand_total") String? grandTotal,
  });
}

/// @nodoc
class _$ProductsResponseCopyWithImpl<$Res, $Val extends ProductsResponse>
    implements $ProductsResponseCopyWith<$Res> {
  _$ProductsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? productName = freezed,
    Object? totalorderqty = freezed,
    Object? totalAmount = freezed,
    Object? storeName = freezed,
    Object? sellingPrice = freezed,
    Object? costPrice = freezed,
    Object? totalCostPrice = freezed,
    Object? rowcount = freezed,
    Object? profit = freezed,
    Object? profitPercentage = freezed,
    Object? grandTotal = freezed,
  }) {
    return _then(
      _value.copyWith(
            productId: freezed == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as int?,
            productName: freezed == productName
                ? _value.productName
                : productName // ignore: cast_nullable_to_non_nullable
                      as String?,
            totalorderqty: freezed == totalorderqty
                ? _value.totalorderqty
                : totalorderqty // ignore: cast_nullable_to_non_nullable
                      as String?,
            totalAmount: freezed == totalAmount
                ? _value.totalAmount
                : totalAmount // ignore: cast_nullable_to_non_nullable
                      as String?,
            storeName: freezed == storeName
                ? _value.storeName
                : storeName // ignore: cast_nullable_to_non_nullable
                      as String?,
            sellingPrice: freezed == sellingPrice
                ? _value.sellingPrice
                : sellingPrice // ignore: cast_nullable_to_non_nullable
                      as String?,
            costPrice: freezed == costPrice
                ? _value.costPrice
                : costPrice // ignore: cast_nullable_to_non_nullable
                      as String?,
            totalCostPrice: freezed == totalCostPrice
                ? _value.totalCostPrice
                : totalCostPrice // ignore: cast_nullable_to_non_nullable
                      as String?,
            rowcount: freezed == rowcount
                ? _value.rowcount
                : rowcount // ignore: cast_nullable_to_non_nullable
                      as int?,
            profit: freezed == profit
                ? _value.profit
                : profit // ignore: cast_nullable_to_non_nullable
                      as String?,
            profitPercentage: freezed == profitPercentage
                ? _value.profitPercentage
                : profitPercentage // ignore: cast_nullable_to_non_nullable
                      as String?,
            grandTotal: freezed == grandTotal
                ? _value.grandTotal
                : grandTotal // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductsResponseImplCopyWith<$Res>
    implements $ProductsResponseCopyWith<$Res> {
  factory _$$ProductsResponseImplCopyWith(
    _$ProductsResponseImpl value,
    $Res Function(_$ProductsResponseImpl) then,
  ) = __$$ProductsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "product_id") int? productId,
    @JsonKey(name: "product_name") String? productName,
    @JsonKey(name: "totalorderqty") String? totalorderqty,
    @JsonKey(name: "total_amount") String? totalAmount,
    @JsonKey(name: "store_name") String? storeName,
    @JsonKey(name: "selling_price") String? sellingPrice,
    @JsonKey(name: "cost_price") String? costPrice,
    @JsonKey(name: "total_cost_price") String? totalCostPrice,
    @JsonKey(name: "rowcount") int? rowcount,
    @JsonKey(name: "profit") String? profit,
    @JsonKey(name: "profit_percentage") String? profitPercentage,
    @JsonKey(name: "grand_total") String? grandTotal,
  });
}

/// @nodoc
class __$$ProductsResponseImplCopyWithImpl<$Res>
    extends _$ProductsResponseCopyWithImpl<$Res, _$ProductsResponseImpl>
    implements _$$ProductsResponseImplCopyWith<$Res> {
  __$$ProductsResponseImplCopyWithImpl(
    _$ProductsResponseImpl _value,
    $Res Function(_$ProductsResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? productName = freezed,
    Object? totalorderqty = freezed,
    Object? totalAmount = freezed,
    Object? storeName = freezed,
    Object? sellingPrice = freezed,
    Object? costPrice = freezed,
    Object? totalCostPrice = freezed,
    Object? rowcount = freezed,
    Object? profit = freezed,
    Object? profitPercentage = freezed,
    Object? grandTotal = freezed,
  }) {
    return _then(
      _$ProductsResponseImpl(
        productId: freezed == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as int?,
        productName: freezed == productName
            ? _value.productName
            : productName // ignore: cast_nullable_to_non_nullable
                  as String?,
        totalorderqty: freezed == totalorderqty
            ? _value.totalorderqty
            : totalorderqty // ignore: cast_nullable_to_non_nullable
                  as String?,
        totalAmount: freezed == totalAmount
            ? _value.totalAmount
            : totalAmount // ignore: cast_nullable_to_non_nullable
                  as String?,
        storeName: freezed == storeName
            ? _value.storeName
            : storeName // ignore: cast_nullable_to_non_nullable
                  as String?,
        sellingPrice: freezed == sellingPrice
            ? _value.sellingPrice
            : sellingPrice // ignore: cast_nullable_to_non_nullable
                  as String?,
        costPrice: freezed == costPrice
            ? _value.costPrice
            : costPrice // ignore: cast_nullable_to_non_nullable
                  as String?,
        totalCostPrice: freezed == totalCostPrice
            ? _value.totalCostPrice
            : totalCostPrice // ignore: cast_nullable_to_non_nullable
                  as String?,
        rowcount: freezed == rowcount
            ? _value.rowcount
            : rowcount // ignore: cast_nullable_to_non_nullable
                  as int?,
        profit: freezed == profit
            ? _value.profit
            : profit // ignore: cast_nullable_to_non_nullable
                  as String?,
        profitPercentage: freezed == profitPercentage
            ? _value.profitPercentage
            : profitPercentage // ignore: cast_nullable_to_non_nullable
                  as String?,
        grandTotal: freezed == grandTotal
            ? _value.grandTotal
            : grandTotal // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsResponseImpl implements _ProductsResponse {
  const _$ProductsResponseImpl({
    @JsonKey(name: "product_id") this.productId,
    @JsonKey(name: "product_name") this.productName,
    @JsonKey(name: "totalorderqty") this.totalorderqty,
    @JsonKey(name: "total_amount") this.totalAmount,
    @JsonKey(name: "store_name") this.storeName,
    @JsonKey(name: "selling_price") this.sellingPrice,
    @JsonKey(name: "cost_price") this.costPrice,
    @JsonKey(name: "total_cost_price") this.totalCostPrice,
    @JsonKey(name: "rowcount") this.rowcount,
    @JsonKey(name: "profit") this.profit,
    @JsonKey(name: "profit_percentage") this.profitPercentage,
    @JsonKey(name: "grand_total") this.grandTotal,
  });

  factory _$ProductsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsResponseImplFromJson(json);

  @override
  @JsonKey(name: "product_id")
  final int? productId;
  @override
  @JsonKey(name: "product_name")
  final String? productName;
  @override
  @JsonKey(name: "totalorderqty")
  final String? totalorderqty;
  @override
  @JsonKey(name: "total_amount")
  final String? totalAmount;
  @override
  @JsonKey(name: "store_name")
  final String? storeName;
  @override
  @JsonKey(name: "selling_price")
  final String? sellingPrice;
  @override
  @JsonKey(name: "cost_price")
  final String? costPrice;
  @override
  @JsonKey(name: "total_cost_price")
  final String? totalCostPrice;
  @override
  @JsonKey(name: "rowcount")
  final int? rowcount;
  @override
  @JsonKey(name: "profit")
  final String? profit;
  @override
  @JsonKey(name: "profit_percentage")
  final String? profitPercentage;
  @override
  @JsonKey(name: "grand_total")
  final String? grandTotal;

  @override
  String toString() {
    return 'ProductsResponse(productId: $productId, productName: $productName, totalorderqty: $totalorderqty, totalAmount: $totalAmount, storeName: $storeName, sellingPrice: $sellingPrice, costPrice: $costPrice, totalCostPrice: $totalCostPrice, rowcount: $rowcount, profit: $profit, profitPercentage: $profitPercentage, grandTotal: $grandTotal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsResponseImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.totalorderqty, totalorderqty) ||
                other.totalorderqty == totalorderqty) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.storeName, storeName) ||
                other.storeName == storeName) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.costPrice, costPrice) ||
                other.costPrice == costPrice) &&
            (identical(other.totalCostPrice, totalCostPrice) ||
                other.totalCostPrice == totalCostPrice) &&
            (identical(other.rowcount, rowcount) ||
                other.rowcount == rowcount) &&
            (identical(other.profit, profit) || other.profit == profit) &&
            (identical(other.profitPercentage, profitPercentage) ||
                other.profitPercentage == profitPercentage) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    productId,
    productName,
    totalorderqty,
    totalAmount,
    storeName,
    sellingPrice,
    costPrice,
    totalCostPrice,
    rowcount,
    profit,
    profitPercentage,
    grandTotal,
  );

  /// Create a copy of ProductsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsResponseImplCopyWith<_$ProductsResponseImpl> get copyWith =>
      __$$ProductsResponseImplCopyWithImpl<_$ProductsResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsResponseImplToJson(this);
  }
}

abstract class _ProductsResponse implements ProductsResponse {
  const factory _ProductsResponse({
    @JsonKey(name: "product_id") final int? productId,
    @JsonKey(name: "product_name") final String? productName,
    @JsonKey(name: "totalorderqty") final String? totalorderqty,
    @JsonKey(name: "total_amount") final String? totalAmount,
    @JsonKey(name: "store_name") final String? storeName,
    @JsonKey(name: "selling_price") final String? sellingPrice,
    @JsonKey(name: "cost_price") final String? costPrice,
    @JsonKey(name: "total_cost_price") final String? totalCostPrice,
    @JsonKey(name: "rowcount") final int? rowcount,
    @JsonKey(name: "profit") final String? profit,
    @JsonKey(name: "profit_percentage") final String? profitPercentage,
    @JsonKey(name: "grand_total") final String? grandTotal,
  }) = _$ProductsResponseImpl;

  factory _ProductsResponse.fromJson(Map<String, dynamic> json) =
      _$ProductsResponseImpl.fromJson;

  @override
  @JsonKey(name: "product_id")
  int? get productId;
  @override
  @JsonKey(name: "product_name")
  String? get productName;
  @override
  @JsonKey(name: "totalorderqty")
  String? get totalorderqty;
  @override
  @JsonKey(name: "total_amount")
  String? get totalAmount;
  @override
  @JsonKey(name: "store_name")
  String? get storeName;
  @override
  @JsonKey(name: "selling_price")
  String? get sellingPrice;
  @override
  @JsonKey(name: "cost_price")
  String? get costPrice;
  @override
  @JsonKey(name: "total_cost_price")
  String? get totalCostPrice;
  @override
  @JsonKey(name: "rowcount")
  int? get rowcount;
  @override
  @JsonKey(name: "profit")
  String? get profit;
  @override
  @JsonKey(name: "profit_percentage")
  String? get profitPercentage;
  @override
  @JsonKey(name: "grand_total")
  String? get grandTotal;

  /// Create a copy of ProductsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsResponseImplCopyWith<_$ProductsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
