import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_product_response.freezed.dart';
part 'create_product_response.g.dart';

@freezed
class CreateProductResponse with _$CreateProductResponse {
  const factory CreateProductResponse({
    @JsonKey(name: "product_id") int? productId,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "main_category_id") int? mainCategoryId,
    @JsonKey(name: "Product_categories") List? productCategories,
    @JsonKey(name: "brand_id") int? brandId,
    @JsonKey(name: "unit_id") int? unitId,
    @JsonKey(name: "prod_type_id") int? prodTypeId,
    @JsonKey(name: "product_code") String? productCode,
    @JsonKey(name: "product_slug") String? productSlug,
    @JsonKey(name: "product_name") String? productName,
    @JsonKey(name: "services") List<int>? services,
    
    @JsonKey(name: "product_images") List<Image>? productImages,
    @JsonKey(name: "product_arabic_name") String? productArabicName,
    @JsonKey(name: "product_short_name") String? productShortName,
    @JsonKey(name: "items_per_pack") dynamic itemsPerPack,
    @JsonKey(name: "min_order_qty") dynamic minOrderQty,
    @JsonKey(name: "product_desc") String? productDesc,
    @JsonKey(name: "product_arabic_desc") dynamic productArabicDesc,
    @JsonKey(name: "volume") dynamic volume,
    @JsonKey(name: "product_price") int? productPrice,
    @JsonKey(name: "purchase_price") int? purchasePrice,
    @JsonKey(name: "takeaway_addon_price") int? takeawayAddonPrice,
    @JsonKey(name: "delivery_addon_price") int? deliveryAddonPrice,
    @JsonKey(name: "web_product_price") int? webProductPrice,
    @JsonKey(name: "app_product_price") int? appProductPrice,
    @JsonKey(name: "pos_product_price") int? posProductPrice,
    @JsonKey(name: "wholesale_product_price") int? wholesaleProductPrice,
    @JsonKey(name: "retail_product_price") int? retailProductPrice,
    @JsonKey(name: "is_offer_product") int? isOfferProduct,
    @JsonKey(name: "is_taxable") int? isTaxable,
    @JsonKey(name: "is_tax_inclusive") int? isTaxInclusive,
    @JsonKey(name: "product_tax_amt") dynamic productTaxAmt,
    @JsonKey(name: "product_tax_percentage") dynamic productTaxPercentage,
    @JsonKey(name: "product_sku") String? productSku,
    @JsonKey(name: "product_featured") int? productFeatured,
    @JsonKey(name: "product_short_description") String? productShortDescription,
    @JsonKey(name: "is_hidden") int? isHidden,
    @JsonKey(name: "product_seo_url") dynamic productSeoUrl,
    @JsonKey(name: "is_variant") int? isVariant,
    @JsonKey(name: "prod_purchase_limit") dynamic prodPurchaseLimit,
    @JsonKey(name: "prod_ship_charge") dynamic prodShipCharge,
    @JsonKey(name: "prod_seo_keyword") dynamic prodSeoKeyword,
    @JsonKey(name: "is_guarantee") int? isGuarantee,
    @JsonKey(name: "prod_seo_title") dynamic prodSeoTitle,
    @JsonKey(name: "prod_seo_desc") dynamic prodSeoDesc,
    @JsonKey(name: "prod_video_link") dynamic prodVideoLink,
    @JsonKey(name: "prod_twiter_link") dynamic prodTwiterLink,
    @JsonKey(name: "prod_warranty_desc") dynamic prodWarrantyDesc,
    @JsonKey(name: "stock_interval_id") int? stockIntervalId,
    @JsonKey(name: "prod_menu_order") int? prodMenuOrder,
    @JsonKey(name: "is_best_seller") int? isBestSeller,
    @JsonKey(name: "ignore_discount") int? ignoreDiscount,
    @JsonKey(name: "prod_weight") dynamic prodWeight,
    @JsonKey(name: "has_service") int? hasService,
    @JsonKey(name: "prod_length") dynamic prodLength,
    @JsonKey(name: "prod_height") dynamic prodHeight,
    @JsonKey(name: "prod_width") dynamic prodWidth,
    @JsonKey(name: "reorder_qty") dynamic reorderQty,
    @JsonKey(name: "created_by") int? createdBy,
    @JsonKey(name: "updated_by") int? updatedBy,
    @JsonKey(name: "is_out_of_stock") int? isOutOfStock,
    @JsonKey(name: "is_combo") int? isCombo,
    @JsonKey(name: "is_shop_only") int? isShopOnly,
    @JsonKey(name: "is_new") int? isNew,
    @JsonKey(name: "product_price_range") dynamic productPriceRange,
    @JsonKey(name: "show_price") dynamic showPrice,
    @JsonKey(name: "show_product_range") dynamic showProductRange,
    @JsonKey(name: "is_active") int? isActive,
    @JsonKey(name: "has_review") dynamic hasReview,
    @JsonKey(name: "shelf_no") dynamic shelfNo,
    @JsonKey(name: "hide_remarks") dynamic hideRemarks,
    @JsonKey(name: "returnable_period") int? returnablePeriod,
    @JsonKey(name: "is_pre_order") int? isPreOrder,
    @JsonKey(name: "release_time") dynamic releaseTime,
    @JsonKey(name: "pre_order_fee") dynamic preOrderFee,
    @JsonKey(name: "pre_order_charging_option_id")
    int? preOrderChargingOptionId,
    @JsonKey(name: "is_sellable") int? isSellable,
    @JsonKey(name: "is_purchasable") int? isPurchasable,
    @JsonKey(name: "product_barcode") String? productBarcode,
    @JsonKey(name: "is_price_editable") int? isPriceEditable,
    @JsonKey(name: "prod_amazon_link") dynamic prodAmazonLink,
    @JsonKey(name: "prod_flipkart_link") dynamic prodFlipkartLink,
    @JsonKey(name: "is_fast_moving") int? isFastMoving,
    @JsonKey(name: "expiry_days") int? expiryDays,
    @JsonKey(name: "quantity_per_unit") int? quantityPerUnit,
    @JsonKey(name: "separate_variant_stock") dynamic separateVariantStock,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "created_at") DateTime? createdAt,
  }) = _CreateProductResponse;

  factory CreateProductResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateProductResponseFromJson(json);
}


@freezed
class Image with _$Image {
  const factory Image({
    @JsonKey(name: "product_img_id") int? productImgId,
    @JsonKey(name: "resource_id") int? resourceId,
    @JsonKey(name: "prod_var_id") int? prodVarId,
    @JsonKey(name: "Large") String? large,
    @JsonKey(name: "Medium") String? medium,
    @JsonKey(name: "Small") String? small,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}