// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_graph_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrdersGraphResponseImpl _$$OrdersGraphResponseImplFromJson(
  Map<String, dynamic> json,
) => _$OrdersGraphResponseImpl(
  monthname: json['monthname'] as String?,
  ordercount: (json['ordercount'] as num?)?.toInt(),
);

Map<String, dynamic> _$$OrdersGraphResponseImplToJson(
  _$OrdersGraphResponseImpl instance,
) => <String, dynamic>{
  'monthname': instance.monthname,
  'ordercount': instance.ordercount,
};
