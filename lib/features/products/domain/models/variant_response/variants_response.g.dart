// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variants_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VariantsResponseImpl _$$VariantsResponseImplFromJson(
  Map<String, dynamic> json,
) => _$VariantsResponseImpl(
  prodVarId: (json['prod_var_id'] as num?)?.toInt(),
  storeId: (json['store_id'] as num?)?.toInt(),
  productId: (json['product_id'] as num?)?.toInt(),
  prodVarCode: json['prod_var_code'] as String?,
  prodVarName: json['prod_var_name'] as String?,
  varShortName: json['var_short_name'],
  varStockQty: (json['var_stock_qty'] as num?)?.toDouble(),
  varPrice: (json['var_price'] as num?)?.toDouble(),
  atrValueId: json['atr_value_id'] as String?,
  varArabicName: json['var_arabic_name'],
  isTaxable: (json['is_taxable'] as num?)?.toInt(),
  isTaxInclusive: (json['is_tax_inclusive'] as num?)?.toInt(),
  varTaxAmt: (json['var_tax_amt'] as num?)?.toInt(),
  varTaxPercentage: (json['var_tax_percentage'] as num?)?.toInt(),
  varPurchaseLimit: (json['var_purchase_limit'] as num?)?.toInt(),
  takeawayAddonPrice: json['takeaway_addon_price'],
  deliveryAddonPrice: json['delivery_addon_price'],
  webProductPrice: json['web_product_price'],
  appProductPrice: json['app_product_price'],
  posProductPrice: json['pos_product_price'],
  retailProductPrice: json['retail_product_price'],
  wholesaleProductPrice: json['wholesale_product_price'],
  isActive: (json['is_active'] as num?)?.toInt(),
  isHidden: (json['is_hidden'] as num?)?.toInt(),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  varPurchasePrice: (json['var_purchase_price'] as num?)?.toDouble(),
  quantityPerUnit: json['quantity_per_unit'],
  stockQuantity: (json['stock_quantity'] as num?)?.toDouble(),
  productItemConditionId: (json['product_item_condition_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$$VariantsResponseImplToJson(
  _$VariantsResponseImpl instance,
) => <String, dynamic>{
  'prod_var_id': instance.prodVarId,
  'store_id': instance.storeId,
  'product_id': instance.productId,
  'prod_var_code': instance.prodVarCode,
  'prod_var_name': instance.prodVarName,
  'var_short_name': instance.varShortName,
  'var_stock_qty': instance.varStockQty,
  'var_price': instance.varPrice,
  'atr_value_id': instance.atrValueId,
  'var_arabic_name': instance.varArabicName,
  'is_taxable': instance.isTaxable,
  'is_tax_inclusive': instance.isTaxInclusive,
  'var_tax_amt': instance.varTaxAmt,
  'var_tax_percentage': instance.varTaxPercentage,
  'var_purchase_limit': instance.varPurchaseLimit,
  'takeaway_addon_price': instance.takeawayAddonPrice,
  'delivery_addon_price': instance.deliveryAddonPrice,
  'web_product_price': instance.webProductPrice,
  'app_product_price': instance.appProductPrice,
  'pos_product_price': instance.posProductPrice,
  'retail_product_price': instance.retailProductPrice,
  'wholesale_product_price': instance.wholesaleProductPrice,
  'is_active': instance.isActive,
  'is_hidden': instance.isHidden,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'var_purchase_price': instance.varPurchasePrice,
  'quantity_per_unit': instance.quantityPerUnit,
  'stock_quantity': instance.stockQuantity,
  'product_item_condition_id': instance.productItemConditionId,
};
