// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parcel_charge_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParcelChargeResponseImpl _$$ParcelChargeResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ParcelChargeResponseImpl(
  prodOrderId: (json['prod_order_id'] as num?)?.toInt(),
  billNo: json['bill_no'] as String?,
  parcelCharge: parseDouble(json['parcel_charge']),
  orderDate: json['order_date'] as String?,
  rawCount: (json['raw_count'] as num?)?.toInt(),
  totalamount: parseInt(json['totalamount']),
);

Map<String, dynamic> _$$ParcelChargeResponseImplToJson(
  _$ParcelChargeResponseImpl instance,
) => <String, dynamic>{
  'prod_order_id': instance.prodOrderId,
  'bill_no': instance.billNo,
  'parcel_charge': instance.parcelCharge,
  'order_date': instance.orderDate,
  'raw_count': instance.rawCount,
  'totalamount': instance.totalamount,
};
