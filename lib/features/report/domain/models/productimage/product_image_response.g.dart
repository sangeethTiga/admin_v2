// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImageListResponseImpl _$$ProductImageListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProductImageListResponseImpl(
  resourceId: (json['resource_id'] as num?)?.toInt(),
  resourceLargeName: json['resource_large_name'] as String?,
  resourceMediumName: json['resource_medium_name'] as String?,
  resourceSmallName: json['resource_small_name'] as String?,
  originalFilename: json['original_filename'] as String?,
  resourceType: (json['resource_type'] as num?)?.toInt(),
  resourceLargePath: json['resource_large_path'] as String?,
  resourceMediumPath: json['resource_medium_path'] as String?,
  resourceSmallPath: json['resource_small_path'] as String?,
  storeId: (json['store_id'] as num?)?.toInt(),
  companyId: (json['company_id'] as num?)?.toInt(),
  displayOrder: json['display_order'],
  sectionId: json['section_id'],
  imageUrl: json['image_url'],
  referenceType: json['reference_type'],
  referenceId: json['reference_id'],
  languageId: (json['language_id'] as num?)?.toInt(),
  createdBy: (json['created_by'] as num?)?.toInt(),
  updatedBy: (json['updated_by'] as num?)?.toInt(),
  isActive: (json['is_active'] as num?)?.toInt(),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$$ProductImageListResponseImplToJson(
  _$ProductImageListResponseImpl instance,
) => <String, dynamic>{
  'resource_id': instance.resourceId,
  'resource_large_name': instance.resourceLargeName,
  'resource_medium_name': instance.resourceMediumName,
  'resource_small_name': instance.resourceSmallName,
  'original_filename': instance.originalFilename,
  'resource_type': instance.resourceType,
  'resource_large_path': instance.resourceLargePath,
  'resource_medium_path': instance.resourceMediumPath,
  'resource_small_path': instance.resourceSmallPath,
  'store_id': instance.storeId,
  'company_id': instance.companyId,
  'display_order': instance.displayOrder,
  'section_id': instance.sectionId,
  'image_url': instance.imageUrl,
  'reference_type': instance.referenceType,
  'reference_id': instance.referenceId,
  'language_id': instance.languageId,
  'created_by': instance.createdBy,
  'updated_by': instance.updatedBy,
  'is_active': instance.isActive,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
};
