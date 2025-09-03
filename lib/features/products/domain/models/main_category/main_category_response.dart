import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_category_response.freezed.dart';
part 'main_category_response.g.dart';
 
@freezed
class MainCategoryResponse with _$MainCategoryResponse {
    const factory MainCategoryResponse({
        @JsonKey(name: "category_id")
        int? categoryId,
        @JsonKey(name: "is_purchasable")
        int? isPurchasable,
        @JsonKey(name: "category_slug")
        String? categorySlug,
        @JsonKey(name: "hasSubCategory")
        int? hasSubCategory,
        @JsonKey(name: "category_name")
        String? categoryName,
        @JsonKey(name: "store_id")
        int? storeId,
        @JsonKey(name: "store_name")
        String? storeName,
        @JsonKey(name: "parent_category_id")
        int? parentCategoryId,
        @JsonKey(name: "resource_id")
        int? resourceId,
        @JsonKey(name: "menu_order")
        int? menuOrder,
        @JsonKey(name: "resource_large_name")
        String? resourceLargeName,
        @JsonKey(name: "mobileimage_id")
        int? mobileimageId,
        @JsonKey(name: "category_arabic_name")
        String? categoryArabicName,
        @JsonKey(name: "parent_category_name")
        String? parentCategoryName,
        @JsonKey(name: "categ_reln_id")
        int? categRelnId,
        @JsonKey(name: "Medium")
        String? medium,
        @JsonKey(name: "Small")
        String? small,
        @JsonKey(name: "Large")
        String? large,
        @JsonKey(name: "MobileMedium")
        String? mobileMedium,
        @JsonKey(name: "MobileSmall")
        String? mobileSmall,
        @JsonKey(name: "MobileLarge")
        String? mobileLarge,
    }) = _MainCategoryResponse;
 
    factory MainCategoryResponse.fromJson(Map<String, dynamic> json) => _$MainCategoryResponseFromJson(json);
}