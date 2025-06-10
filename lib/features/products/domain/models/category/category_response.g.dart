// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryResponseImpl _$$CategoryResponseImplFromJson(
  Map<String, dynamic> json,
) => _$CategoryResponseImpl(
  details: json['details'] == null
      ? null
      : Details.fromJson(json['details'] as Map<String, dynamic>),
  subcategories1: (json['subcategories1'] as List<dynamic>?)
      ?.map((e) => Subcategories1.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$CategoryResponseImplToJson(
  _$CategoryResponseImpl instance,
) => <String, dynamic>{
  'details': instance.details,
  'subcategories1': instance.subcategories1,
};

_$DetailsImpl _$$DetailsImplFromJson(Map<String, dynamic> json) =>
    _$DetailsImpl(
      categoryId: (json['category_id'] as num?)?.toInt(),
      categoryName: json['category_name'] as String?,
      categoryArabicName: json['category_arabic_name'] as String?,
      categorySlug: json['category_slug'] as String?,
      parentCategoryId: (json['parent_category_id'] as num?)?.toInt(),
      resourceSmallName: json['resource_small_name'] as String?,
      checked: (json['checked'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DetailsImplToJson(_$DetailsImpl instance) =>
    <String, dynamic>{
      'category_id': instance.categoryId,
      'category_name': instance.categoryName,
      'category_arabic_name': instance.categoryArabicName,
      'category_slug': instance.categorySlug,
      'parent_category_id': instance.parentCategoryId,
      'resource_small_name': instance.resourceSmallName,
      'checked': instance.checked,
    };

_$Subcategories1Impl _$$Subcategories1ImplFromJson(Map<String, dynamic> json) =>
    _$Subcategories1Impl(
      details: json['details'] == null
          ? null
          : Details.fromJson(json['details'] as Map<String, dynamic>),
      subcategories2: json['subcategories2'] as List<dynamic>?,
    );

Map<String, dynamic> _$$Subcategories1ImplToJson(
  _$Subcategories1Impl instance,
) => <String, dynamic>{
  'details': instance.details,
  'subcategories2': instance.subcategories2,
};
