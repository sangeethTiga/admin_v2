// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductsResponseImpl _$$ProductsResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsResponseImpl(
  productId: (json['product_id'] as num?)?.toInt(),
  productName: json['product_name'] as String?,
  totalorderqty: json['totalorderqty'] as String?,
  totalAmount: json['total_amount'] as String?,
  storeName: json['store_name'] as String?,
  sellingPrice: json['selling_price'] as String?,
  costPrice: json['cost_price'] as String?,
  totalCostPrice: json['total_cost_price'] as String?,
  rowcount: (json['rowcount'] as num?)?.toInt(),
  profit: json['profit'] as String?,
  profitPercentage: json['profit_percentage'] as String?,
  grandTotal: json['grand_total'] as String?,
);

Map<String, dynamic> _$$ProductsResponseImplToJson(
  _$ProductsResponseImpl instance,
) => <String, dynamic>{
  'product_id': instance.productId,
  'product_name': instance.productName,
  'totalorderqty': instance.totalorderqty,
  'total_amount': instance.totalAmount,
  'store_name': instance.storeName,
  'selling_price': instance.sellingPrice,
  'cost_price': instance.costPrice,
  'total_cost_price': instance.totalCostPrice,
  'rowcount': instance.rowcount,
  'profit': instance.profit,
  'profit_percentage': instance.profitPercentage,
  'grand_total': instance.grandTotal,
};
