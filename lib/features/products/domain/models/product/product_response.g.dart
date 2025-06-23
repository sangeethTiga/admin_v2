// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductResponseImpl _$$ProductResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProductResponseImpl(
  productId: (json['product_id'] as num?)?.toInt(),
  productName: json['product_name'] as String?,
  productCode: json['product_code'] as String?,
  storeId: (json['store_id'] as num?)?.toInt(),
  storeName: json['store_name'] as String?,
  productPrice: json['product_price'] as String?,
  maintainStock: (json['maintain_stock'] as num?)?.toInt(),
  productQty: (json['product_qty'] as num?)?.toDouble(),
  isHidden: (json['is_hidden'] as num?)?.toInt(),
  isVariant: (json['is_variant'] as num?)?.toInt(),
  isPriceEditable: (json['is_price_editable'] as num?)?.toInt(),
  rawcount: (json['rawcount'] as num?)?.toInt(),
  mainCategoryId: (json['main_category_id'] as num?)?.toInt(),
  images: (json['images'] as List<dynamic>?)
      ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
      .toList(),
  productUnitId: (json['product_unit_id'] as num?)?.toInt(),
  productUnitName: json['product_unit_name'] as String?,
);

Map<String, dynamic> _$$ProductResponseImplToJson(
  _$ProductResponseImpl instance,
) => <String, dynamic>{
  'product_id': instance.productId,
  'product_name': instance.productName,
  'product_code': instance.productCode,
  'store_id': instance.storeId,
  'store_name': instance.storeName,
  'product_price': instance.productPrice,
  'maintain_stock': instance.maintainStock,
  'product_qty': instance.productQty,
  'is_hidden': instance.isHidden,
  'is_variant': instance.isVariant,
  'is_price_editable': instance.isPriceEditable,
  'rawcount': instance.rawcount,
  'main_category_id': instance.mainCategoryId,
  'images': instance.images,
  'product_unit_id': instance.productUnitId,
  'product_unit_name': instance.productUnitName,
};

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
  productImgId: (json['product_img_id'] as num?)?.toInt(),
  resourceId: (json['resource_id'] as num?)?.toInt(),
  prodVarId: (json['prod_var_id'] as num?)?.toInt(),
  large: json['Large'] as String?,
  medium: json['Medium'] as String?,
  small: json['Small'] as String?,
);

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      'product_img_id': instance.productImgId,
      'resource_id': instance.resourceId,
      'prod_var_id': instance.prodVarId,
      'Large': instance.large,
      'Medium': instance.medium,
      'Small': instance.small,
    };
