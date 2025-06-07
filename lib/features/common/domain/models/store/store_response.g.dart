// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreResponseImpl _$$StoreResponseImplFromJson(
  Map<String, dynamic> json,
) => _$StoreResponseImpl(
  storeId: (json['store_id'] as num?)?.toInt(),
  storeName: json['store_name'] as String?,
  storeArabicName: json['store_arabic_name'],
  storeUrlName: json['store_url_name'] as String?,
  storeUrl: json['store_url'] as String?,
  storeListingId: (json['store_listing_id'] as num?)?.toInt(),
  storeListingName: json['store_listing_name'] as String?,
  storeAddress: json['store_address'] as String?,
  storeDesc: json['store_desc'] as String?,
  storePhone: json['store_phone'] as String?,
  storeLandline: json['store_landline'] as String?,
  storeWhatsappNumber: json['store_whatsapp_number'] as String?,
  storeEmail: json['store_email'] as String?,
  storeWebsite: json['store_website'] as String?,
  banners: (json['banners'] as List<dynamic>?)
      ?.map((e) => Banner.fromJson(e as Map<String, dynamic>))
      .toList(),
  delChargeType: (json['del_charge_type'] as num?)?.toInt(),
  areaId: (json['area_id'] as num?)?.toInt(),
  areaName: json['area_name'] as String?,
  storeLogo: (json['store_logo'] as num?)?.toInt(),
  small: json['Small'] as String?,
  medium: json['Medium'] as String?,
  large: json['Large'] as String?,
  storeLongLogo: (json['store_long_logo'] as num?)?.toInt(),
  smallLongImage: json['Small_long_image'] as String?,
  mediumLongImage: json['Medium_long_image'] as String?,
  largeLongImage: json['Large_long_image'] as String?,
  taxNum: json['tax_num'] as String?,
  blog: json['blog'] as String?,
  printFooterContent: json['print_footer_content'],
  aboutUs: json['about_us'] as String?,
  termOfUse: json['term_of_use'],
  privacyPolicy: json['privacy_policy'],
  warrantyReturns: json['warranty_returns'],
  latitude: json['latitude'] as String?,
  longitude: json['longitude'] as String?,
  fbUrl: json['fb_url'],
  twitterUrl: json['twitter_url'],
  youtubeUrl: json['youtube_url'],
  instagramUrl: json['instagram_url'],
  storeSeoKeywords: json['store_seo_keywords'],
  storeTaxId: (json['store_tax_id'] as num?)?.toInt(),
  languageId: (json['language_id'] as num?)?.toInt(),
  currencyId: (json['currency_id'] as num?)?.toInt(),
  currencyCode: json['currency_code'] as String?,
  rounding: (json['rounding'] as num?)?.toInt(),
  currencyArabic: json['currency_arabic'],
  countryId: (json['country_id'] as num?)?.toInt(),
  mobileDigit: (json['mobile_digit'] as num?)?.toInt(),
  vendorName: json['vendor_name'] as String?,
  vendorId: (json['vendor_id'] as num?)?.toInt(),
  bankHolder: json['bank_holder'],
  acctNumber: json['acct_number'],
  ifscCode: json['ifsc_code'],
  minPrice: json['min_price'],
  map: json['map'],
  themeColor: json['theme_color'],
  itemWiseCancel: (json['item_wise_cancel'] as num?)?.toInt(),
  itemWiseAdd: (json['item_wise_add'] as num?)?.toInt(),
  itemWiseDelivery: (json['item_wise_delivery'] as num?)?.toInt(),
  posIntegrated: (json['pos_integrated'] as num?)?.toInt(),
  isQrMenu: (json['is_qr_menu'] as num?)?.toInt(),
  parcelCharge: (json['parcel_charge'] as num?)?.toDouble(),
  maxPrice: json['max_price'],
  licenceId: (json['licence_id'] as num?)?.toInt(),
  licenceImg: json['licence_img'] as String?,
  bank: json['bank'],
  isVerified: (json['is_verified'] as num?)?.toInt(),
  rowcount: (json['rowcount'] as num?)?.toInt(),
  offerCount: (json['offer_count'] as num?)?.toInt(),
  stateId: (json['state_id'] as num?)?.toInt(),
  isPremium: (json['is_premium'] as num?)?.toInt(),
  deliveryPartners: (json['delivery_partners'] as List<dynamic>?)
      ?.map((e) => DeliveryPartner.fromJson(e as Map<String, dynamic>))
      .toList(),
  orderAttendTime: (json['order_attend_time'] as num?)?.toInt(),
  cartCount: (json['cart_count'] as num?)?.toInt(),
  orderOptions: (json['orderOptions'] as List<dynamic>?)
      ?.map((e) => OrderOption.fromJson(e as Map<String, dynamic>))
      .toList(),
  allorderOptions: (json['Allorder_options'] as List<dynamic>?)
      ?.map((e) => OrderOption.fromJson(e as Map<String, dynamic>))
      .toList(),
  storeOrderOptions: (json['storeOrder_options'] as List<dynamic>?)
      ?.map((e) => OrderOption.fromJson(e as Map<String, dynamic>))
      .toList(),
  storePaymentMethod: json['storePayment_method'] as List<dynamic>?,
  slabSettings: json['slabSettings'] as List<dynamic>?,
  deliveryNote: json['delivery_note'] as String?,
  pickupNote: json['pickup_note'] as String?,
  expectedDeliveryHour: json['expected_delivery_hour'] as String?,
  processingTime: json['processing_time'] as String?,
  expectedDeliveryMinute: json['expected_delivery_minute'] as String?,
  expectedPickupHour: json['expected_pickup_hour'] as String?,
  expectedPickupMinute: json['expected_pickup_minute'] as String?,
  acceptOrders: (json['accept_orders'] as num?)?.toInt(),
  acceptOrderStatus: (json['accept_order_status'] as num?)?.toInt(),
  orderAcceptedNote: json['order_accepted_note'] as String?,
  businessClosed: (json['business_closed'] as num?)?.toInt(),
  minOrderAmt: (json['min_order_amt'] as num?)?.toInt(),
  menuOrder: (json['menu_order'] as num?)?.toInt(),
  hasWhatsappOrder: (json['has_whatsapp_order'] as num?)?.toInt(),
  delayedPayment: (json['delayed_payment'] as num?)?.toInt(),
  tableReservation: (json['table_reservation'] as num?)?.toInt(),
  printingMethod: (json['printing_method'] as num?)?.toInt(),
  uiDesignId: (json['ui_design_id'] as num?)?.toInt(),
  isGlobalInventory: (json['is_global_inventory'] as num?)?.toInt(),
  distanceInKm: json['distance_in_km'] as String?,
  storeShow: (json['store_show'] as num?)?.toInt(),
  workingHours: (json['working_hours'] as List<dynamic>?)
      ?.map((e) => WorkingHour.fromJson(e as Map<String, dynamic>))
      .toList(),
  storeImages: (json['Store_images'] as List<dynamic>?)
      ?.map((e) => StoreImage.fromJson(e as Map<String, dynamic>))
      .toList(),
  favorite: json['favorite'] as bool?,
  delAssignType: (json['del_assign_type'] as num?)?.toInt(),
  businessType: (json['business_type'] as List<dynamic>?)
      ?.map((e) => BusinessType.fromJson(e as Map<String, dynamic>))
      .toList(),
  subBusinessType: (json['sub_business_type'] as List<dynamic>?)
      ?.map((e) => SubBusinessType.fromJson(e as Map<String, dynamic>))
      .toList(),
  storeAvgRating: (json['Store_avg_rating'] as num?)?.toInt(),
  storeTotalRating: (json['Store_Total_Rating'] as num?)?.toInt(),
  storeRoundedAvgRating: (json['Store_rounded_avg_rating'] as num?)?.toInt(),
  storeRatingSummary: (json['Store_rating_summary'] as List<dynamic>?)
      ?.map((e) => StoreRatingSummary.fromJson(e as Map<String, dynamic>))
      .toList(),
  countryIsd: json['country_isd'] as String?,
  storeAttribute: json['store_attribute'] as List<dynamic>?,
  storeOffers: json['store_offers'] as List<dynamic>?,
  productCount: (json['product_count'] as num?)?.toInt(),
  storeAccounts: (json['store_accounts'] as List<dynamic>?)
      ?.map((e) => StoreAccount.fromJson(e as Map<String, dynamic>))
      .toList(),
  seoTitle: json['seo_title'],
  recipeManagement: (json['recipe_management'] as num?)?.toInt(),
  orderDisclaimer: json['order_disclaimer'] as String?,
  isTestStore: (json['is_test_store'] as num?)?.toInt(),
  isDayCloseEnabled: (json['is_day_close_enabled'] as num?)?.toInt(),
  dynamicCashierSelection: (json['dynamic_cashier_selection'] as num?)?.toInt(),
);

Map<String, dynamic> _$$StoreResponseImplToJson(_$StoreResponseImpl instance) =>
    <String, dynamic>{
      'store_id': instance.storeId,
      'store_name': instance.storeName,
      'store_arabic_name': instance.storeArabicName,
      'store_url_name': instance.storeUrlName,
      'store_url': instance.storeUrl,
      'store_listing_id': instance.storeListingId,
      'store_listing_name': instance.storeListingName,
      'store_address': instance.storeAddress,
      'store_desc': instance.storeDesc,
      'store_phone': instance.storePhone,
      'store_landline': instance.storeLandline,
      'store_whatsapp_number': instance.storeWhatsappNumber,
      'store_email': instance.storeEmail,
      'store_website': instance.storeWebsite,
      'banners': instance.banners,
      'del_charge_type': instance.delChargeType,
      'area_id': instance.areaId,
      'area_name': instance.areaName,
      'store_logo': instance.storeLogo,
      'Small': instance.small,
      'Medium': instance.medium,
      'Large': instance.large,
      'store_long_logo': instance.storeLongLogo,
      'Small_long_image': instance.smallLongImage,
      'Medium_long_image': instance.mediumLongImage,
      'Large_long_image': instance.largeLongImage,
      'tax_num': instance.taxNum,
      'blog': instance.blog,
      'print_footer_content': instance.printFooterContent,
      'about_us': instance.aboutUs,
      'term_of_use': instance.termOfUse,
      'privacy_policy': instance.privacyPolicy,
      'warranty_returns': instance.warrantyReturns,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'fb_url': instance.fbUrl,
      'twitter_url': instance.twitterUrl,
      'youtube_url': instance.youtubeUrl,
      'instagram_url': instance.instagramUrl,
      'store_seo_keywords': instance.storeSeoKeywords,
      'store_tax_id': instance.storeTaxId,
      'language_id': instance.languageId,
      'currency_id': instance.currencyId,
      'currency_code': instance.currencyCode,
      'rounding': instance.rounding,
      'currency_arabic': instance.currencyArabic,
      'country_id': instance.countryId,
      'mobile_digit': instance.mobileDigit,
      'vendor_name': instance.vendorName,
      'vendor_id': instance.vendorId,
      'bank_holder': instance.bankHolder,
      'acct_number': instance.acctNumber,
      'ifsc_code': instance.ifscCode,
      'min_price': instance.minPrice,
      'map': instance.map,
      'theme_color': instance.themeColor,
      'item_wise_cancel': instance.itemWiseCancel,
      'item_wise_add': instance.itemWiseAdd,
      'item_wise_delivery': instance.itemWiseDelivery,
      'pos_integrated': instance.posIntegrated,
      'is_qr_menu': instance.isQrMenu,
      'parcel_charge': instance.parcelCharge,
      'max_price': instance.maxPrice,
      'licence_id': instance.licenceId,
      'licence_img': instance.licenceImg,
      'bank': instance.bank,
      'is_verified': instance.isVerified,
      'rowcount': instance.rowcount,
      'offer_count': instance.offerCount,
      'state_id': instance.stateId,
      'is_premium': instance.isPremium,
      'delivery_partners': instance.deliveryPartners,
      'order_attend_time': instance.orderAttendTime,
      'cart_count': instance.cartCount,
      'orderOptions': instance.orderOptions,
      'Allorder_options': instance.allorderOptions,
      'storeOrder_options': instance.storeOrderOptions,
      'storePayment_method': instance.storePaymentMethod,
      'slabSettings': instance.slabSettings,
      'delivery_note': instance.deliveryNote,
      'pickup_note': instance.pickupNote,
      'expected_delivery_hour': instance.expectedDeliveryHour,
      'processing_time': instance.processingTime,
      'expected_delivery_minute': instance.expectedDeliveryMinute,
      'expected_pickup_hour': instance.expectedPickupHour,
      'expected_pickup_minute': instance.expectedPickupMinute,
      'accept_orders': instance.acceptOrders,
      'accept_order_status': instance.acceptOrderStatus,
      'order_accepted_note': instance.orderAcceptedNote,
      'business_closed': instance.businessClosed,
      'min_order_amt': instance.minOrderAmt,
      'menu_order': instance.menuOrder,
      'has_whatsapp_order': instance.hasWhatsappOrder,
      'delayed_payment': instance.delayedPayment,
      'table_reservation': instance.tableReservation,
      'printing_method': instance.printingMethod,
      'ui_design_id': instance.uiDesignId,
      'is_global_inventory': instance.isGlobalInventory,
      'distance_in_km': instance.distanceInKm,
      'store_show': instance.storeShow,
      'working_hours': instance.workingHours,
      'Store_images': instance.storeImages,
      'favorite': instance.favorite,
      'del_assign_type': instance.delAssignType,
      'business_type': instance.businessType,
      'sub_business_type': instance.subBusinessType,
      'Store_avg_rating': instance.storeAvgRating,
      'Store_Total_Rating': instance.storeTotalRating,
      'Store_rounded_avg_rating': instance.storeRoundedAvgRating,
      'Store_rating_summary': instance.storeRatingSummary,
      'country_isd': instance.countryIsd,
      'store_attribute': instance.storeAttribute,
      'store_offers': instance.storeOffers,
      'product_count': instance.productCount,
      'store_accounts': instance.storeAccounts,
      'seo_title': instance.seoTitle,
      'recipe_management': instance.recipeManagement,
      'order_disclaimer': instance.orderDisclaimer,
      'is_test_store': instance.isTestStore,
      'is_day_close_enabled': instance.isDayCloseEnabled,
      'dynamic_cashier_selection': instance.dynamicCashierSelection,
    };

_$OrderOptionImpl _$$OrderOptionImplFromJson(Map<String, dynamic> json) =>
    _$OrderOptionImpl(
      storeId: (json['store_id'] as num?)?.toInt(),
      appTypeId: (json['app_type_id'] as num?)?.toInt(),
      orderOptionId: (json['order_option_id'] as num?)?.toInt(),
      orderOptionName: json['order_option_name'] as String?,
      slotTypeId: (json['slot_type_id'] as num?)?.toInt(),
      note: json['note'] as String?,
      orderOptionArabic: json['order_option_arabic'] as String?,
      arabicNote: json['arabic_note'] as String?,
    );

Map<String, dynamic> _$$OrderOptionImplToJson(_$OrderOptionImpl instance) =>
    <String, dynamic>{
      'store_id': instance.storeId,
      'app_type_id': instance.appTypeId,
      'order_option_id': instance.orderOptionId,
      'order_option_name': instance.orderOptionName,
      'slot_type_id': instance.slotTypeId,
      'note': instance.note,
      'order_option_arabic': instance.orderOptionArabic,
      'arabic_note': instance.arabicNote,
    };

_$BannerImpl _$$BannerImplFromJson(Map<String, dynamic> json) => _$BannerImpl(
  resourceId: (json['resource_id'] as num?)?.toInt(),
  storeName: json['store_name'] as String?,
  originalFilename: json['original_filename'] as String?,
  storeId: (json['store_id'] as num?)?.toInt(),
  storeListingId: (json['store_listing_id'] as num?)?.toInt(),
  languageId: (json['language_id'] as num?)?.toInt(),
  resourceTypeName: json['resource_type_name'] as String?,
  large: json['Large'] as String?,
  medium: json['Medium'] as String?,
  small: json['Small'] as String?,
  bannerText: json['banner_text'],
  bannerId: (json['banner_id'] as num?)?.toInt(),
  bannerUrlType: (json['banner_url_type'] as num?)?.toInt(),
  urlId: (json['url_id'] as num?)?.toInt(),
  uiDesignId: (json['ui_design_id'] as num?)?.toInt(),
  url: json['url'] as String?,
  storeUrlName: json['store_url_name'] as String?,
  slug: json['slug'] as String?,
  urlName: json['url_name'] as String?,
  storeCategoryUrl: json['store_category_url'] as String?,
  categorySlug: json['category_slug'] as String?,
);

Map<String, dynamic> _$$BannerImplToJson(_$BannerImpl instance) =>
    <String, dynamic>{
      'resource_id': instance.resourceId,
      'store_name': instance.storeName,
      'original_filename': instance.originalFilename,
      'store_id': instance.storeId,
      'store_listing_id': instance.storeListingId,
      'language_id': instance.languageId,
      'resource_type_name': instance.resourceTypeName,
      'Large': instance.large,
      'Medium': instance.medium,
      'Small': instance.small,
      'banner_text': instance.bannerText,
      'banner_id': instance.bannerId,
      'banner_url_type': instance.bannerUrlType,
      'url_id': instance.urlId,
      'ui_design_id': instance.uiDesignId,
      'url': instance.url,
      'store_url_name': instance.storeUrlName,
      'slug': instance.slug,
      'url_name': instance.urlName,
      'store_category_url': instance.storeCategoryUrl,
      'category_slug': instance.categorySlug,
    };

_$BusinessTypeImpl _$$BusinessTypeImplFromJson(Map<String, dynamic> json) =>
    _$BusinessTypeImpl(
      storeId: (json['store_id'] as num?)?.toInt(),
      storeBusinessTypeId: (json['store_business_type_id'] as num?)?.toInt(),
      businessTypeName: json['business_type_name'] as String?,
      businessTypeId: (json['business_type_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BusinessTypeImplToJson(_$BusinessTypeImpl instance) =>
    <String, dynamic>{
      'store_id': instance.storeId,
      'store_business_type_id': instance.storeBusinessTypeId,
      'business_type_name': instance.businessTypeName,
      'business_type_id': instance.businessTypeId,
    };

_$DeliveryPartnerImpl _$$DeliveryPartnerImplFromJson(
  Map<String, dynamic> json,
) => _$DeliveryPartnerImpl(
  storeId: (json['store_id'] as num?)?.toInt(),
  storeDelPartnerId: (json['store_del_partner_id'] as num?)?.toInt(),
  name: json['name'] as String?,
  deliveryPartnerId: (json['delivery_partner_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$$DeliveryPartnerImplToJson(
  _$DeliveryPartnerImpl instance,
) => <String, dynamic>{
  'store_id': instance.storeId,
  'store_del_partner_id': instance.storeDelPartnerId,
  'name': instance.name,
  'delivery_partner_id': instance.deliveryPartnerId,
};

_$StoreAccountImpl _$$StoreAccountImplFromJson(Map<String, dynamic> json) =>
    _$StoreAccountImpl(
      accountId: (json['account_id'] as num?)?.toInt(),
      accountName: json['account_name'] as String?,
      accountTypeId: (json['account_type_id'] as num?)?.toInt(),
      isActive: (json['is_active'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      isSynced: (json['is_synced'] as num?)?.toInt(),
      storeId: (json['store_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$StoreAccountImplToJson(_$StoreAccountImpl instance) =>
    <String, dynamic>{
      'account_id': instance.accountId,
      'account_name': instance.accountName,
      'account_type_id': instance.accountTypeId,
      'is_active': instance.isActive,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'is_synced': instance.isSynced,
      'store_id': instance.storeId,
    };

_$StoreImageImpl _$$StoreImageImplFromJson(Map<String, dynamic> json) =>
    _$StoreImageImpl(
      resourceId: (json['resource_id'] as num?)?.toInt(),
      referenceId: (json['reference_id'] as num?)?.toInt(),
      originalFilename: json['original_filename'] as String?,
      small: json['Small'] as String?,
      medium: json['Medium'] as String?,
      large: json['Large'] as String?,
    );

Map<String, dynamic> _$$StoreImageImplToJson(_$StoreImageImpl instance) =>
    <String, dynamic>{
      'resource_id': instance.resourceId,
      'reference_id': instance.referenceId,
      'original_filename': instance.originalFilename,
      'Small': instance.small,
      'Medium': instance.medium,
      'Large': instance.large,
    };

_$StoreRatingSummaryImpl _$$StoreRatingSummaryImplFromJson(
  Map<String, dynamic> json,
) => _$StoreRatingSummaryImpl(
  ratig: (json['Ratig'] as num?)?.toInt(),
  totalRating: (json['Total_Rating'] as num?)?.toInt(),
);

Map<String, dynamic> _$$StoreRatingSummaryImplToJson(
  _$StoreRatingSummaryImpl instance,
) => <String, dynamic>{
  'Ratig': instance.ratig,
  'Total_Rating': instance.totalRating,
};

_$SubBusinessTypeImpl _$$SubBusinessTypeImplFromJson(
  Map<String, dynamic> json,
) => _$SubBusinessTypeImpl(
  subBusinessTypeId: (json['sub_business_type_id'] as num?)?.toInt(),
  subBusinessTypeName: json['sub_business_type_name'] as String?,
);

Map<String, dynamic> _$$SubBusinessTypeImplToJson(
  _$SubBusinessTypeImpl instance,
) => <String, dynamic>{
  'sub_business_type_id': instance.subBusinessTypeId,
  'sub_business_type_name': instance.subBusinessTypeName,
};

_$WorkingHourImpl _$$WorkingHourImplFromJson(Map<String, dynamic> json) =>
    _$WorkingHourImpl(
      workingHoursFrom: json['working_hours_from'] as String?,
      workingHoursTo: json['working_hours_to'] as String?,
      workingDay: json['working_day'] as String?,
    );

Map<String, dynamic> _$$WorkingHourImplToJson(_$WorkingHourImpl instance) =>
    <String, dynamic>{
      'working_hours_from': instance.workingHoursFrom,
      'working_hours_to': instance.workingHoursTo,
      'working_day': instance.workingDay,
    };
