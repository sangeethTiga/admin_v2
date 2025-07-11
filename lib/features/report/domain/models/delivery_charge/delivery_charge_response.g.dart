// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_charge_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryChargeResponseImpl _$$DeliveryChargeResponseImplFromJson(
  Map<String, dynamic> json,
) => _$DeliveryChargeResponseImpl(
  prodOrderId: (json['prod_order_id'] as num?)?.toInt(),
  billNo: json['bill_no'] as String?,
  shippingCharge: json['shipping_charge'] as String?,
  orderDate: json['order_date'] as String?,
  rawCount: (json['raw_count'] as num?)?.toInt(),
  totalamount: parseInt(json['totalamount']),
);

Map<String, dynamic> _$$DeliveryChargeResponseImplToJson(
  _$DeliveryChargeResponseImpl instance,
) => <String, dynamic>{
  'prod_order_id': instance.prodOrderId,
  'bill_no': instance.billNo,
  'shipping_charge': instance.shippingCharge,
  'order_date': instance.orderDate,
  'raw_count': instance.rawCount,
  'totalamount': instance.totalamount,
};
