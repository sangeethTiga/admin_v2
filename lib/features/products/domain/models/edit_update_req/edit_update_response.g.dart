// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_update_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditUpdateResponseImpl _$$EditUpdateResponseImplFromJson(
  Map<String, dynamic> json,
) => _$EditUpdateResponseImpl(
  productName: json['product_name'] as String?,
  minOrderQuantity: (json['min_order_qty'] as num?)?.toInt(),
  proTypeId: (json['prod_type_id'] as num?)?.toInt(),
  productPrice: (json['product_price'] as num?)?.toDouble(),
  updatedDate: json['updated_date'] == null
      ? null
      : DateTime.parse(json['updated_date'] as String),
  pricePerUnit: (json['price_per_unit'] as num?)?.toDouble(),
);

Map<String, dynamic> _$$EditUpdateResponseImplToJson(
  _$EditUpdateResponseImpl instance,
) => <String, dynamic>{
  'product_name': instance.productName,
  'min_order_qty': instance.minOrderQuantity,
  'prod_type_id': instance.proTypeId,
  'product_price': instance.productPrice,
  'updated_date': instance.updatedDate?.toIso8601String(),
  'price_per_unit': instance.pricePerUnit,
};
