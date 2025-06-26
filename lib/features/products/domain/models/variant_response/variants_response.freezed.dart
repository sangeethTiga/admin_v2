// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variants_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

VariantsResponse _$VariantsResponseFromJson(Map<String, dynamic> json) {
  return _VariantsResponse.fromJson(json);
}

/// @nodoc
mixin _$VariantsResponse {
  @JsonKey(name: "prod_var_id")
  int? get prodVarId => throw _privateConstructorUsedError;
  @JsonKey(name: "store_id")
  int? get storeId => throw _privateConstructorUsedError;
  @JsonKey(name: "product_id")
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_var_code")
  String? get prodVarCode => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_var_name")
  String? get prodVarName => throw _privateConstructorUsedError;
  @JsonKey(name: "var_short_name")
  dynamic get varShortName => throw _privateConstructorUsedError;
  @JsonKey(name: "var_stock_qty")
  double? get varStockQty => throw _privateConstructorUsedError;
  @JsonKey(name: "var_price")
  double? get varPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "atr_value_id")
  String? get atrValueId => throw _privateConstructorUsedError;
  @JsonKey(name: "var_arabic_name")
  dynamic get varArabicName => throw _privateConstructorUsedError;
  @JsonKey(name: "is_taxable")
  int? get isTaxable => throw _privateConstructorUsedError;
  @JsonKey(name: "is_tax_inclusive")
  int? get isTaxInclusive => throw _privateConstructorUsedError;
  @JsonKey(name: "var_tax_amt")
  int? get varTaxAmt => throw _privateConstructorUsedError;
  @JsonKey(name: "var_tax_percentage")
  int? get varTaxPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: "var_purchase_limit")
  int? get varPurchaseLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "takeaway_addon_price")
  dynamic get takeawayAddonPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_addon_price")
  dynamic get deliveryAddonPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "web_product_price")
  dynamic get webProductPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "app_product_price")
  dynamic get appProductPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "pos_product_price")
  dynamic get posProductPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "retail_product_price")
  dynamic get retailProductPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "wholesale_product_price")
  dynamic get wholesaleProductPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  int? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "is_hidden")
  int? get isHidden => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "var_purchase_price")
  double? get varPurchasePrice => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity_per_unit")
  dynamic get quantityPerUnit => throw _privateConstructorUsedError;
  @JsonKey(name: "stock_quantity")
  double? get stockQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "product_item_condition_id")
  int? get productItemConditionId => throw _privateConstructorUsedError;

  /// Serializes this VariantsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VariantsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VariantsResponseCopyWith<VariantsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantsResponseCopyWith<$Res> {
  factory $VariantsResponseCopyWith(
    VariantsResponse value,
    $Res Function(VariantsResponse) then,
  ) = _$VariantsResponseCopyWithImpl<$Res, VariantsResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "prod_var_id") int? prodVarId,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "product_id") int? productId,
    @JsonKey(name: "prod_var_code") String? prodVarCode,
    @JsonKey(name: "prod_var_name") String? prodVarName,
    @JsonKey(name: "var_short_name") dynamic varShortName,
    @JsonKey(name: "var_stock_qty") double? varStockQty,
    @JsonKey(name: "var_price") double? varPrice,
    @JsonKey(name: "atr_value_id") String? atrValueId,
    @JsonKey(name: "var_arabic_name") dynamic varArabicName,
    @JsonKey(name: "is_taxable") int? isTaxable,
    @JsonKey(name: "is_tax_inclusive") int? isTaxInclusive,
    @JsonKey(name: "var_tax_amt") int? varTaxAmt,
    @JsonKey(name: "var_tax_percentage") int? varTaxPercentage,
    @JsonKey(name: "var_purchase_limit") int? varPurchaseLimit,
    @JsonKey(name: "takeaway_addon_price") dynamic takeawayAddonPrice,
    @JsonKey(name: "delivery_addon_price") dynamic deliveryAddonPrice,
    @JsonKey(name: "web_product_price") dynamic webProductPrice,
    @JsonKey(name: "app_product_price") dynamic appProductPrice,
    @JsonKey(name: "pos_product_price") dynamic posProductPrice,
    @JsonKey(name: "retail_product_price") dynamic retailProductPrice,
    @JsonKey(name: "wholesale_product_price") dynamic wholesaleProductPrice,
    @JsonKey(name: "is_active") int? isActive,
    @JsonKey(name: "is_hidden") int? isHidden,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "var_purchase_price") double? varPurchasePrice,
    @JsonKey(name: "quantity_per_unit") dynamic quantityPerUnit,
    @JsonKey(name: "stock_quantity") double? stockQuantity,
    @JsonKey(name: "product_item_condition_id") int? productItemConditionId,
  });
}

/// @nodoc
class _$VariantsResponseCopyWithImpl<$Res, $Val extends VariantsResponse>
    implements $VariantsResponseCopyWith<$Res> {
  _$VariantsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VariantsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodVarId = freezed,
    Object? storeId = freezed,
    Object? productId = freezed,
    Object? prodVarCode = freezed,
    Object? prodVarName = freezed,
    Object? varShortName = freezed,
    Object? varStockQty = freezed,
    Object? varPrice = freezed,
    Object? atrValueId = freezed,
    Object? varArabicName = freezed,
    Object? isTaxable = freezed,
    Object? isTaxInclusive = freezed,
    Object? varTaxAmt = freezed,
    Object? varTaxPercentage = freezed,
    Object? varPurchaseLimit = freezed,
    Object? takeawayAddonPrice = freezed,
    Object? deliveryAddonPrice = freezed,
    Object? webProductPrice = freezed,
    Object? appProductPrice = freezed,
    Object? posProductPrice = freezed,
    Object? retailProductPrice = freezed,
    Object? wholesaleProductPrice = freezed,
    Object? isActive = freezed,
    Object? isHidden = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? varPurchasePrice = freezed,
    Object? quantityPerUnit = freezed,
    Object? stockQuantity = freezed,
    Object? productItemConditionId = freezed,
  }) {
    return _then(
      _value.copyWith(
            prodVarId: freezed == prodVarId
                ? _value.prodVarId
                : prodVarId // ignore: cast_nullable_to_non_nullable
                      as int?,
            storeId: freezed == storeId
                ? _value.storeId
                : storeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            productId: freezed == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as int?,
            prodVarCode: freezed == prodVarCode
                ? _value.prodVarCode
                : prodVarCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            prodVarName: freezed == prodVarName
                ? _value.prodVarName
                : prodVarName // ignore: cast_nullable_to_non_nullable
                      as String?,
            varShortName: freezed == varShortName
                ? _value.varShortName
                : varShortName // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            varStockQty: freezed == varStockQty
                ? _value.varStockQty
                : varStockQty // ignore: cast_nullable_to_non_nullable
                      as double?,
            varPrice: freezed == varPrice
                ? _value.varPrice
                : varPrice // ignore: cast_nullable_to_non_nullable
                      as double?,
            atrValueId: freezed == atrValueId
                ? _value.atrValueId
                : atrValueId // ignore: cast_nullable_to_non_nullable
                      as String?,
            varArabicName: freezed == varArabicName
                ? _value.varArabicName
                : varArabicName // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            isTaxable: freezed == isTaxable
                ? _value.isTaxable
                : isTaxable // ignore: cast_nullable_to_non_nullable
                      as int?,
            isTaxInclusive: freezed == isTaxInclusive
                ? _value.isTaxInclusive
                : isTaxInclusive // ignore: cast_nullable_to_non_nullable
                      as int?,
            varTaxAmt: freezed == varTaxAmt
                ? _value.varTaxAmt
                : varTaxAmt // ignore: cast_nullable_to_non_nullable
                      as int?,
            varTaxPercentage: freezed == varTaxPercentage
                ? _value.varTaxPercentage
                : varTaxPercentage // ignore: cast_nullable_to_non_nullable
                      as int?,
            varPurchaseLimit: freezed == varPurchaseLimit
                ? _value.varPurchaseLimit
                : varPurchaseLimit // ignore: cast_nullable_to_non_nullable
                      as int?,
            takeawayAddonPrice: freezed == takeawayAddonPrice
                ? _value.takeawayAddonPrice
                : takeawayAddonPrice // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            deliveryAddonPrice: freezed == deliveryAddonPrice
                ? _value.deliveryAddonPrice
                : deliveryAddonPrice // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            webProductPrice: freezed == webProductPrice
                ? _value.webProductPrice
                : webProductPrice // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            appProductPrice: freezed == appProductPrice
                ? _value.appProductPrice
                : appProductPrice // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            posProductPrice: freezed == posProductPrice
                ? _value.posProductPrice
                : posProductPrice // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            retailProductPrice: freezed == retailProductPrice
                ? _value.retailProductPrice
                : retailProductPrice // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            wholesaleProductPrice: freezed == wholesaleProductPrice
                ? _value.wholesaleProductPrice
                : wholesaleProductPrice // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            isActive: freezed == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as int?,
            isHidden: freezed == isHidden
                ? _value.isHidden
                : isHidden // ignore: cast_nullable_to_non_nullable
                      as int?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            varPurchasePrice: freezed == varPurchasePrice
                ? _value.varPurchasePrice
                : varPurchasePrice // ignore: cast_nullable_to_non_nullable
                      as double?,
            quantityPerUnit: freezed == quantityPerUnit
                ? _value.quantityPerUnit
                : quantityPerUnit // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            stockQuantity: freezed == stockQuantity
                ? _value.stockQuantity
                : stockQuantity // ignore: cast_nullable_to_non_nullable
                      as double?,
            productItemConditionId: freezed == productItemConditionId
                ? _value.productItemConditionId
                : productItemConditionId // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VariantsResponseImplCopyWith<$Res>
    implements $VariantsResponseCopyWith<$Res> {
  factory _$$VariantsResponseImplCopyWith(
    _$VariantsResponseImpl value,
    $Res Function(_$VariantsResponseImpl) then,
  ) = __$$VariantsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "prod_var_id") int? prodVarId,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "product_id") int? productId,
    @JsonKey(name: "prod_var_code") String? prodVarCode,
    @JsonKey(name: "prod_var_name") String? prodVarName,
    @JsonKey(name: "var_short_name") dynamic varShortName,
    @JsonKey(name: "var_stock_qty") double? varStockQty,
    @JsonKey(name: "var_price") double? varPrice,
    @JsonKey(name: "atr_value_id") String? atrValueId,
    @JsonKey(name: "var_arabic_name") dynamic varArabicName,
    @JsonKey(name: "is_taxable") int? isTaxable,
    @JsonKey(name: "is_tax_inclusive") int? isTaxInclusive,
    @JsonKey(name: "var_tax_amt") int? varTaxAmt,
    @JsonKey(name: "var_tax_percentage") int? varTaxPercentage,
    @JsonKey(name: "var_purchase_limit") int? varPurchaseLimit,
    @JsonKey(name: "takeaway_addon_price") dynamic takeawayAddonPrice,
    @JsonKey(name: "delivery_addon_price") dynamic deliveryAddonPrice,
    @JsonKey(name: "web_product_price") dynamic webProductPrice,
    @JsonKey(name: "app_product_price") dynamic appProductPrice,
    @JsonKey(name: "pos_product_price") dynamic posProductPrice,
    @JsonKey(name: "retail_product_price") dynamic retailProductPrice,
    @JsonKey(name: "wholesale_product_price") dynamic wholesaleProductPrice,
    @JsonKey(name: "is_active") int? isActive,
    @JsonKey(name: "is_hidden") int? isHidden,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "var_purchase_price") double? varPurchasePrice,
    @JsonKey(name: "quantity_per_unit") dynamic quantityPerUnit,
    @JsonKey(name: "stock_quantity") double? stockQuantity,
    @JsonKey(name: "product_item_condition_id") int? productItemConditionId,
  });
}

/// @nodoc
class __$$VariantsResponseImplCopyWithImpl<$Res>
    extends _$VariantsResponseCopyWithImpl<$Res, _$VariantsResponseImpl>
    implements _$$VariantsResponseImplCopyWith<$Res> {
  __$$VariantsResponseImplCopyWithImpl(
    _$VariantsResponseImpl _value,
    $Res Function(_$VariantsResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VariantsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodVarId = freezed,
    Object? storeId = freezed,
    Object? productId = freezed,
    Object? prodVarCode = freezed,
    Object? prodVarName = freezed,
    Object? varShortName = freezed,
    Object? varStockQty = freezed,
    Object? varPrice = freezed,
    Object? atrValueId = freezed,
    Object? varArabicName = freezed,
    Object? isTaxable = freezed,
    Object? isTaxInclusive = freezed,
    Object? varTaxAmt = freezed,
    Object? varTaxPercentage = freezed,
    Object? varPurchaseLimit = freezed,
    Object? takeawayAddonPrice = freezed,
    Object? deliveryAddonPrice = freezed,
    Object? webProductPrice = freezed,
    Object? appProductPrice = freezed,
    Object? posProductPrice = freezed,
    Object? retailProductPrice = freezed,
    Object? wholesaleProductPrice = freezed,
    Object? isActive = freezed,
    Object? isHidden = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? varPurchasePrice = freezed,
    Object? quantityPerUnit = freezed,
    Object? stockQuantity = freezed,
    Object? productItemConditionId = freezed,
  }) {
    return _then(
      _$VariantsResponseImpl(
        prodVarId: freezed == prodVarId
            ? _value.prodVarId
            : prodVarId // ignore: cast_nullable_to_non_nullable
                  as int?,
        storeId: freezed == storeId
            ? _value.storeId
            : storeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        productId: freezed == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as int?,
        prodVarCode: freezed == prodVarCode
            ? _value.prodVarCode
            : prodVarCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        prodVarName: freezed == prodVarName
            ? _value.prodVarName
            : prodVarName // ignore: cast_nullable_to_non_nullable
                  as String?,
        varShortName: freezed == varShortName
            ? _value.varShortName
            : varShortName // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        varStockQty: freezed == varStockQty
            ? _value.varStockQty
            : varStockQty // ignore: cast_nullable_to_non_nullable
                  as double?,
        varPrice: freezed == varPrice
            ? _value.varPrice
            : varPrice // ignore: cast_nullable_to_non_nullable
                  as double?,
        atrValueId: freezed == atrValueId
            ? _value.atrValueId
            : atrValueId // ignore: cast_nullable_to_non_nullable
                  as String?,
        varArabicName: freezed == varArabicName
            ? _value.varArabicName
            : varArabicName // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        isTaxable: freezed == isTaxable
            ? _value.isTaxable
            : isTaxable // ignore: cast_nullable_to_non_nullable
                  as int?,
        isTaxInclusive: freezed == isTaxInclusive
            ? _value.isTaxInclusive
            : isTaxInclusive // ignore: cast_nullable_to_non_nullable
                  as int?,
        varTaxAmt: freezed == varTaxAmt
            ? _value.varTaxAmt
            : varTaxAmt // ignore: cast_nullable_to_non_nullable
                  as int?,
        varTaxPercentage: freezed == varTaxPercentage
            ? _value.varTaxPercentage
            : varTaxPercentage // ignore: cast_nullable_to_non_nullable
                  as int?,
        varPurchaseLimit: freezed == varPurchaseLimit
            ? _value.varPurchaseLimit
            : varPurchaseLimit // ignore: cast_nullable_to_non_nullable
                  as int?,
        takeawayAddonPrice: freezed == takeawayAddonPrice
            ? _value.takeawayAddonPrice
            : takeawayAddonPrice // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        deliveryAddonPrice: freezed == deliveryAddonPrice
            ? _value.deliveryAddonPrice
            : deliveryAddonPrice // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        webProductPrice: freezed == webProductPrice
            ? _value.webProductPrice
            : webProductPrice // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        appProductPrice: freezed == appProductPrice
            ? _value.appProductPrice
            : appProductPrice // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        posProductPrice: freezed == posProductPrice
            ? _value.posProductPrice
            : posProductPrice // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        retailProductPrice: freezed == retailProductPrice
            ? _value.retailProductPrice
            : retailProductPrice // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        wholesaleProductPrice: freezed == wholesaleProductPrice
            ? _value.wholesaleProductPrice
            : wholesaleProductPrice // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        isActive: freezed == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as int?,
        isHidden: freezed == isHidden
            ? _value.isHidden
            : isHidden // ignore: cast_nullable_to_non_nullable
                  as int?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        varPurchasePrice: freezed == varPurchasePrice
            ? _value.varPurchasePrice
            : varPurchasePrice // ignore: cast_nullable_to_non_nullable
                  as double?,
        quantityPerUnit: freezed == quantityPerUnit
            ? _value.quantityPerUnit
            : quantityPerUnit // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        stockQuantity: freezed == stockQuantity
            ? _value.stockQuantity
            : stockQuantity // ignore: cast_nullable_to_non_nullable
                  as double?,
        productItemConditionId: freezed == productItemConditionId
            ? _value.productItemConditionId
            : productItemConditionId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VariantsResponseImpl implements _VariantsResponse {
  const _$VariantsResponseImpl({
    @JsonKey(name: "prod_var_id") this.prodVarId,
    @JsonKey(name: "store_id") this.storeId,
    @JsonKey(name: "product_id") this.productId,
    @JsonKey(name: "prod_var_code") this.prodVarCode,
    @JsonKey(name: "prod_var_name") this.prodVarName,
    @JsonKey(name: "var_short_name") this.varShortName,
    @JsonKey(name: "var_stock_qty") this.varStockQty,
    @JsonKey(name: "var_price") this.varPrice,
    @JsonKey(name: "atr_value_id") this.atrValueId,
    @JsonKey(name: "var_arabic_name") this.varArabicName,
    @JsonKey(name: "is_taxable") this.isTaxable,
    @JsonKey(name: "is_tax_inclusive") this.isTaxInclusive,
    @JsonKey(name: "var_tax_amt") this.varTaxAmt,
    @JsonKey(name: "var_tax_percentage") this.varTaxPercentage,
    @JsonKey(name: "var_purchase_limit") this.varPurchaseLimit,
    @JsonKey(name: "takeaway_addon_price") this.takeawayAddonPrice,
    @JsonKey(name: "delivery_addon_price") this.deliveryAddonPrice,
    @JsonKey(name: "web_product_price") this.webProductPrice,
    @JsonKey(name: "app_product_price") this.appProductPrice,
    @JsonKey(name: "pos_product_price") this.posProductPrice,
    @JsonKey(name: "retail_product_price") this.retailProductPrice,
    @JsonKey(name: "wholesale_product_price") this.wholesaleProductPrice,
    @JsonKey(name: "is_active") this.isActive,
    @JsonKey(name: "is_hidden") this.isHidden,
    @JsonKey(name: "created_at") this.createdAt,
    @JsonKey(name: "updated_at") this.updatedAt,
    @JsonKey(name: "var_purchase_price") this.varPurchasePrice,
    @JsonKey(name: "quantity_per_unit") this.quantityPerUnit,
    @JsonKey(name: "stock_quantity") this.stockQuantity,
    @JsonKey(name: "product_item_condition_id") this.productItemConditionId,
  });

  factory _$VariantsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VariantsResponseImplFromJson(json);

  @override
  @JsonKey(name: "prod_var_id")
  final int? prodVarId;
  @override
  @JsonKey(name: "store_id")
  final int? storeId;
  @override
  @JsonKey(name: "product_id")
  final int? productId;
  @override
  @JsonKey(name: "prod_var_code")
  final String? prodVarCode;
  @override
  @JsonKey(name: "prod_var_name")
  final String? prodVarName;
  @override
  @JsonKey(name: "var_short_name")
  final dynamic varShortName;
  @override
  @JsonKey(name: "var_stock_qty")
  final double? varStockQty;
  @override
  @JsonKey(name: "var_price")
  final double? varPrice;
  @override
  @JsonKey(name: "atr_value_id")
  final String? atrValueId;
  @override
  @JsonKey(name: "var_arabic_name")
  final dynamic varArabicName;
  @override
  @JsonKey(name: "is_taxable")
  final int? isTaxable;
  @override
  @JsonKey(name: "is_tax_inclusive")
  final int? isTaxInclusive;
  @override
  @JsonKey(name: "var_tax_amt")
  final int? varTaxAmt;
  @override
  @JsonKey(name: "var_tax_percentage")
  final int? varTaxPercentage;
  @override
  @JsonKey(name: "var_purchase_limit")
  final int? varPurchaseLimit;
  @override
  @JsonKey(name: "takeaway_addon_price")
  final dynamic takeawayAddonPrice;
  @override
  @JsonKey(name: "delivery_addon_price")
  final dynamic deliveryAddonPrice;
  @override
  @JsonKey(name: "web_product_price")
  final dynamic webProductPrice;
  @override
  @JsonKey(name: "app_product_price")
  final dynamic appProductPrice;
  @override
  @JsonKey(name: "pos_product_price")
  final dynamic posProductPrice;
  @override
  @JsonKey(name: "retail_product_price")
  final dynamic retailProductPrice;
  @override
  @JsonKey(name: "wholesale_product_price")
  final dynamic wholesaleProductPrice;
  @override
  @JsonKey(name: "is_active")
  final int? isActive;
  @override
  @JsonKey(name: "is_hidden")
  final int? isHidden;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "var_purchase_price")
  final double? varPurchasePrice;
  @override
  @JsonKey(name: "quantity_per_unit")
  final dynamic quantityPerUnit;
  @override
  @JsonKey(name: "stock_quantity")
  final double? stockQuantity;
  @override
  @JsonKey(name: "product_item_condition_id")
  final int? productItemConditionId;

  @override
  String toString() {
    return 'VariantsResponse(prodVarId: $prodVarId, storeId: $storeId, productId: $productId, prodVarCode: $prodVarCode, prodVarName: $prodVarName, varShortName: $varShortName, varStockQty: $varStockQty, varPrice: $varPrice, atrValueId: $atrValueId, varArabicName: $varArabicName, isTaxable: $isTaxable, isTaxInclusive: $isTaxInclusive, varTaxAmt: $varTaxAmt, varTaxPercentage: $varTaxPercentage, varPurchaseLimit: $varPurchaseLimit, takeawayAddonPrice: $takeawayAddonPrice, deliveryAddonPrice: $deliveryAddonPrice, webProductPrice: $webProductPrice, appProductPrice: $appProductPrice, posProductPrice: $posProductPrice, retailProductPrice: $retailProductPrice, wholesaleProductPrice: $wholesaleProductPrice, isActive: $isActive, isHidden: $isHidden, createdAt: $createdAt, updatedAt: $updatedAt, varPurchasePrice: $varPurchasePrice, quantityPerUnit: $quantityPerUnit, stockQuantity: $stockQuantity, productItemConditionId: $productItemConditionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariantsResponseImpl &&
            (identical(other.prodVarId, prodVarId) ||
                other.prodVarId == prodVarId) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.prodVarCode, prodVarCode) ||
                other.prodVarCode == prodVarCode) &&
            (identical(other.prodVarName, prodVarName) ||
                other.prodVarName == prodVarName) &&
            const DeepCollectionEquality().equals(
              other.varShortName,
              varShortName,
            ) &&
            (identical(other.varStockQty, varStockQty) ||
                other.varStockQty == varStockQty) &&
            (identical(other.varPrice, varPrice) ||
                other.varPrice == varPrice) &&
            (identical(other.atrValueId, atrValueId) ||
                other.atrValueId == atrValueId) &&
            const DeepCollectionEquality().equals(
              other.varArabicName,
              varArabicName,
            ) &&
            (identical(other.isTaxable, isTaxable) ||
                other.isTaxable == isTaxable) &&
            (identical(other.isTaxInclusive, isTaxInclusive) ||
                other.isTaxInclusive == isTaxInclusive) &&
            (identical(other.varTaxAmt, varTaxAmt) ||
                other.varTaxAmt == varTaxAmt) &&
            (identical(other.varTaxPercentage, varTaxPercentage) ||
                other.varTaxPercentage == varTaxPercentage) &&
            (identical(other.varPurchaseLimit, varPurchaseLimit) ||
                other.varPurchaseLimit == varPurchaseLimit) &&
            const DeepCollectionEquality().equals(
              other.takeawayAddonPrice,
              takeawayAddonPrice,
            ) &&
            const DeepCollectionEquality().equals(
              other.deliveryAddonPrice,
              deliveryAddonPrice,
            ) &&
            const DeepCollectionEquality().equals(
              other.webProductPrice,
              webProductPrice,
            ) &&
            const DeepCollectionEquality().equals(
              other.appProductPrice,
              appProductPrice,
            ) &&
            const DeepCollectionEquality().equals(
              other.posProductPrice,
              posProductPrice,
            ) &&
            const DeepCollectionEquality().equals(
              other.retailProductPrice,
              retailProductPrice,
            ) &&
            const DeepCollectionEquality().equals(
              other.wholesaleProductPrice,
              wholesaleProductPrice,
            ) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.varPurchasePrice, varPurchasePrice) ||
                other.varPurchasePrice == varPurchasePrice) &&
            const DeepCollectionEquality().equals(
              other.quantityPerUnit,
              quantityPerUnit,
            ) &&
            (identical(other.stockQuantity, stockQuantity) ||
                other.stockQuantity == stockQuantity) &&
            (identical(other.productItemConditionId, productItemConditionId) ||
                other.productItemConditionId == productItemConditionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    prodVarId,
    storeId,
    productId,
    prodVarCode,
    prodVarName,
    const DeepCollectionEquality().hash(varShortName),
    varStockQty,
    varPrice,
    atrValueId,
    const DeepCollectionEquality().hash(varArabicName),
    isTaxable,
    isTaxInclusive,
    varTaxAmt,
    varTaxPercentage,
    varPurchaseLimit,
    const DeepCollectionEquality().hash(takeawayAddonPrice),
    const DeepCollectionEquality().hash(deliveryAddonPrice),
    const DeepCollectionEquality().hash(webProductPrice),
    const DeepCollectionEquality().hash(appProductPrice),
    const DeepCollectionEquality().hash(posProductPrice),
    const DeepCollectionEquality().hash(retailProductPrice),
    const DeepCollectionEquality().hash(wholesaleProductPrice),
    isActive,
    isHidden,
    createdAt,
    updatedAt,
    varPurchasePrice,
    const DeepCollectionEquality().hash(quantityPerUnit),
    stockQuantity,
    productItemConditionId,
  ]);

  /// Create a copy of VariantsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VariantsResponseImplCopyWith<_$VariantsResponseImpl> get copyWith =>
      __$$VariantsResponseImplCopyWithImpl<_$VariantsResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$VariantsResponseImplToJson(this);
  }
}

abstract class _VariantsResponse implements VariantsResponse {
  const factory _VariantsResponse({
    @JsonKey(name: "prod_var_id") final int? prodVarId,
    @JsonKey(name: "store_id") final int? storeId,
    @JsonKey(name: "product_id") final int? productId,
    @JsonKey(name: "prod_var_code") final String? prodVarCode,
    @JsonKey(name: "prod_var_name") final String? prodVarName,
    @JsonKey(name: "var_short_name") final dynamic varShortName,
    @JsonKey(name: "var_stock_qty") final double? varStockQty,
    @JsonKey(name: "var_price") final double? varPrice,
    @JsonKey(name: "atr_value_id") final String? atrValueId,
    @JsonKey(name: "var_arabic_name") final dynamic varArabicName,
    @JsonKey(name: "is_taxable") final int? isTaxable,
    @JsonKey(name: "is_tax_inclusive") final int? isTaxInclusive,
    @JsonKey(name: "var_tax_amt") final int? varTaxAmt,
    @JsonKey(name: "var_tax_percentage") final int? varTaxPercentage,
    @JsonKey(name: "var_purchase_limit") final int? varPurchaseLimit,
    @JsonKey(name: "takeaway_addon_price") final dynamic takeawayAddonPrice,
    @JsonKey(name: "delivery_addon_price") final dynamic deliveryAddonPrice,
    @JsonKey(name: "web_product_price") final dynamic webProductPrice,
    @JsonKey(name: "app_product_price") final dynamic appProductPrice,
    @JsonKey(name: "pos_product_price") final dynamic posProductPrice,
    @JsonKey(name: "retail_product_price") final dynamic retailProductPrice,
    @JsonKey(name: "wholesale_product_price")
    final dynamic wholesaleProductPrice,
    @JsonKey(name: "is_active") final int? isActive,
    @JsonKey(name: "is_hidden") final int? isHidden,
    @JsonKey(name: "created_at") final DateTime? createdAt,
    @JsonKey(name: "updated_at") final DateTime? updatedAt,
    @JsonKey(name: "var_purchase_price") final double? varPurchasePrice,
    @JsonKey(name: "quantity_per_unit") final dynamic quantityPerUnit,
    @JsonKey(name: "stock_quantity") final double? stockQuantity,
    @JsonKey(name: "product_item_condition_id")
    final int? productItemConditionId,
  }) = _$VariantsResponseImpl;

  factory _VariantsResponse.fromJson(Map<String, dynamic> json) =
      _$VariantsResponseImpl.fromJson;

  @override
  @JsonKey(name: "prod_var_id")
  int? get prodVarId;
  @override
  @JsonKey(name: "store_id")
  int? get storeId;
  @override
  @JsonKey(name: "product_id")
  int? get productId;
  @override
  @JsonKey(name: "prod_var_code")
  String? get prodVarCode;
  @override
  @JsonKey(name: "prod_var_name")
  String? get prodVarName;
  @override
  @JsonKey(name: "var_short_name")
  dynamic get varShortName;
  @override
  @JsonKey(name: "var_stock_qty")
  double? get varStockQty;
  @override
  @JsonKey(name: "var_price")
  double? get varPrice;
  @override
  @JsonKey(name: "atr_value_id")
  String? get atrValueId;
  @override
  @JsonKey(name: "var_arabic_name")
  dynamic get varArabicName;
  @override
  @JsonKey(name: "is_taxable")
  int? get isTaxable;
  @override
  @JsonKey(name: "is_tax_inclusive")
  int? get isTaxInclusive;
  @override
  @JsonKey(name: "var_tax_amt")
  int? get varTaxAmt;
  @override
  @JsonKey(name: "var_tax_percentage")
  int? get varTaxPercentage;
  @override
  @JsonKey(name: "var_purchase_limit")
  int? get varPurchaseLimit;
  @override
  @JsonKey(name: "takeaway_addon_price")
  dynamic get takeawayAddonPrice;
  @override
  @JsonKey(name: "delivery_addon_price")
  dynamic get deliveryAddonPrice;
  @override
  @JsonKey(name: "web_product_price")
  dynamic get webProductPrice;
  @override
  @JsonKey(name: "app_product_price")
  dynamic get appProductPrice;
  @override
  @JsonKey(name: "pos_product_price")
  dynamic get posProductPrice;
  @override
  @JsonKey(name: "retail_product_price")
  dynamic get retailProductPrice;
  @override
  @JsonKey(name: "wholesale_product_price")
  dynamic get wholesaleProductPrice;
  @override
  @JsonKey(name: "is_active")
  int? get isActive;
  @override
  @JsonKey(name: "is_hidden")
  int? get isHidden;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "var_purchase_price")
  double? get varPurchasePrice;
  @override
  @JsonKey(name: "quantity_per_unit")
  dynamic get quantityPerUnit;
  @override
  @JsonKey(name: "stock_quantity")
  double? get stockQuantity;
  @override
  @JsonKey(name: "product_item_condition_id")
  int? get productItemConditionId;

  /// Create a copy of VariantsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VariantsResponseImplCopyWith<_$VariantsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
