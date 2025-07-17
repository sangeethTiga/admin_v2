import 'package:admin_v2/shared/utils/helper/helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_detail_response.freezed.dart';
part 'order_detail_response.g.dart';

@freezed
class OrderDetailResponse with _$OrderDetailResponse {
  const factory OrderDetailResponse({
    @JsonKey(name: "prod_order_id") int? prodOrderId,
    @JsonKey(name: "reference_no") String? referenceNo,
    @JsonKey(name: "order_token") String? orderToken,
    @JsonKey(name: "order_status_name") String? orderStatusName,
    @JsonKey(name: "delivery_agent_id") String? deliveryAgentId,
    @JsonKey(name: "rounding") int? rounding,
    @JsonKey(name: "parcel_charge",fromJson: parseDouble) double? parcelCharge,
    @JsonKey(name: "table_details") List<dynamic>? tableDetails,
    @JsonKey(name: "cust_feedback_exist") int? custFeedbackExist,
    @JsonKey(name: "customer_feedbacks") String? customerFeedbacks,
    @JsonKey(name: "tenant_id") int? tenantId,
    @JsonKey(name: "delivery_agent_name") String? deliveryAgentName,
    @JsonKey(name: "delivery_boy_phone") int? deliveryBoyPhone,
    @JsonKey(name: "delivery_partner_id") int? deliveryPartnerId,
    @JsonKey(name: "delivery_partner_name") String? deliveryPartnerName,
    @JsonKey(name: "delivery_agent_status_id") int? deliveryAgentStatusId,
    @JsonKey(name: "del_partner_order_no") String? delPartnerOrderNo,
    @JsonKey(name: "order_status_arabic_name") String? orderStatusArabicName,
    @JsonKey(name: "pay_reference_number") String? payReferenceNumber,
    @JsonKey(name: "order_option_id") int? orderOptionId,
    @JsonKey(name: "del_pref_date") String? delPrefDate,
    @JsonKey(name: "del_pref_time") String? delPrefTime,
    @JsonKey(name: "pickup_date") String? pickupDate,
    @JsonKey(name: "pickup_time") String? pickupTime,
    @JsonKey(name: "order_option_date") String? orderOptionDate,
    @JsonKey(name: "order_option") String? orderOption,
    @JsonKey(name: "payment_method_id") int? paymentMethodId,
    @JsonKey(name: "pay_method_name") String? payMethodName,
    @JsonKey(name: "pay_method_arabic") String? payMethodArabic,
    @JsonKey(name: "payment_status_id") int? paymentStatusId,
    @JsonKey(name: "payment_status_name") String? paymentStatusName,
    @JsonKey(name: "payment_status_arabic") String? paymentStatusArabic,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "spot_discount_percentage", fromJson: parseNumberAsDouble)
    double? spotDiscountPercentage,
    @JsonKey(name: "spot_discount_amt", fromJson: parseNumberAsDouble)
    double? spotDiscountAmt,
    @JsonKey(name: "order_option_name") String? orderOptionName,
    @JsonKey(name: "order_status_id") int? orderStatusId,
    @JsonKey(name: "invoice_num") String? invoiceNum,
    @JsonKey(name: "order_date") String? orderDate,
    @JsonKey(name: "mob_order_date") String? mobOrderDate,
    @JsonKey(name: "mob_order_time") String? mobOrderTime,
    @JsonKey(name: "mob_o_date") String? mobODate,
    @JsonKey(name: "net_amount", fromJson: parseNumberAsDouble)
    double? netAmount,
    @JsonKey(name: "amount_in_cash", fromJson: parseNumberAsDouble)
    double? amountInCash,
    @JsonKey(name: "time_cash") String? timeCash,
    @JsonKey(name: "amount_by_card", fromJson: parseNumberAsDouble)
    double? amountByCard,
    @JsonKey(name: "time_card") String? timeCard,
    @JsonKey(name: "net_amount_wallet_money", fromJson: parseNumberAsDouble)
    double? netAmountWalletMoney,
    @JsonKey(name: "net_amount_wallet_points", fromJson: parseNumberAsDouble)
    double? netAmountWalletPoints,
    @JsonKey(name: "state_name") String? stateName,
    @JsonKey(name: "country_name") String? countryName,
    @JsonKey(name: "grand_total", fromJson: parseNumberAsDouble)
    double? grandTotal,
    @JsonKey(name: "account_id") int? accountId,
    @JsonKey(name: "loyalty_no") String? loyaltyNo,
    @JsonKey(name: "cust_id") int? custId,
    @JsonKey(name: "taxable_amount", fromJson: parseNumberAsDouble)
    double? taxableAmount,
    @JsonKey(name: "is_taxable") int? isTaxable,
    @JsonKey(name: "is_tax_inclusive") int? isTaxInclusive,
    @JsonKey(name: "tax_id") int? taxId,
    @JsonKey(name: "TRN") String? trn,
    @JsonKey(name: "non_taxable_amt", fromJson: parseNumberAsDouble)
    double? nonTaxableAmt,
    @JsonKey(name: "order_disc_percentage", fromJson: parseNumberAsDouble)
    double? orderDiscPercentage,
    @JsonKey(name: "ArabicNameSettings") int? arabicNameSettings,
    @JsonKey(name: "taxSettings") int? taxSettings,
    @JsonKey(name: "tax_name") String? taxName,
    @JsonKey(name: "order_tax_percentage", fromJson: parseNumberAsDouble)
    double? orderTaxPercentage,
    @JsonKey(name: "order_disc_amount", fromJson: parseNumberAsDouble)
    double? orderDiscAmount,
    @JsonKey(name: "tax_amount", fromJson: parseNumberAsDouble)
    double? taxAmount,
    @JsonKey(name: "shipping_charge", fromJson: parseNumberAsDouble)
    double? shippingCharge,
    @JsonKey(name: "weight_scale", fromJson: parseNumberAsDouble)
    double? weightScale,
    @JsonKey(name: "cancel_item_amount", fromJson: parseNumberAsDouble)
    double? cancelItemAmount,
    @JsonKey(name: "substitute_exist") int? substituteExist,
    @JsonKey(name: "sub_notification_status_id") int? subNotificationStatusId,
    @JsonKey(name: "sub_notification_status_name")
    String? subNotificationStatusName,
    @JsonKey(name: "surge_amt", fromJson: parseNumberAsDouble) double? surgeAmt,
    @JsonKey(name: "order_surges") List<dynamic>? orderSurges,
    @JsonKey(name: "supplier_id") int? supplierId,
    @JsonKey(name: "waiter_name") String? waiterName,
    @JsonKey(name: "cashier_name") String? cashierName,
    @JsonKey(name: "kiosk_name") String? kioskName,
    @JsonKey(name: "vehicle_no") String? vehicleNo,
    @JsonKey(name: "device_serial_no") String? deviceSerialNo,
    @JsonKey(name: "bill_no") String? billNo,
    @JsonKey(name: "bill_cust_name") String? billCustName,
    @JsonKey(name: "bill_flat_no") String? billFlatNo,
    @JsonKey(name: "bill_door_no") String? billDoorNo,
    @JsonKey(name: "bill_street_no") String? billStreetNo,
    @JsonKey(name: "bill_building_no") String? billBuildingNo,
    @JsonKey(name: "bill_zone") String? billZone,
    @JsonKey(name: "bill_location") String? billLocation,
    @JsonKey(name: "bill_city") String? billCity,
    @JsonKey(name: "bill_landmark") String? billLandmark,
    @JsonKey(name: "bill_area") String? billArea,
    @JsonKey(name: "bill_pobox") String? billPobox,
    @JsonKey(name: "bill_country_id") int? billCountryId,
    @JsonKey(name: "bill_state_id") int? billStateId,
    @JsonKey(name: "bill_email") String? billEmail,
    @JsonKey(name: "bill_mobile") String? billMobile,
    @JsonKey(name: "bill_phone") String? billPhone,
    @JsonKey(name: "ship_location") String? shipLocation,
    @JsonKey(name: "ship_cust_name") String? shipCustName,
    @JsonKey(name: "ship_city") String? shipCity,
    @JsonKey(name: "ship_landmark") String? shipLandmark,
    @JsonKey(name: "ship_state_id") int? shipStateId,
    @JsonKey(name: "ship_area") String? shipArea,
    @JsonKey(name: "ship_pobox") String? shipPobox,
    @JsonKey(name: "ship_country_id") int? shipCountryId,
    @JsonKey(name: "ship_email") String? shipEmail,
    @JsonKey(name: "ship_mobile") String? shipMobile,
    @JsonKey(name: "ship_phone") String? shipPhone,
    @JsonKey(name: "ship_street_no") String? shipStreetNo,
    @JsonKey(name: "ship_zone") String? shipZone,
    @JsonKey(name: "ship_flat_no") String? shipFlatNo,
    @JsonKey(name: "ship_building_no") String? shipBuildingNo,
    @JsonKey(name: "ship_door_no") String? shipDoorNo,
    @JsonKey(name: "cust_ship_address_id") int? custShipAddressId,
    @JsonKey(name: "order_note") String? orderNote,
    @JsonKey(name: "created_date") String? createdDate,
    @JsonKey(name: "updated_date") DateTime? updatedDate,
    @JsonKey(name: "currency_code") String? currencyCode,
    @JsonKey(name: "del_method_id") int? delMethodId,
    @JsonKey(name: "del_method_name") String? delMethodName,
    @JsonKey(name: "pickup_location_id") int? pickupLocationId,
    @JsonKey(name: "pickup_location_name") String? pickupLocationName,
    @JsonKey(name: "pickup_location_address") String? pickupLocationAddress,
    @JsonKey(name: "area_id") int? areaId,
    @JsonKey(name: "zip") String? zip,
    @JsonKey(name: "country_id") int? countryId,
    @JsonKey(name: "state_id") int? stateId,
    @JsonKey(name: "phone_no") int? phoneNo,
    @JsonKey(name: "email_id") String? emailId,
    @JsonKey(name: "pickup_country_name") String? pickupCountryName,
    @JsonKey(name: "pickup_state_name") String? pickupStateName,
    @JsonKey(name: "pickup_area_name") String? pickupAreaName,
    @JsonKey(name: "order_reject_reason") String? orderRejectReason,
    @JsonKey(name: "presentment_currency_id") int? presentmentCurrencyId,
    @JsonKey(name: "exchange_multiplier") int? exchangeMultiplier,
    @JsonKey(name: "presentment_currency_precision")
    int? presentmentCurrencyPrecision,
    @JsonKey(name: "presentment_currency_code") String? presentmentCurrencyCode,
    @JsonKey(name: "reference_type_id") int? referenceTypeId,
    @JsonKey(name: "order_statuses") List<OrderStatus>? orderStatuses,
    @JsonKey(name: "stores") List<Store>? stores,
    @JsonKey(name: "product_order_item")
    List<ProductOrderItem>? productOrderItem,
    @JsonKey(name: "wallet_enabled") int? walletEnabled,
    @JsonKey(name: "reward_points_enabled") int? rewardPointsEnabled,
    @JsonKey(name: "weighing_scale_enabled") int? weighingScaleEnabled,
    @JsonKey(name: "parcel_charge_enabled") int? parcelChargeEnabled,
  }) = _OrderDetailResponse;

  factory OrderDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailResponseFromJson(json);
}

@freezed
class OrderStatus with _$OrderStatus {
  const factory OrderStatus({
    @JsonKey(name: "order_status_id") int? orderStatusId,
    @JsonKey(name: "order_status_name") String? orderStatusName,
    @JsonKey(name: "order_status_arabic_name") String? orderStatusArabicName,
  }) = _OrderStatus;

  factory OrderStatus.fromJson(Map<String, dynamic> json) =>
      _$OrderStatusFromJson(json);
}

@freezed
class ProductOrderItem with _$ProductOrderItem {
  const factory ProductOrderItem({
    @JsonKey(name: "product_id") int? productId,
    @JsonKey(name: "product_name") String? productName,
    @JsonKey(name: "order_item_id") int? orderItemId,
    @JsonKey(name: "product_code") String? productCode,
    @JsonKey(name: "product_slug") String? productSlug,
    @JsonKey(name: "product_barcode") String? productBarcode,
    @JsonKey(name: "product_desc") String? productDesc,
    @JsonKey(name: "product_arabic_name") String? productArabicName,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "sub_notification_status_id") int? subNotificationStatusId,
    @JsonKey(name: "sub_notification_status_name")
    String? subNotificationStatusName,
    @JsonKey(name: "store_product_id") int? storeProductId,
    @JsonKey(name: "store_listing_id") int? storeListingId,
    @JsonKey(name: "unit_id") int? unitId,
    @JsonKey(name: "unit_name") String? unitName,
    @JsonKey(name: "unit_arabic_name") String? unitArabicName,
    @JsonKey(name: "tax_id") int? taxId,
    @JsonKey(name: "itemsubstitute") List<dynamic>? itemsubstitute,
    @JsonKey(name: "offer_price") int? offerPrice,
    @JsonKey(name: "product_price") double? productPrice,
    @JsonKey(name: "order_item_purchase_price") int? orderItemPurchasePrice,
    @JsonKey(name: "order_item_price") double? orderItemPrice,
    @JsonKey(name: "order_item_offer_price") int? orderItemOfferPrice,
    @JsonKey(name: "order_item_disc") int? orderItemDisc,
    @JsonKey(name: "order_item_net_amt") int? orderItemNetAmt,
    @JsonKey(name: "order_item_note") String? orderItemNote,
    @JsonKey(name: "order_item_total") int? orderItemTotal,
    @JsonKey(name: "del_method_id") int? delMethodId,
    @JsonKey(name: "del_method_charge") String? delMethodCharge,
    @JsonKey(name: "printed") int? printed,
    @JsonKey(name: "del_method_name") String? delMethodName,
    @JsonKey(name: "main_category_id") int? mainCategoryId,
    @JsonKey(name: "category_name") String? categoryName,
    @JsonKey(name: "is_free") int? isFree,
    @JsonKey(name: "service_price") int? servicePrice,
    @JsonKey(name: "order_status_id") int? orderStatusId,
    @JsonKey(name: "order_status_name") String? orderStatusName,
    @JsonKey(name: "order_item_status_history")
    List<dynamic>? orderItemStatusHistory,
    @JsonKey(name: "order_item_qty") int? orderItemQty,
    @JsonKey(name: "coupon_id") int? couponId,
    @JsonKey(name: "shipping_charge") int? shippingCharge,
    @JsonKey(name: "is_taxable") int? isTaxable,
    @JsonKey(name: "is_tax_inclusive") int? isTaxInclusive,
    @JsonKey(name: "tax_amt") dynamic taxAmt,
    @JsonKey(name: "order_tax_percentage") dynamic orderTaxPercentage,
    @JsonKey(name: "min_order_qty") int? minOrderQty,
    @JsonKey(name: "product_qty") int? productQty,
    @JsonKey(name: "product_tax_amt") int? productTaxAmt,
    @JsonKey(name: "product_tax_percentage") int? productTaxPercentage,
    @JsonKey(name: "product_featured") int? productFeatured,
    @JsonKey(name: "product_short_description") String? productShortDescription,
    @JsonKey(name: "prod_ship_charge") int? prodShipCharge,
    @JsonKey(name: "items_per_pack") int? itemsPerPack,
    @JsonKey(name: "volume") int? volume,
    @JsonKey(name: "product_sku") String? productSku,
    @JsonKey(name: "prod_purchase_limit") int? prodPurchaseLimit,
    @JsonKey(name: "kot_id") int? kotId,
    @JsonKey(name: "kot_name") String? kotName,
    @JsonKey(name: "prod_menu_order") int? prodMenuOrder,
    @JsonKey(name: "prod_height") int? prodHeight,
    @JsonKey(name: "prod_width") int? prodWidth,
    @JsonKey(name: "prod_length") int? prodLength,
    @JsonKey(name: "prod_weight") int? prodWeight,
    @JsonKey(name: "reorder_qty") int? reorderQty,
    @JsonKey(name: "prod_seo_title") String? prodSeoTitle,
    @JsonKey(name: "prod_seo_keyword") String? prodSeoKeyword,
    @JsonKey(name: "product_seo_url") String? productSeoUrl,
    @JsonKey(name: "prod_seo_desc") String? prodSeoDesc,
    @JsonKey(name: "maintain_stock") int? maintainStock,
    @JsonKey(name: "ignore_discount") int? ignoreDiscount,
    @JsonKey(name: "is_variant") int? isVariant,
    @JsonKey(name: "is_cancelled") int? isCancelled,
    @JsonKey(name: "cancelled_reason_date") String? cancelledReasonDate,
    @JsonKey(name: "cancelled_reason_id") int? cancelledReasonId,
    @JsonKey(name: "cancelled_reason") String? cancelledReason,
    @JsonKey(name: "images") List<dynamic>? images,
    @JsonKey(name: "variants") List<Variant>? variants,
    @JsonKey(name: "service_id") List<dynamic>? serviceId,
    @JsonKey(name: "services") List<dynamic>? services,
    @JsonKey(name: "service_groups") List<dynamic>? serviceGroups,
    @JsonKey(name: "product_categories")
    List<ProductCategory>? productCategories,
    @JsonKey(name: "is_shop_only") int? isShopOnly,
    @JsonKey(name: "add_to_cart") bool? addToCart,
    @JsonKey(name: "wishlisted") bool? wishlisted,
    @JsonKey(name: "quantity") int? quantity,
    @JsonKey(name: "default_quantity") int? defaultQuantity,
    @JsonKey(name: "prod_var_id") int? prodVarId,
    @JsonKey(name: "prod_var_code", fromJson: parseInt) int? prodVarCode,
    @JsonKey(name: "is_out_of_stock") int? isOutOfStock,
    @JsonKey(name: "change_price") int? changePrice,
    @JsonKey(name: "returnable_info") ReturnableInfo? returnableInfo,
    @JsonKey(name: "is_pre_order") int? isPreOrder,
    @JsonKey(name: "pre_order_fee") int? preOrderFee,
    @JsonKey(name: "release_time") int? releaseTime,
    @JsonKey(name: "pre_order_charging_option_id")
    int? preOrderChargingOptionId,
    @JsonKey(name: "takeaway_addon_price") int? takeawayAddonPrice,
    @JsonKey(name: "parcel_charge") double? parcelCharge,
  }) = _ProductOrderItem;

  factory ProductOrderItem.fromJson(Map<String, dynamic> json) =>
      _$ProductOrderItemFromJson(json);
}

@freezed
class ProductCategory with _$ProductCategory {
  const factory ProductCategory({
    @JsonKey(name: "product_category_id") int? productCategoryId,
    @JsonKey(name: "product_id") int? productId,
    @JsonKey(name: "category_id") int? categoryId,
    @JsonKey(name: "category_name") String? categoryName,
    @JsonKey(name: "category_slug") String? categorySlug,
    @JsonKey(name: "category_arabic_name") String? categoryArabicName,
  }) = _ProductCategory;

  factory ProductCategory.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryFromJson(json);
}

@freezed
class ReturnableInfo with _$ReturnableInfo {
  const factory ReturnableInfo({
    @JsonKey(name: "returnable_period") int? returnablePeriod,
    @JsonKey(name: "returnable_expired") int? returnableExpired,
    @JsonKey(name: "total_returnable_qty") int? totalReturnableQty,
    @JsonKey(name: "total_returned_qty") int? totalReturnedQty,
    @JsonKey(name: "return_button_show") int? returnButtonShow,
    @JsonKey(name: "return_button_content") String? returnButtonContent,
    @JsonKey(name: "return_label") String? returnLabel,
  }) = _ReturnableInfo;

  factory ReturnableInfo.fromJson(Map<String, dynamic> json) =>
      _$ReturnableInfoFromJson(json);
}

@freezed
class Variant with _$Variant {
  const factory Variant({
    @JsonKey(name: "attributes") List<Attribute>? attributes,
    @JsonKey(name: "attributeValues") String? attributeValues,
    @JsonKey(name: "product_id") int? productId,
    @JsonKey(name: "prod_var_code", fromJson: parseInt) int? prodVarCode,
    @JsonKey(name: "prod_var_id") int? prodVarId,
    @JsonKey(name: "var_name") String? varName,
    @JsonKey(name: "var_arabic_name") String? varArabicName,
    @JsonKey(name: "var_stock_qty") int? varStockQty,
    @JsonKey(name: "var_tax_amt") dynamic varTaxAmt,
    @JsonKey(name: "var_tax_inclusive") dynamic varTaxInclusive,
    @JsonKey(name: "var_tax_percentage") dynamic varTaxPercentage,
    @JsonKey(name: "var_taxable") dynamic varTaxable,
    @JsonKey(name: "variant_price") int? variantPrice,
    @JsonKey(name: "var_offerPrice") int? varOfferPrice,
    @JsonKey(name: "v_offer_to_date") String? vOfferToDate,
    @JsonKey(name: "offer_price_percentage") String? offerPricePercentage,
    @JsonKey(name: "variant_images") List<dynamic>? variantImages,
    @JsonKey(name: "v_add_to_cart") bool? vAddToCart,
    @JsonKey(name: "v_qty") int? vQty,
    @JsonKey(name: "w_cart_services") List<dynamic>? wCartServices,
  }) = _Variant;

  factory Variant.fromJson(Map<String, dynamic> json) =>
      _$VariantFromJson(json);
}

@freezed
class Attribute with _$Attribute {
  const factory Attribute({
    @JsonKey(name: "att_id") int? attId,
    @JsonKey(name: "att_name") String? attName,
    @JsonKey(name: "atr_value_id") int? atrValueId,
    @JsonKey(name: "att_value") String? attValue,
    @JsonKey(name: "checked") int? checked,
  }) = _Attribute;

  factory Attribute.fromJson(Map<String, dynamic> json) =>
      _$AttributeFromJson(json);
}

@freezed
class Store with _$Store {
  const factory Store({
    @JsonKey(name: "store_name") String? storeName,
    @JsonKey(name: "store_address") String? storeAddress,
    @JsonKey(name: "ui_design_id") int? uiDesignId,
    @JsonKey(name: "item_wise_cancel") int? itemWiseCancel,
    @JsonKey(name: "item_wise_add") int? itemWiseAdd,
  }) = _Store;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
}

double? parseNumberAsDouble(dynamic value) {
  if (value == null) return null;

  // Direct parsing without using parseNumber
  if (value is double) return value;
  if (value is int) return value.toDouble();
  if (value is String) return double.tryParse(value);

  return null;
}
