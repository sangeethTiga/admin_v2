
import 'package:freezed_annotation/freezed_annotation.dart';
 part 'product_image_response.g.dart';

part 'product_image_response.freezed.dart';

@freezed
class ProductImageListResponse with _$ProductImageListResponse {
    const factory ProductImageListResponse({
        @JsonKey(name: "resource_id")
        int? resourceId,
        @JsonKey(name: "resource_large_name")
        String? resourceLargeName,
        @JsonKey(name: "resource_medium_name")
        String? resourceMediumName,
        @JsonKey(name: "resource_small_name")
        String? resourceSmallName,
        @JsonKey(name: "original_filename")
        String? originalFilename,
        @JsonKey(name: "resource_type")
        int? resourceType,
        @JsonKey(name: "resource_large_path")
        String? resourceLargePath,
        @JsonKey(name: "resource_medium_path")
        String? resourceMediumPath,
        @JsonKey(name: "resource_small_path")
        String? resourceSmallPath,
        @JsonKey(name: "store_id")
        int? storeId,
        @JsonKey(name: "company_id")
        int? companyId,
        @JsonKey(name: "display_order")
        dynamic displayOrder,
        @JsonKey(name: "section_id")
        dynamic sectionId,
        @JsonKey(name: "image_url")
        dynamic imageUrl,
        @JsonKey(name: "reference_type")
        dynamic referenceType,
        @JsonKey(name: "reference_id")
        dynamic referenceId,
        @JsonKey(name: "language_id")
        int? languageId,
        @JsonKey(name: "created_by")
        int? createdBy,
        @JsonKey(name: "updated_by")
        int? updatedBy,
        @JsonKey(name: "is_active")
        int? isActive,
        @JsonKey(name: "created_at")
        DateTime? createdAt,
        @JsonKey(name: "updated_at")
        DateTime? updatedAt,
    }) = _ProductImageListResponse;

    factory ProductImageListResponse.fromJson(Map<String, dynamic> json) => _$ProductImageListResponseFromJson(json);
}
