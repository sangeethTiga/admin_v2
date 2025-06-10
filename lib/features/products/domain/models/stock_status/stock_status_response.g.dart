// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockStatusResponseImpl _$$StockStatusResponseImplFromJson(
  Map<String, dynamic> json,
) => _$StockStatusResponseImpl(
  productItemConditionId: (json['product_item_condition_id'] as num?)?.toInt(),
  productItemConditionName: json['product_item_condition_name'] as String?,
);

Map<String, dynamic> _$$StockStatusResponseImplToJson(
  _$StockStatusResponseImpl instance,
) => <String, dynamic>{
  'product_item_condition_id': instance.productItemConditionId,
  'product_item_condition_name': instance.productItemConditionName,
};
