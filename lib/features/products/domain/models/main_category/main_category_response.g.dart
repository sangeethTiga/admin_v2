// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MainCategoryResponseImpl _$$MainCategoryResponseImplFromJson(
  Map<String, dynamic> json,
) => _$MainCategoryResponseImpl(
  categoryId: (json['category_id'] as num?)?.toInt(),
  isPurchasable: (json['is_purchasable'] as num?)?.toInt(),
  categorySlug: json['category_slug'] as String?,
  hasSubCategory: (json['hasSubCategory'] as num?)?.toInt(),
  categoryName: json['category_name'] as String?,
  storeId: (json['store_id'] as num?)?.toInt(),
  storeName: json['store_name'] as String?,
  parentCategoryId: (json['parent_category_id'] as num?)?.toInt(),
  resourceId: (json['resource_id'] as num?)?.toInt(),
  menuOrder: (json['menu_order'] as num?)?.toInt(),
  resourceLargeName: json['resource_large_name'] as String?,
  mobileimageId: (json['mobileimage_id'] as num?)?.toInt(),
  categoryArabicName: json['category_arabic_name'] as String?,
  parentCategoryName: json['parent_category_name'] as String?,
  categRelnId: (json['categ_reln_id'] as num?)?.toInt(),
  medium: json['Medium'] as String?,
  small: json['Small'] as String?,
  large: json['Large'] as String?,
  mobileMedium: json['MobileMedium'] as String?,
  mobileSmall: json['MobileSmall'] as String?,
  mobileLarge: json['MobileLarge'] as String?,
);

Map<String, dynamic> _$$MainCategoryResponseImplToJson(
  _$MainCategoryResponseImpl instance,
) => <String, dynamic>{
  'category_id': instance.categoryId,
  'is_purchasable': instance.isPurchasable,
  'category_slug': instance.categorySlug,
  'hasSubCategory': instance.hasSubCategory,
  'category_name': instance.categoryName,
  'store_id': instance.storeId,
  'store_name': instance.storeName,
  'parent_category_id': instance.parentCategoryId,
  'resource_id': instance.resourceId,
  'menu_order': instance.menuOrder,
  'resource_large_name': instance.resourceLargeName,
  'mobileimage_id': instance.mobileimageId,
  'category_arabic_name': instance.categoryArabicName,
  'parent_category_name': instance.parentCategoryName,
  'categ_reln_id': instance.categRelnId,
  'Medium': instance.medium,
  'Small': instance.small,
  'Large': instance.large,
  'MobileMedium': instance.mobileMedium,
  'MobileSmall': instance.mobileSmall,
  'MobileLarge': instance.mobileLarge,
};
