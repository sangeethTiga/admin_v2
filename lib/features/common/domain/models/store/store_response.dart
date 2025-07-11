import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_response.freezed.dart';
part 'store_response.g.dart';

@freezed
class StoreResponse with _$StoreResponse {
  const factory StoreResponse({
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "store_name") String? storeName,
    @JsonKey(name: "store_arabic_name") dynamic storeArabicName,
    @JsonKey(name: "store_url_name") String? storeUrlName,
    @JsonKey(name: "store_url") String? storeUrl,
    @JsonKey(name: "store_listing_id") int? storeListingId,
    @JsonKey(name: "store_listing_name") String? storeListingName,
    @JsonKey(name: "store_address") String? storeAddress,
    @JsonKey(name: "store_desc") String? storeDesc,
    @JsonKey(name: "store_phone") String? storePhone,
    @JsonKey(name: "store_landline") String? storeLandline,
    @JsonKey(name: "store_whatsapp_number") String? storeWhatsappNumber,
    @JsonKey(name: "store_email") String? storeEmail,
    @JsonKey(name: "store_website") String? storeWebsite,
    @JsonKey(name: "banners") List<Banner>? banners,
    @JsonKey(name: "del_charge_type") int? delChargeType,
    @JsonKey(name: "area_id") int? areaId,
    @JsonKey(name: "area_name") String? areaName,
    @JsonKey(name: "store_logo") int? storeLogo,
    @JsonKey(name: "Small") String? small,
    @JsonKey(name: "Medium") String? medium,
    @JsonKey(name: "Large") String? large,
    @JsonKey(name: "store_long_logo") int? storeLongLogo,
    @JsonKey(name: "Small_long_image") String? smallLongImage,
    @JsonKey(name: "Medium_long_image") String? mediumLongImage,
    @JsonKey(name: "Large_long_image") String? largeLongImage,
    @JsonKey(name: "tax_num") String? taxNum,
    @JsonKey(name: "blog") String? blog,
    @JsonKey(name: "print_footer_content") dynamic printFooterContent,
    @JsonKey(name: "about_us") String? aboutUs,
    @JsonKey(name: "term_of_use") dynamic termOfUse,
    @JsonKey(name: "privacy_policy") dynamic privacyPolicy,
    @JsonKey(name: "warranty_returns") dynamic warrantyReturns,
    @JsonKey(name: "latitude") String? latitude,
    @JsonKey(name: "longitude") String? longitude,
    @JsonKey(name: "fb_url") dynamic fbUrl,
    @JsonKey(name: "twitter_url") dynamic twitterUrl,
    @JsonKey(name: "youtube_url") dynamic youtubeUrl,
    @JsonKey(name: "instagram_url") dynamic instagramUrl,
    @JsonKey(name: "store_seo_keywords") dynamic storeSeoKeywords,
    @JsonKey(name: "store_tax_id") int? storeTaxId,
    @JsonKey(name: "language_id") int? languageId,
    @JsonKey(name: "currency_id") int? currencyId,
    @JsonKey(name: "currency_code") String? currencyCode,
    @JsonKey(name: "rounding") int? rounding,
    @JsonKey(name: "currency_arabic") dynamic currencyArabic,
    @JsonKey(name: "country_id") int? countryId,
    @JsonKey(name: "mobile_digit") int? mobileDigit,
    @JsonKey(name: "vendor_name") String? vendorName,
    @JsonKey(name: "vendor_id") int? vendorId,
    @JsonKey(name: "bank_holder") dynamic bankHolder,
    @JsonKey(name: "acct_number") dynamic acctNumber,
    @JsonKey(name: "ifsc_code") dynamic ifscCode,
    @JsonKey(name: "min_price") dynamic minPrice,
    @JsonKey(name: "map") dynamic map,
    @JsonKey(name: "theme_color") dynamic themeColor,
    @JsonKey(name: "item_wise_cancel") int? itemWiseCancel,
    @JsonKey(name: "item_wise_add") int? itemWiseAdd,
    @JsonKey(name: "item_wise_delivery") int? itemWiseDelivery,
    @JsonKey(name: "pos_integrated") int? posIntegrated,
    @JsonKey(name: "is_qr_menu") int? isQrMenu,
    @JsonKey(name: "parcel_charge") double? parcelCharge,
    @JsonKey(name: "max_price") dynamic maxPrice,
    @JsonKey(name: "licence_id") int? licenceId,
    @JsonKey(name: "licence_img") String? licenceImg,
    @JsonKey(name: "bank") dynamic bank,
    @JsonKey(name: "is_verified") int? isVerified,
    @JsonKey(name: "rowcount") int? rowcount,
    @JsonKey(name: "offer_count") int? offerCount,
    @JsonKey(name: "state_id") int? stateId,
    @JsonKey(name: "is_premium") int? isPremium,
    @JsonKey(name: "delivery_partners") List<DeliveryPartner>? deliveryPartners,
    @JsonKey(name: "order_attend_time") int? orderAttendTime,
    @JsonKey(name: "cart_count") int? cartCount,
    @JsonKey(name: "orderOptions") List<OrderOption>? orderOptions,
    @JsonKey(name: "Allorder_options") List<OrderOption>? allorderOptions,
    @JsonKey(name: "storeOrder_options") List<OrderOption>? storeOrderOptions,
    @JsonKey(name: "storePayment_method") List<dynamic>? storePaymentMethod,
    @JsonKey(name: "slabSettings") List<dynamic>? slabSettings,
    @JsonKey(name: "delivery_note") String? deliveryNote,
    @JsonKey(name: "pickup_note") String? pickupNote,
    @JsonKey(name: "expected_delivery_hour") String? expectedDeliveryHour,
    @JsonKey(name: "processing_time") String? processingTime,
    @JsonKey(name: "expected_delivery_minute") String? expectedDeliveryMinute,
    @JsonKey(name: "expected_pickup_hour") String? expectedPickupHour,
    @JsonKey(name: "expected_pickup_minute") String? expectedPickupMinute,
    @JsonKey(name: "accept_orders") int? acceptOrders,
    @JsonKey(name: "accept_order_status") int? acceptOrderStatus,
    @JsonKey(name: "order_accepted_note") String? orderAcceptedNote,
    @JsonKey(name: "business_closed") int? businessClosed,
    @JsonKey(name: "min_order_amt") int? minOrderAmt,
    @JsonKey(name: "menu_order") int? menuOrder,
    @JsonKey(name: "has_whatsapp_order") int? hasWhatsappOrder,
    @JsonKey(name: "delayed_payment") int? delayedPayment,
    @JsonKey(name: "table_reservation") int? tableReservation,
    @JsonKey(name: "printing_method") int? printingMethod,
    @JsonKey(name: "ui_design_id") int? uiDesignId,
    @JsonKey(name: "is_global_inventory") int? isGlobalInventory,
    @JsonKey(name: "distance_in_km") String? distanceInKm,
    @JsonKey(name: "store_show") int? storeShow,
    @JsonKey(name: "working_hours") List<WorkingHour>? workingHours,
    @JsonKey(name: "Store_images") List<StoreImage>? storeImages,
    @JsonKey(name: "favorite") bool? favorite,
    @JsonKey(name: "del_assign_type") int? delAssignType,
    @JsonKey(name: "business_type") List<BusinessType>? businessType,
    @JsonKey(name: "sub_business_type") List<SubBusinessType>? subBusinessType,
    @JsonKey(name: "Store_avg_rating") int? storeAvgRating,
    @JsonKey(name: "Store_Total_Rating") int? storeTotalRating,
    @JsonKey(name: "Store_rounded_avg_rating") int? storeRoundedAvgRating,
    @JsonKey(name: "Store_rating_summary")
    List<StoreRatingSummary>? storeRatingSummary,
    @JsonKey(name: "country_isd") String? countryIsd,
    @JsonKey(name: "store_attribute") List<dynamic>? storeAttribute,
    @JsonKey(name: "store_offers") List<dynamic>? storeOffers,
    @JsonKey(name: "product_count") int? productCount,
    @JsonKey(name: "store_accounts") List<StoreAccount>? storeAccounts,
    @JsonKey(name: "seo_title") dynamic seoTitle,
    @JsonKey(name: "recipe_management") int? recipeManagement,
    @JsonKey(name: "order_disclaimer") String? orderDisclaimer,
    @JsonKey(name: "is_test_store") int? isTestStore,
    @JsonKey(name: "is_day_close_enabled") int? isDayCloseEnabled,
    @JsonKey(name: "dynamic_cashier_selection") int? dynamicCashierSelection,
  }) = _StoreResponse;

  factory StoreResponse.fromJson(Map<String, dynamic> json) =>
      _$StoreResponseFromJson(json);
}

@freezed
class OrderOption with _$OrderOption {
  const factory OrderOption({
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "app_type_id") int? appTypeId,
    @JsonKey(name: "order_option_id") int? orderOptionId,
    @JsonKey(name: "order_option_name") String? orderOptionName,
    @JsonKey(name: "slot_type_id") int? slotTypeId,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "order_option_arabic") String? orderOptionArabic,
    @JsonKey(name: "arabic_note") String? arabicNote,
  }) = _OrderOption;

  factory OrderOption.fromJson(Map<String, dynamic> json) =>
      _$OrderOptionFromJson(json);
}

@freezed
class Banner with _$Banner {
  const factory Banner({
    @JsonKey(name: "resource_id") int? resourceId,
    @JsonKey(name: "store_name") String? storeName,
    @JsonKey(name: "original_filename") String? originalFilename,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "store_listing_id") int? storeListingId,
    @JsonKey(name: "language_id") int? languageId,
    @JsonKey(name: "resource_type_name") String? resourceTypeName,
    @JsonKey(name: "Large") String? large,
    @JsonKey(name: "Medium") String? medium,
    @JsonKey(name: "Small") String? small,
    @JsonKey(name: "banner_text") dynamic bannerText,
    @JsonKey(name: "banner_id") int? bannerId,
    @JsonKey(name: "banner_url_type") int? bannerUrlType,
    @JsonKey(name: "url_id") int? urlId,
    @JsonKey(name: "ui_design_id") int? uiDesignId,
    @JsonKey(name: "url") String? url,
    @JsonKey(name: "store_url_name") String? storeUrlName,
    @JsonKey(name: "slug") String? slug,
    @JsonKey(name: "url_name") String? urlName,
    @JsonKey(name: "store_category_url") String? storeCategoryUrl,
    @JsonKey(name: "category_slug") String? categorySlug,
  }) = _Banner;

  factory Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);
}

@freezed
class BusinessType with _$BusinessType {
  const factory BusinessType({
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "store_business_type_id") int? storeBusinessTypeId,
    @JsonKey(name: "business_type_name") String? businessTypeName,
    @JsonKey(name: "business_type_id") int? businessTypeId,
  }) = _BusinessType;

  factory BusinessType.fromJson(Map<String, dynamic> json) =>
      _$BusinessTypeFromJson(json);
}

@freezed
class DeliveryPartner with _$DeliveryPartner {
   factory DeliveryPartner({
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "store_del_partner_id") int? storeDelPartnerId,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "delivery_partner_id") int? deliveryPartnerId,

  }) = _DeliveryPartner;

  factory DeliveryPartner.fromJson(Map<String, dynamic> json) =>
      _$DeliveryPartnerFromJson(json);
}

@freezed
class StoreAccount with _$StoreAccount {
  const factory StoreAccount({
    @JsonKey(name: "account_id") int? accountId,
    @JsonKey(name: "account_name") String? accountName,
    @JsonKey(name: "account_type_id") int? accountTypeId,
    @JsonKey(name: "is_active") int? isActive,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "is_synced") int? isSynced,
    @JsonKey(name: "store_id") int? storeId,
  }) = _StoreAccount;

  factory StoreAccount.fromJson(Map<String, dynamic> json) =>
      _$StoreAccountFromJson(json);
}

@freezed
class StoreImage with _$StoreImage {
  const factory StoreImage({
    @JsonKey(name: "resource_id") int? resourceId,
    @JsonKey(name: "reference_id") int? referenceId,
    @JsonKey(name: "original_filename") String? originalFilename,
    @JsonKey(name: "Small") String? small,
    @JsonKey(name: "Medium") String? medium,
    @JsonKey(name: "Large") String? large,
  }) = _StoreImage;

  factory StoreImage.fromJson(Map<String, dynamic> json) =>
      _$StoreImageFromJson(json);
}

@freezed
class StoreRatingSummary with _$StoreRatingSummary {
  const factory StoreRatingSummary({
    @JsonKey(name: "Ratig") int? ratig,
    @JsonKey(name: "Total_Rating") int? totalRating,
  }) = _StoreRatingSummary;

  factory StoreRatingSummary.fromJson(Map<String, dynamic> json) =>
      _$StoreRatingSummaryFromJson(json);
}

@freezed
class SubBusinessType with _$SubBusinessType {
  const factory SubBusinessType({
    @JsonKey(name: "sub_business_type_id") int? subBusinessTypeId,
    @JsonKey(name: "sub_business_type_name") String? subBusinessTypeName,
  }) = _SubBusinessType;

  factory SubBusinessType.fromJson(Map<String, dynamic> json) =>
      _$SubBusinessTypeFromJson(json);
}

@freezed
class WorkingHour with _$WorkingHour {
  const factory WorkingHour({
    @JsonKey(name: "working_hours_from") String? workingHoursFrom,
    @JsonKey(name: "working_hours_to") String? workingHoursTo,
    @JsonKey(name: "working_day") String? workingDay,
  }) = _WorkingHour;

  factory WorkingHour.fromJson(Map<String, dynamic> json) =>
      _$WorkingHourFromJson(json);
}
