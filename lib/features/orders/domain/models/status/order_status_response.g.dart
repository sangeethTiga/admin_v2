// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderStatusResponseImpl _$$OrderStatusResponseImplFromJson(
  Map<String, dynamic> json,
) => _$OrderStatusResponseImpl(
  orderStatusId: (json['order_status_id'] as num?)?.toInt(),
  orderStatusName: json['order_status_name'] as String?,
  orderStatusArabicName: json['order_status_arabic_name'] as String?,
);

Map<String, dynamic> _$$OrderStatusResponseImplToJson(
  _$OrderStatusResponseImpl instance,
) => <String, dynamic>{
  'order_status_id': instance.orderStatusId,
  'order_status_name': instance.orderStatusName,
  'order_status_arabic_name': instance.orderStatusArabicName,
};
