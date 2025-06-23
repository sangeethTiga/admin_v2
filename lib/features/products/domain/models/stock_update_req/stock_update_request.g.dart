// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockUpdateRequestImpl _$$StockUpdateRequestImplFromJson(
  Map<String, dynamic> json,
) => _$StockUpdateRequestImpl(
  productId: (json['product_id'] as num?)?.toInt(),
  maintainStock: (json['maintain_stock'] as num?)?.toInt(),
  stockQty: (json['stock_qty'] as num?)?.toDouble(),
  prodVarId: (json['prod_var_id'] as num?)?.toInt(),
  productItemConditionId: (json['product_item_condition_id'] as num?)?.toInt(),
  updatedDate: json['updated_date'] == null
      ? null
      : DateTime.parse(json['updated_date'] as String),
  pricePerUnit: (json['price_per_unit'] as num?)?.toDouble(),
  totalPrice: (json['total_price'] as num?)?.toInt(),
);

Map<String, dynamic> _$$StockUpdateRequestImplToJson(
  _$StockUpdateRequestImpl instance,
) => <String, dynamic>{
  'product_id': instance.productId,
  'maintain_stock': instance.maintainStock,
  'stock_qty': instance.stockQty,
  'prod_var_id': instance.prodVarId,
  'product_item_condition_id': instance.productItemConditionId,
  'updated_date': instance.updatedDate?.toIso8601String(),
  'price_per_unit': instance.pricePerUnit,
  'total_price': instance.totalPrice,
};
