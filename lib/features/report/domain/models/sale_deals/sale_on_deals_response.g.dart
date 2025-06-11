// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_on_deals_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaleOnDealsImpl _$$SaleOnDealsImplFromJson(Map<String, dynamic> json) =>
    _$SaleOnDealsImpl(
      prodOrderId: (json['prod_order_id'] as num?)?.toInt(),
      productId: (json['product_id'] as num?)?.toInt(),
      offerPrice: (json['offer_price'] as num?)?.toDouble(),
      orderDate: json['order_date'] as String?,
      storeName: json['store_name'] as String?,
      productName: json['product_name'] as String?,
      orderItemQty: (json['order_item_qty'] as num?)?.toInt(),
      orderItemTotal: (json['order_item_total'] as num?)?.toDouble(),
      orderItemNetAmt: (json['order_item_net_amt'] as num?)?.toDouble(),
      rowcount: (json['rowcount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SaleOnDealsImplToJson(_$SaleOnDealsImpl instance) =>
    <String, dynamic>{
      'prod_order_id': instance.prodOrderId,
      'product_id': instance.productId,
      'offer_price': instance.offerPrice,
      'order_date': instance.orderDate,
      'store_name': instance.storeName,
      'product_name': instance.productName,
      'order_item_qty': instance.orderItemQty,
      'order_item_total': instance.orderItemTotal,
      'order_item_net_amt': instance.orderItemNetAmt,
      'rowcount': instance.rowcount,
    };
