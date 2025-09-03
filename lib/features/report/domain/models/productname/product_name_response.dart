
import 'package:freezed_annotation/freezed_annotation.dart';


part 'product_name_response.freezed.dart';
part 'product_name_response.g.dart';


@freezed
class ProductNameResponse with _$ProductNameResponse {
    const factory ProductNameResponse({
        @JsonKey(name: "product_id")
        int? productId,
        @JsonKey(name: "product_code")
        String? productCode,
        @JsonKey(name: "product_name")
        String? productName,
        @JsonKey(name: "product_price")
        double? productPrice,
        @JsonKey(name: "old_product_price")
        String? oldProductPrice,
        @JsonKey(name: "prod_var_id")
        int? prodVarId,
        @JsonKey(name: "prod_var_code")
        dynamic prodVarCode,
        @JsonKey(name: "product_desc")
        String? productDesc,
        @JsonKey(name: "product_arabic_desc")
        String? productArabicDesc,
        @JsonKey(name: "product_arabic_name")
        String? productArabicName,
        @JsonKey(name: "store_id")
        int? storeId,
        @JsonKey(name: "purchase_price")
        int? purchasePrice,
        @JsonKey(name: "offer_price")
        int? offerPrice,
        @JsonKey(name: "product_qty")
        int? productQty,
        @JsonKey(name: "product_featured")
        int? productFeatured,
        @JsonKey(name: "maintain_stock")
        int? maintainStock,
        @JsonKey(name: "is_out_of_stock")
        int? isOutOfStock,
        @JsonKey(name: "prod_menu_order")
        int? prodMenuOrder,
        @JsonKey(name: "variants")
        List<dynamic>? variants,
        @JsonKey(name: "is_hidden")
        int? isHidden,
        @JsonKey(name: "hide_remarks")
        String? hideRemarks,
        @JsonKey(name: "has_review")
        int? hasReview,
        @JsonKey(name: "edit_mode")
        int? editMode,
        @JsonKey(name: "is_variant")
        int? isVariant,
        @JsonKey(name: "product_price_range")
        dynamic productPriceRange,
        @JsonKey(name: "show_price")
        int? showPrice,
        @JsonKey(name: "show_product_range")
        int? showProductRange,
        @JsonKey(name: "store_listing")
        int? storeListing,
        @JsonKey(name: "currency_code")
        String? currencyCode,
        @JsonKey(name: "store_product_id")
        int? storeProductId,
        @JsonKey(name: "stock_interval_id")
        int? stockIntervalId,
        @JsonKey(name: "rawcount")
        int? rawcount,
        @JsonKey(name: "var_row_count")
        int? varRowCount,
        @JsonKey(name: "takeaway_addon_price")
        int? takeawayAddonPrice,
        @JsonKey(name: "delivery_addon_price")
        int? deliveryAddonPrice,
        @JsonKey(name: "web_product_price")
        dynamic webProductPrice,
        @JsonKey(name: "app_product_price")
        dynamic appProductPrice,
        @JsonKey(name: "pos_product_price")
        dynamic posProductPrice,
        @JsonKey(name: "wholesale_product_price")
        double? wholesaleProductPrice,
        @JsonKey(name: "retail_product_price")
        double? retailProductPrice,
        @JsonKey(name: "category_name")
        String? categoryName,
        @JsonKey(name: "stock_interval")
        String? stockInterval,
        @JsonKey(name: "hour")
        String? hour,
        @JsonKey(name: "unit_id")
        int? unitId,
        @JsonKey(name: "unit_name")
        String? unitName,
        @JsonKey(name: "images")
        List<Image>? images,
        @JsonKey(name: "is_price_editable")
        int? isPriceEditable,
    }) = _ProductNameResponse;

    factory ProductNameResponse.fromJson(Map<String, dynamic> json) => _$ProductNameResponseFromJson(json);
}

@freezed
class Image with _$Image {
    const factory Image({
        @JsonKey(name: "product_img_id")
        int? productImgId,
        @JsonKey(name: "resource_id")
        int? resourceId,
        @JsonKey(name: "prod_var_id")
        int? prodVarId,
        @JsonKey(name: "Large")
        String? large,
        @JsonKey(name: "Medium")
        String? medium,
        @JsonKey(name: "Small")
        String? small,
    }) = _Image;

    factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}
