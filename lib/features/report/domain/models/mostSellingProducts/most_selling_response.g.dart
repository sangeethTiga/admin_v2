// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'most_selling_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MostSellingResponseImpl _$$MostSellingResponseImplFromJson(
  Map<String, dynamic> json,
) => _$MostSellingResponseImpl(
  categoryId: (json['category_id'] as num?)?.toInt(),
  categoryName: json['category_name'] as String?,
  categoryDescription: json['category_description'] as String?,
  categoryDescArabic: json['category_desc_arabic'] as String?,
  isFeatured: (json['is_featured'] as num?)?.toInt(),
  isPremium: (json['is_premium'] as num?)?.toInt(),
);

Map<String, dynamic> _$$MostSellingResponseImplToJson(
  _$MostSellingResponseImpl instance,
) => <String, dynamic>{
  'category_id': instance.categoryId,
  'category_name': instance.categoryName,
  'category_description': instance.categoryDescription,
  'category_desc_arabic': instance.categoryDescArabic,
  'is_featured': instance.isFeatured,
  'is_premium': instance.isPremium,
};
