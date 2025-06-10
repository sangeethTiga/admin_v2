// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_condition_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemConditionResponseImpl _$$ItemConditionResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ItemConditionResponseImpl(
  productItemConditionId: (json['product_item_condition_id'] as num?)?.toInt(),
  productItemConditionName: json['product_item_condition_name'] as String?,
);

Map<String, dynamic> _$$ItemConditionResponseImplToJson(
  _$ItemConditionResponseImpl instance,
) => <String, dynamic>{
  'product_item_condition_id': instance.productItemConditionId,
  'product_item_condition_name': instance.productItemConditionName,
};
