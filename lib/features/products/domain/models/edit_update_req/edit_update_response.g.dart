// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_update_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditUpdateResponseImpl _$$EditUpdateResponseImplFromJson(
  Map<String, dynamic> json,
) => _$EditUpdateResponseImpl(
  productName: json['product_name'] as String?,
  productQuantity: (json['product_qty'] as num?)?.toInt(),
  productPrice: (json['product_price'] as num?)?.toDouble(),
  updatedDate: json['updated_date'] == null
      ? null
      : DateTime.parse(json['updated_date'] as String),
  storeId: (json['store_id'] as num?)?.toInt(),
  productId: (json['product_id'] as num?)?.toInt(),
  maintainStock: (json['maintain_stock'] as num?)?.toInt(),
  productHidden: (json['product_hidden'] as num?)?.toInt(),
);

Map<String, dynamic> _$$EditUpdateResponseImplToJson(
  _$EditUpdateResponseImpl instance,
) => <String, dynamic>{
  'product_name': instance.productName,
  'product_qty': instance.productQuantity,
  'product_price': instance.productPrice,
  'updated_date': instance.updatedDate?.toIso8601String(),
  'store_id': instance.storeId,
  'product_id': instance.productId,
  'maintain_stock': instance.maintainStock,
  'product_hidden': instance.productHidden,
};
