// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrderDetailResponse _$OrderDetailResponseFromJson(Map<String, dynamic> json) {
  return _OrderDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailResponse {
  @JsonKey(name: "prod_order_id")
  int? get prodOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: "reference_no")
  String? get referenceNo => throw _privateConstructorUsedError;
  @JsonKey(name: "order_token")
  String? get orderToken => throw _privateConstructorUsedError;
  @JsonKey(name: "order_status_name")
  String? get orderStatusName => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_agent_id")
  String? get deliveryAgentId => throw _privateConstructorUsedError;
  @JsonKey(name: "rounding")
  int? get rounding => throw _privateConstructorUsedError;
  @JsonKey(name: "parcel_charge")
  double? get parcelCharge => throw _privateConstructorUsedError;
  @JsonKey(name: "table_details")
  List<dynamic>? get tableDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "cust_feedback_exist")
  int? get custFeedbackExist => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_feedbacks")
  String? get customerFeedbacks => throw _privateConstructorUsedError;
  @JsonKey(name: "tenant_id")
  int? get tenantId => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_agent_name")
  String? get deliveryAgentName => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_boy_phone")
  int? get deliveryBoyPhone => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_partner_id")
  int? get deliveryPartnerId => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_partner_name")
  String? get deliveryPartnerName => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_agent_status_id")
  int? get deliveryAgentStatusId => throw _privateConstructorUsedError;
  @JsonKey(name: "del_partner_order_no")
  String? get delPartnerOrderNo => throw _privateConstructorUsedError;
  @JsonKey(name: "order_status_arabic_name")
  String? get orderStatusArabicName => throw _privateConstructorUsedError;
  @JsonKey(name: "pay_reference_number")
  String? get payReferenceNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "order_option_id")
  int? get orderOptionId => throw _privateConstructorUsedError;
  @JsonKey(name: "del_pref_date")
  String? get delPrefDate => throw _privateConstructorUsedError;
  @JsonKey(name: "del_pref_time")
  String? get delPrefTime => throw _privateConstructorUsedError;
  @JsonKey(name: "pickup_date")
  String? get pickupDate => throw _privateConstructorUsedError;
  @JsonKey(name: "pickup_time")
  String? get pickupTime => throw _privateConstructorUsedError;
  @JsonKey(name: "order_option_date")
  String? get orderOptionDate => throw _privateConstructorUsedError;
  @JsonKey(name: "order_option")
  String? get orderOption => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method_id")
  int? get paymentMethodId => throw _privateConstructorUsedError;
  @JsonKey(name: "pay_method_name")
  String? get payMethodName => throw _privateConstructorUsedError;
  @JsonKey(name: "pay_method_arabic")
  String? get payMethodArabic => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_status_id")
  int? get paymentStatusId => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_status_name")
  String? get paymentStatusName => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_status_arabic")
  String? get paymentStatusArabic => throw _privateConstructorUsedError;
  @JsonKey(name: "store_id")
  int? get storeId => throw _privateConstructorUsedError;
  @JsonKey(name: "spot_discount_percentage", fromJson: parseNumberAsDouble)
  double? get spotDiscountPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: "spot_discount_amt")
  int? get spotDiscountAmt => throw _privateConstructorUsedError;
  @JsonKey(name: "order_option_name")
  String? get orderOptionName => throw _privateConstructorUsedError;
  @JsonKey(name: "order_status_id")
  int? get orderStatusId => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_num")
  String? get invoiceNum => throw _privateConstructorUsedError;
  @JsonKey(name: "order_date")
  String? get orderDate => throw _privateConstructorUsedError;
  @JsonKey(name: "mob_order_date")
  String? get mobOrderDate => throw _privateConstructorUsedError;
  @JsonKey(name: "mob_order_time")
  String? get mobOrderTime => throw _privateConstructorUsedError;
  @JsonKey(name: "mob_o_date")
  String? get mobODate => throw _privateConstructorUsedError;
  @JsonKey(name: "net_amount")
  double? get netAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_in_cash")
  int? get amountInCash => throw _privateConstructorUsedError;
  @JsonKey(name: "time_cash")
  String? get timeCash => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_by_card")
  int? get amountByCard => throw _privateConstructorUsedError;
  @JsonKey(name: "time_card")
  String? get timeCard => throw _privateConstructorUsedError;
  @JsonKey(name: "net_amount_wallet_money")
  int? get netAmountWalletMoney => throw _privateConstructorUsedError;
  @JsonKey(name: "net_amount_wallet_points")
  int? get netAmountWalletPoints => throw _privateConstructorUsedError;
  @JsonKey(name: "state_name")
  String? get stateName => throw _privateConstructorUsedError;
  @JsonKey(name: "country_name")
  String? get countryName => throw _privateConstructorUsedError;
  @JsonKey(name: "grand_total")
  double? get grandTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "account_id")
  int? get accountId => throw _privateConstructorUsedError;
  @JsonKey(name: "loyalty_no")
  String? get loyaltyNo => throw _privateConstructorUsedError;
  @JsonKey(name: "cust_id")
  int? get custId => throw _privateConstructorUsedError;
  @JsonKey(name: "taxable_amount")
  double? get taxableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "is_taxable")
  int? get isTaxable => throw _privateConstructorUsedError;
  @JsonKey(name: "is_tax_inclusive")
  int? get isTaxInclusive => throw _privateConstructorUsedError;
  @JsonKey(name: "tax_id")
  int? get taxId => throw _privateConstructorUsedError;
  @JsonKey(name: "TRN")
  String? get trn => throw _privateConstructorUsedError;
  @JsonKey(name: "non_taxable_amt")
  int? get nonTaxableAmt => throw _privateConstructorUsedError;
  @JsonKey(name: "order_disc_percentage")
  int? get orderDiscPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: "ArabicNameSettings")
  int? get arabicNameSettings => throw _privateConstructorUsedError;
  @JsonKey(name: "taxSettings")
  int? get taxSettings => throw _privateConstructorUsedError;
  @JsonKey(name: "tax_name")
  String? get taxName => throw _privateConstructorUsedError;
  @JsonKey(name: "order_tax_percentage")
  int? get orderTaxPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: "order_disc_amount")
  int? get orderDiscAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "tax_amount")
  double? get taxAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_charge")
  int? get shippingCharge => throw _privateConstructorUsedError;
  @JsonKey(name: "weight_scale")
  int? get weightScale => throw _privateConstructorUsedError;
  @JsonKey(name: "cancel_item_amount")
  int? get cancelItemAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "substitute_exist")
  int? get substituteExist => throw _privateConstructorUsedError;
  @JsonKey(name: "sub_notification_status_id")
  int? get subNotificationStatusId => throw _privateConstructorUsedError;
  @JsonKey(name: "sub_notification_status_name")
  String? get subNotificationStatusName => throw _privateConstructorUsedError;
  @JsonKey(name: "surge_amt")
  int? get surgeAmt => throw _privateConstructorUsedError;
  @JsonKey(name: "order_surges")
  List<dynamic>? get orderSurges => throw _privateConstructorUsedError;
  @JsonKey(name: "supplier_id")
  int? get supplierId => throw _privateConstructorUsedError;
  @JsonKey(name: "waiter_name")
  String? get waiterName => throw _privateConstructorUsedError;
  @JsonKey(name: "cashier_name")
  String? get cashierName => throw _privateConstructorUsedError;
  @JsonKey(name: "kiosk_name")
  String? get kioskName => throw _privateConstructorUsedError;
  @JsonKey(name: "vehicle_no")
  String? get vehicleNo => throw _privateConstructorUsedError;
  @JsonKey(name: "device_serial_no")
  String? get deviceSerialNo => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_no")
  String? get billNo => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_cust_name")
  String? get billCustName => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_flat_no")
  String? get billFlatNo => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_door_no")
  String? get billDoorNo => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_street_no")
  String? get billStreetNo => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_building_no")
  String? get billBuildingNo => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_zone")
  String? get billZone => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_location")
  String? get billLocation => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_city")
  String? get billCity => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_landmark")
  String? get billLandmark => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_area")
  String? get billArea => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_pobox")
  String? get billPobox => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_country_id")
  int? get billCountryId => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_state_id")
  int? get billStateId => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_email")
  String? get billEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_mobile")
  String? get billMobile => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_phone")
  String? get billPhone => throw _privateConstructorUsedError;
  @JsonKey(name: "ship_location")
  String? get shipLocation => throw _privateConstructorUsedError;
  @JsonKey(name: "ship_cust_name")
  String? get shipCustName => throw _privateConstructorUsedError;
  @JsonKey(name: "ship_city")
  String? get shipCity => throw _privateConstructorUsedError;
  @JsonKey(name: "ship_landmark")
  String? get shipLandmark => throw _privateConstructorUsedError;
  @JsonKey(name: "ship_state_id")
  int? get shipStateId => throw _privateConstructorUsedError;
  @JsonKey(name: "ship_area")
  String? get shipArea => throw _privateConstructorUsedError;
  @JsonKey(name: "ship_pobox")
  String? get shipPobox => throw _privateConstructorUsedError;
  @JsonKey(name: "ship_country_id")
  int? get shipCountryId => throw _privateConstructorUsedError;
  @JsonKey(name: "ship_email")
  String? get shipEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "ship_mobile")
  String? get shipMobile => throw _privateConstructorUsedError;
  @JsonKey(name: "ship_phone")
  String? get shipPhone => throw _privateConstructorUsedError;
  @JsonKey(name: "ship_street_no")
  String? get shipStreetNo => throw _privateConstructorUsedError;
  @JsonKey(name: "ship_zone")
  String? get shipZone => throw _privateConstructorUsedError;
  @JsonKey(name: "ship_flat_no")
  String? get shipFlatNo => throw _privateConstructorUsedError;
  @JsonKey(name: "ship_building_no")
  String? get shipBuildingNo => throw _privateConstructorUsedError;
  @JsonKey(name: "ship_door_no")
  String? get shipDoorNo => throw _privateConstructorUsedError;
  @JsonKey(name: "cust_ship_address_id")
  int? get custShipAddressId => throw _privateConstructorUsedError;
  @JsonKey(name: "order_note")
  String? get orderNote => throw _privateConstructorUsedError;
  @JsonKey(name: "created_date")
  String? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_date")
  DateTime? get updatedDate => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_code")
  String? get currencyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "del_method_id")
  int? get delMethodId => throw _privateConstructorUsedError;
  @JsonKey(name: "del_method_name")
  String? get delMethodName => throw _privateConstructorUsedError;
  @JsonKey(name: "pickup_location_id")
  int? get pickupLocationId => throw _privateConstructorUsedError;
  @JsonKey(name: "pickup_location_name")
  String? get pickupLocationName => throw _privateConstructorUsedError;
  @JsonKey(name: "pickup_location_address")
  String? get pickupLocationAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "area_id")
  int? get areaId => throw _privateConstructorUsedError;
  @JsonKey(name: "zip")
  String? get zip => throw _privateConstructorUsedError;
  @JsonKey(name: "country_id")
  int? get countryId => throw _privateConstructorUsedError;
  @JsonKey(name: "state_id")
  int? get stateId => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_no")
  int? get phoneNo => throw _privateConstructorUsedError;
  @JsonKey(name: "email_id")
  String? get emailId => throw _privateConstructorUsedError;
  @JsonKey(name: "pickup_country_name")
  String? get pickupCountryName => throw _privateConstructorUsedError;
  @JsonKey(name: "pickup_state_name")
  String? get pickupStateName => throw _privateConstructorUsedError;
  @JsonKey(name: "pickup_area_name")
  String? get pickupAreaName => throw _privateConstructorUsedError;
  @JsonKey(name: "order_reject_reason")
  String? get orderRejectReason => throw _privateConstructorUsedError;
  @JsonKey(name: "presentment_currency_id")
  int? get presentmentCurrencyId => throw _privateConstructorUsedError;
  @JsonKey(name: "exchange_multiplier")
  int? get exchangeMultiplier => throw _privateConstructorUsedError;
  @JsonKey(name: "presentment_currency_precision")
  int? get presentmentCurrencyPrecision => throw _privateConstructorUsedError;
  @JsonKey(name: "presentment_currency_code")
  String? get presentmentCurrencyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "reference_type_id")
  int? get referenceTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "order_statuses")
  List<OrderStatus>? get orderStatuses => throw _privateConstructorUsedError;
  @JsonKey(name: "stores")
  List<Store>? get stores => throw _privateConstructorUsedError;
  @JsonKey(name: "product_order_item")
  List<ProductOrderItem>? get productOrderItem =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "wallet_enabled")
  int? get walletEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: "reward_points_enabled")
  int? get rewardPointsEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: "weighing_scale_enabled")
  int? get weighingScaleEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: "parcel_charge_enabled")
  int? get parcelChargeEnabled => throw _privateConstructorUsedError;

  /// Serializes this OrderDetailResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderDetailResponseCopyWith<OrderDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailResponseCopyWith<$Res> {
  factory $OrderDetailResponseCopyWith(
    OrderDetailResponse value,
    $Res Function(OrderDetailResponse) then,
  ) = _$OrderDetailResponseCopyWithImpl<$Res, OrderDetailResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "prod_order_id") int? prodOrderId,
    @JsonKey(name: "reference_no") String? referenceNo,
    @JsonKey(name: "order_token") String? orderToken,
    @JsonKey(name: "order_status_name") String? orderStatusName,
    @JsonKey(name: "delivery_agent_id") String? deliveryAgentId,
    @JsonKey(name: "rounding") int? rounding,
    @JsonKey(name: "parcel_charge") double? parcelCharge,
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
    @JsonKey(name: "spot_discount_amt") int? spotDiscountAmt,
    @JsonKey(name: "order_option_name") String? orderOptionName,
    @JsonKey(name: "order_status_id") int? orderStatusId,
    @JsonKey(name: "invoice_num") String? invoiceNum,
    @JsonKey(name: "order_date") String? orderDate,
    @JsonKey(name: "mob_order_date") String? mobOrderDate,
    @JsonKey(name: "mob_order_time") String? mobOrderTime,
    @JsonKey(name: "mob_o_date") String? mobODate,
    @JsonKey(name: "net_amount") double? netAmount,
    @JsonKey(name: "amount_in_cash") int? amountInCash,
    @JsonKey(name: "time_cash") String? timeCash,
    @JsonKey(name: "amount_by_card") int? amountByCard,
    @JsonKey(name: "time_card") String? timeCard,
    @JsonKey(name: "net_amount_wallet_money") int? netAmountWalletMoney,
    @JsonKey(name: "net_amount_wallet_points") int? netAmountWalletPoints,
    @JsonKey(name: "state_name") String? stateName,
    @JsonKey(name: "country_name") String? countryName,
    @JsonKey(name: "grand_total") double? grandTotal,
    @JsonKey(name: "account_id") int? accountId,
    @JsonKey(name: "loyalty_no") String? loyaltyNo,
    @JsonKey(name: "cust_id") int? custId,
    @JsonKey(name: "taxable_amount") double? taxableAmount,
    @JsonKey(name: "is_taxable") int? isTaxable,
    @JsonKey(name: "is_tax_inclusive") int? isTaxInclusive,
    @JsonKey(name: "tax_id") int? taxId,
    @JsonKey(name: "TRN") String? trn,
    @JsonKey(name: "non_taxable_amt") int? nonTaxableAmt,
    @JsonKey(name: "order_disc_percentage") int? orderDiscPercentage,
    @JsonKey(name: "ArabicNameSettings") int? arabicNameSettings,
    @JsonKey(name: "taxSettings") int? taxSettings,
    @JsonKey(name: "tax_name") String? taxName,
    @JsonKey(name: "order_tax_percentage") int? orderTaxPercentage,
    @JsonKey(name: "order_disc_amount") int? orderDiscAmount,
    @JsonKey(name: "tax_amount") double? taxAmount,
    @JsonKey(name: "shipping_charge") int? shippingCharge,
    @JsonKey(name: "weight_scale") int? weightScale,
    @JsonKey(name: "cancel_item_amount") int? cancelItemAmount,
    @JsonKey(name: "substitute_exist") int? substituteExist,
    @JsonKey(name: "sub_notification_status_id") int? subNotificationStatusId,
    @JsonKey(name: "sub_notification_status_name")
    String? subNotificationStatusName,
    @JsonKey(name: "surge_amt") int? surgeAmt,
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
  });
}

/// @nodoc
class _$OrderDetailResponseCopyWithImpl<$Res, $Val extends OrderDetailResponse>
    implements $OrderDetailResponseCopyWith<$Res> {
  _$OrderDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodOrderId = freezed,
    Object? referenceNo = freezed,
    Object? orderToken = freezed,
    Object? orderStatusName = freezed,
    Object? deliveryAgentId = freezed,
    Object? rounding = freezed,
    Object? parcelCharge = freezed,
    Object? tableDetails = freezed,
    Object? custFeedbackExist = freezed,
    Object? customerFeedbacks = freezed,
    Object? tenantId = freezed,
    Object? deliveryAgentName = freezed,
    Object? deliveryBoyPhone = freezed,
    Object? deliveryPartnerId = freezed,
    Object? deliveryPartnerName = freezed,
    Object? deliveryAgentStatusId = freezed,
    Object? delPartnerOrderNo = freezed,
    Object? orderStatusArabicName = freezed,
    Object? payReferenceNumber = freezed,
    Object? orderOptionId = freezed,
    Object? delPrefDate = freezed,
    Object? delPrefTime = freezed,
    Object? pickupDate = freezed,
    Object? pickupTime = freezed,
    Object? orderOptionDate = freezed,
    Object? orderOption = freezed,
    Object? paymentMethodId = freezed,
    Object? payMethodName = freezed,
    Object? payMethodArabic = freezed,
    Object? paymentStatusId = freezed,
    Object? paymentStatusName = freezed,
    Object? paymentStatusArabic = freezed,
    Object? storeId = freezed,
    Object? spotDiscountPercentage = freezed,
    Object? spotDiscountAmt = freezed,
    Object? orderOptionName = freezed,
    Object? orderStatusId = freezed,
    Object? invoiceNum = freezed,
    Object? orderDate = freezed,
    Object? mobOrderDate = freezed,
    Object? mobOrderTime = freezed,
    Object? mobODate = freezed,
    Object? netAmount = freezed,
    Object? amountInCash = freezed,
    Object? timeCash = freezed,
    Object? amountByCard = freezed,
    Object? timeCard = freezed,
    Object? netAmountWalletMoney = freezed,
    Object? netAmountWalletPoints = freezed,
    Object? stateName = freezed,
    Object? countryName = freezed,
    Object? grandTotal = freezed,
    Object? accountId = freezed,
    Object? loyaltyNo = freezed,
    Object? custId = freezed,
    Object? taxableAmount = freezed,
    Object? isTaxable = freezed,
    Object? isTaxInclusive = freezed,
    Object? taxId = freezed,
    Object? trn = freezed,
    Object? nonTaxableAmt = freezed,
    Object? orderDiscPercentage = freezed,
    Object? arabicNameSettings = freezed,
    Object? taxSettings = freezed,
    Object? taxName = freezed,
    Object? orderTaxPercentage = freezed,
    Object? orderDiscAmount = freezed,
    Object? taxAmount = freezed,
    Object? shippingCharge = freezed,
    Object? weightScale = freezed,
    Object? cancelItemAmount = freezed,
    Object? substituteExist = freezed,
    Object? subNotificationStatusId = freezed,
    Object? subNotificationStatusName = freezed,
    Object? surgeAmt = freezed,
    Object? orderSurges = freezed,
    Object? supplierId = freezed,
    Object? waiterName = freezed,
    Object? cashierName = freezed,
    Object? kioskName = freezed,
    Object? vehicleNo = freezed,
    Object? deviceSerialNo = freezed,
    Object? billNo = freezed,
    Object? billCustName = freezed,
    Object? billFlatNo = freezed,
    Object? billDoorNo = freezed,
    Object? billStreetNo = freezed,
    Object? billBuildingNo = freezed,
    Object? billZone = freezed,
    Object? billLocation = freezed,
    Object? billCity = freezed,
    Object? billLandmark = freezed,
    Object? billArea = freezed,
    Object? billPobox = freezed,
    Object? billCountryId = freezed,
    Object? billStateId = freezed,
    Object? billEmail = freezed,
    Object? billMobile = freezed,
    Object? billPhone = freezed,
    Object? shipLocation = freezed,
    Object? shipCustName = freezed,
    Object? shipCity = freezed,
    Object? shipLandmark = freezed,
    Object? shipStateId = freezed,
    Object? shipArea = freezed,
    Object? shipPobox = freezed,
    Object? shipCountryId = freezed,
    Object? shipEmail = freezed,
    Object? shipMobile = freezed,
    Object? shipPhone = freezed,
    Object? shipStreetNo = freezed,
    Object? shipZone = freezed,
    Object? shipFlatNo = freezed,
    Object? shipBuildingNo = freezed,
    Object? shipDoorNo = freezed,
    Object? custShipAddressId = freezed,
    Object? orderNote = freezed,
    Object? createdDate = freezed,
    Object? updatedDate = freezed,
    Object? currencyCode = freezed,
    Object? delMethodId = freezed,
    Object? delMethodName = freezed,
    Object? pickupLocationId = freezed,
    Object? pickupLocationName = freezed,
    Object? pickupLocationAddress = freezed,
    Object? areaId = freezed,
    Object? zip = freezed,
    Object? countryId = freezed,
    Object? stateId = freezed,
    Object? phoneNo = freezed,
    Object? emailId = freezed,
    Object? pickupCountryName = freezed,
    Object? pickupStateName = freezed,
    Object? pickupAreaName = freezed,
    Object? orderRejectReason = freezed,
    Object? presentmentCurrencyId = freezed,
    Object? exchangeMultiplier = freezed,
    Object? presentmentCurrencyPrecision = freezed,
    Object? presentmentCurrencyCode = freezed,
    Object? referenceTypeId = freezed,
    Object? orderStatuses = freezed,
    Object? stores = freezed,
    Object? productOrderItem = freezed,
    Object? walletEnabled = freezed,
    Object? rewardPointsEnabled = freezed,
    Object? weighingScaleEnabled = freezed,
    Object? parcelChargeEnabled = freezed,
  }) {
    return _then(
      _value.copyWith(
            prodOrderId: freezed == prodOrderId
                ? _value.prodOrderId
                : prodOrderId // ignore: cast_nullable_to_non_nullable
                      as int?,
            referenceNo: freezed == referenceNo
                ? _value.referenceNo
                : referenceNo // ignore: cast_nullable_to_non_nullable
                      as String?,
            orderToken: freezed == orderToken
                ? _value.orderToken
                : orderToken // ignore: cast_nullable_to_non_nullable
                      as String?,
            orderStatusName: freezed == orderStatusName
                ? _value.orderStatusName
                : orderStatusName // ignore: cast_nullable_to_non_nullable
                      as String?,
            deliveryAgentId: freezed == deliveryAgentId
                ? _value.deliveryAgentId
                : deliveryAgentId // ignore: cast_nullable_to_non_nullable
                      as String?,
            rounding: freezed == rounding
                ? _value.rounding
                : rounding // ignore: cast_nullable_to_non_nullable
                      as int?,
            parcelCharge: freezed == parcelCharge
                ? _value.parcelCharge
                : parcelCharge // ignore: cast_nullable_to_non_nullable
                      as double?,
            tableDetails: freezed == tableDetails
                ? _value.tableDetails
                : tableDetails // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            custFeedbackExist: freezed == custFeedbackExist
                ? _value.custFeedbackExist
                : custFeedbackExist // ignore: cast_nullable_to_non_nullable
                      as int?,
            customerFeedbacks: freezed == customerFeedbacks
                ? _value.customerFeedbacks
                : customerFeedbacks // ignore: cast_nullable_to_non_nullable
                      as String?,
            tenantId: freezed == tenantId
                ? _value.tenantId
                : tenantId // ignore: cast_nullable_to_non_nullable
                      as int?,
            deliveryAgentName: freezed == deliveryAgentName
                ? _value.deliveryAgentName
                : deliveryAgentName // ignore: cast_nullable_to_non_nullable
                      as String?,
            deliveryBoyPhone: freezed == deliveryBoyPhone
                ? _value.deliveryBoyPhone
                : deliveryBoyPhone // ignore: cast_nullable_to_non_nullable
                      as int?,
            deliveryPartnerId: freezed == deliveryPartnerId
                ? _value.deliveryPartnerId
                : deliveryPartnerId // ignore: cast_nullable_to_non_nullable
                      as int?,
            deliveryPartnerName: freezed == deliveryPartnerName
                ? _value.deliveryPartnerName
                : deliveryPartnerName // ignore: cast_nullable_to_non_nullable
                      as String?,
            deliveryAgentStatusId: freezed == deliveryAgentStatusId
                ? _value.deliveryAgentStatusId
                : deliveryAgentStatusId // ignore: cast_nullable_to_non_nullable
                      as int?,
            delPartnerOrderNo: freezed == delPartnerOrderNo
                ? _value.delPartnerOrderNo
                : delPartnerOrderNo // ignore: cast_nullable_to_non_nullable
                      as String?,
            orderStatusArabicName: freezed == orderStatusArabicName
                ? _value.orderStatusArabicName
                : orderStatusArabicName // ignore: cast_nullable_to_non_nullable
                      as String?,
            payReferenceNumber: freezed == payReferenceNumber
                ? _value.payReferenceNumber
                : payReferenceNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            orderOptionId: freezed == orderOptionId
                ? _value.orderOptionId
                : orderOptionId // ignore: cast_nullable_to_non_nullable
                      as int?,
            delPrefDate: freezed == delPrefDate
                ? _value.delPrefDate
                : delPrefDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            delPrefTime: freezed == delPrefTime
                ? _value.delPrefTime
                : delPrefTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            pickupDate: freezed == pickupDate
                ? _value.pickupDate
                : pickupDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            pickupTime: freezed == pickupTime
                ? _value.pickupTime
                : pickupTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            orderOptionDate: freezed == orderOptionDate
                ? _value.orderOptionDate
                : orderOptionDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            orderOption: freezed == orderOption
                ? _value.orderOption
                : orderOption // ignore: cast_nullable_to_non_nullable
                      as String?,
            paymentMethodId: freezed == paymentMethodId
                ? _value.paymentMethodId
                : paymentMethodId // ignore: cast_nullable_to_non_nullable
                      as int?,
            payMethodName: freezed == payMethodName
                ? _value.payMethodName
                : payMethodName // ignore: cast_nullable_to_non_nullable
                      as String?,
            payMethodArabic: freezed == payMethodArabic
                ? _value.payMethodArabic
                : payMethodArabic // ignore: cast_nullable_to_non_nullable
                      as String?,
            paymentStatusId: freezed == paymentStatusId
                ? _value.paymentStatusId
                : paymentStatusId // ignore: cast_nullable_to_non_nullable
                      as int?,
            paymentStatusName: freezed == paymentStatusName
                ? _value.paymentStatusName
                : paymentStatusName // ignore: cast_nullable_to_non_nullable
                      as String?,
            paymentStatusArabic: freezed == paymentStatusArabic
                ? _value.paymentStatusArabic
                : paymentStatusArabic // ignore: cast_nullable_to_non_nullable
                      as String?,
            storeId: freezed == storeId
                ? _value.storeId
                : storeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            spotDiscountPercentage: freezed == spotDiscountPercentage
                ? _value.spotDiscountPercentage
                : spotDiscountPercentage // ignore: cast_nullable_to_non_nullable
                      as double?,
            spotDiscountAmt: freezed == spotDiscountAmt
                ? _value.spotDiscountAmt
                : spotDiscountAmt // ignore: cast_nullable_to_non_nullable
                      as int?,
            orderOptionName: freezed == orderOptionName
                ? _value.orderOptionName
                : orderOptionName // ignore: cast_nullable_to_non_nullable
                      as String?,
            orderStatusId: freezed == orderStatusId
                ? _value.orderStatusId
                : orderStatusId // ignore: cast_nullable_to_non_nullable
                      as int?,
            invoiceNum: freezed == invoiceNum
                ? _value.invoiceNum
                : invoiceNum // ignore: cast_nullable_to_non_nullable
                      as String?,
            orderDate: freezed == orderDate
                ? _value.orderDate
                : orderDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            mobOrderDate: freezed == mobOrderDate
                ? _value.mobOrderDate
                : mobOrderDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            mobOrderTime: freezed == mobOrderTime
                ? _value.mobOrderTime
                : mobOrderTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            mobODate: freezed == mobODate
                ? _value.mobODate
                : mobODate // ignore: cast_nullable_to_non_nullable
                      as String?,
            netAmount: freezed == netAmount
                ? _value.netAmount
                : netAmount // ignore: cast_nullable_to_non_nullable
                      as double?,
            amountInCash: freezed == amountInCash
                ? _value.amountInCash
                : amountInCash // ignore: cast_nullable_to_non_nullable
                      as int?,
            timeCash: freezed == timeCash
                ? _value.timeCash
                : timeCash // ignore: cast_nullable_to_non_nullable
                      as String?,
            amountByCard: freezed == amountByCard
                ? _value.amountByCard
                : amountByCard // ignore: cast_nullable_to_non_nullable
                      as int?,
            timeCard: freezed == timeCard
                ? _value.timeCard
                : timeCard // ignore: cast_nullable_to_non_nullable
                      as String?,
            netAmountWalletMoney: freezed == netAmountWalletMoney
                ? _value.netAmountWalletMoney
                : netAmountWalletMoney // ignore: cast_nullable_to_non_nullable
                      as int?,
            netAmountWalletPoints: freezed == netAmountWalletPoints
                ? _value.netAmountWalletPoints
                : netAmountWalletPoints // ignore: cast_nullable_to_non_nullable
                      as int?,
            stateName: freezed == stateName
                ? _value.stateName
                : stateName // ignore: cast_nullable_to_non_nullable
                      as String?,
            countryName: freezed == countryName
                ? _value.countryName
                : countryName // ignore: cast_nullable_to_non_nullable
                      as String?,
            grandTotal: freezed == grandTotal
                ? _value.grandTotal
                : grandTotal // ignore: cast_nullable_to_non_nullable
                      as double?,
            accountId: freezed == accountId
                ? _value.accountId
                : accountId // ignore: cast_nullable_to_non_nullable
                      as int?,
            loyaltyNo: freezed == loyaltyNo
                ? _value.loyaltyNo
                : loyaltyNo // ignore: cast_nullable_to_non_nullable
                      as String?,
            custId: freezed == custId
                ? _value.custId
                : custId // ignore: cast_nullable_to_non_nullable
                      as int?,
            taxableAmount: freezed == taxableAmount
                ? _value.taxableAmount
                : taxableAmount // ignore: cast_nullable_to_non_nullable
                      as double?,
            isTaxable: freezed == isTaxable
                ? _value.isTaxable
                : isTaxable // ignore: cast_nullable_to_non_nullable
                      as int?,
            isTaxInclusive: freezed == isTaxInclusive
                ? _value.isTaxInclusive
                : isTaxInclusive // ignore: cast_nullable_to_non_nullable
                      as int?,
            taxId: freezed == taxId
                ? _value.taxId
                : taxId // ignore: cast_nullable_to_non_nullable
                      as int?,
            trn: freezed == trn
                ? _value.trn
                : trn // ignore: cast_nullable_to_non_nullable
                      as String?,
            nonTaxableAmt: freezed == nonTaxableAmt
                ? _value.nonTaxableAmt
                : nonTaxableAmt // ignore: cast_nullable_to_non_nullable
                      as int?,
            orderDiscPercentage: freezed == orderDiscPercentage
                ? _value.orderDiscPercentage
                : orderDiscPercentage // ignore: cast_nullable_to_non_nullable
                      as int?,
            arabicNameSettings: freezed == arabicNameSettings
                ? _value.arabicNameSettings
                : arabicNameSettings // ignore: cast_nullable_to_non_nullable
                      as int?,
            taxSettings: freezed == taxSettings
                ? _value.taxSettings
                : taxSettings // ignore: cast_nullable_to_non_nullable
                      as int?,
            taxName: freezed == taxName
                ? _value.taxName
                : taxName // ignore: cast_nullable_to_non_nullable
                      as String?,
            orderTaxPercentage: freezed == orderTaxPercentage
                ? _value.orderTaxPercentage
                : orderTaxPercentage // ignore: cast_nullable_to_non_nullable
                      as int?,
            orderDiscAmount: freezed == orderDiscAmount
                ? _value.orderDiscAmount
                : orderDiscAmount // ignore: cast_nullable_to_non_nullable
                      as int?,
            taxAmount: freezed == taxAmount
                ? _value.taxAmount
                : taxAmount // ignore: cast_nullable_to_non_nullable
                      as double?,
            shippingCharge: freezed == shippingCharge
                ? _value.shippingCharge
                : shippingCharge // ignore: cast_nullable_to_non_nullable
                      as int?,
            weightScale: freezed == weightScale
                ? _value.weightScale
                : weightScale // ignore: cast_nullable_to_non_nullable
                      as int?,
            cancelItemAmount: freezed == cancelItemAmount
                ? _value.cancelItemAmount
                : cancelItemAmount // ignore: cast_nullable_to_non_nullable
                      as int?,
            substituteExist: freezed == substituteExist
                ? _value.substituteExist
                : substituteExist // ignore: cast_nullable_to_non_nullable
                      as int?,
            subNotificationStatusId: freezed == subNotificationStatusId
                ? _value.subNotificationStatusId
                : subNotificationStatusId // ignore: cast_nullable_to_non_nullable
                      as int?,
            subNotificationStatusName: freezed == subNotificationStatusName
                ? _value.subNotificationStatusName
                : subNotificationStatusName // ignore: cast_nullable_to_non_nullable
                      as String?,
            surgeAmt: freezed == surgeAmt
                ? _value.surgeAmt
                : surgeAmt // ignore: cast_nullable_to_non_nullable
                      as int?,
            orderSurges: freezed == orderSurges
                ? _value.orderSurges
                : orderSurges // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            supplierId: freezed == supplierId
                ? _value.supplierId
                : supplierId // ignore: cast_nullable_to_non_nullable
                      as int?,
            waiterName: freezed == waiterName
                ? _value.waiterName
                : waiterName // ignore: cast_nullable_to_non_nullable
                      as String?,
            cashierName: freezed == cashierName
                ? _value.cashierName
                : cashierName // ignore: cast_nullable_to_non_nullable
                      as String?,
            kioskName: freezed == kioskName
                ? _value.kioskName
                : kioskName // ignore: cast_nullable_to_non_nullable
                      as String?,
            vehicleNo: freezed == vehicleNo
                ? _value.vehicleNo
                : vehicleNo // ignore: cast_nullable_to_non_nullable
                      as String?,
            deviceSerialNo: freezed == deviceSerialNo
                ? _value.deviceSerialNo
                : deviceSerialNo // ignore: cast_nullable_to_non_nullable
                      as String?,
            billNo: freezed == billNo
                ? _value.billNo
                : billNo // ignore: cast_nullable_to_non_nullable
                      as String?,
            billCustName: freezed == billCustName
                ? _value.billCustName
                : billCustName // ignore: cast_nullable_to_non_nullable
                      as String?,
            billFlatNo: freezed == billFlatNo
                ? _value.billFlatNo
                : billFlatNo // ignore: cast_nullable_to_non_nullable
                      as String?,
            billDoorNo: freezed == billDoorNo
                ? _value.billDoorNo
                : billDoorNo // ignore: cast_nullable_to_non_nullable
                      as String?,
            billStreetNo: freezed == billStreetNo
                ? _value.billStreetNo
                : billStreetNo // ignore: cast_nullable_to_non_nullable
                      as String?,
            billBuildingNo: freezed == billBuildingNo
                ? _value.billBuildingNo
                : billBuildingNo // ignore: cast_nullable_to_non_nullable
                      as String?,
            billZone: freezed == billZone
                ? _value.billZone
                : billZone // ignore: cast_nullable_to_non_nullable
                      as String?,
            billLocation: freezed == billLocation
                ? _value.billLocation
                : billLocation // ignore: cast_nullable_to_non_nullable
                      as String?,
            billCity: freezed == billCity
                ? _value.billCity
                : billCity // ignore: cast_nullable_to_non_nullable
                      as String?,
            billLandmark: freezed == billLandmark
                ? _value.billLandmark
                : billLandmark // ignore: cast_nullable_to_non_nullable
                      as String?,
            billArea: freezed == billArea
                ? _value.billArea
                : billArea // ignore: cast_nullable_to_non_nullable
                      as String?,
            billPobox: freezed == billPobox
                ? _value.billPobox
                : billPobox // ignore: cast_nullable_to_non_nullable
                      as String?,
            billCountryId: freezed == billCountryId
                ? _value.billCountryId
                : billCountryId // ignore: cast_nullable_to_non_nullable
                      as int?,
            billStateId: freezed == billStateId
                ? _value.billStateId
                : billStateId // ignore: cast_nullable_to_non_nullable
                      as int?,
            billEmail: freezed == billEmail
                ? _value.billEmail
                : billEmail // ignore: cast_nullable_to_non_nullable
                      as String?,
            billMobile: freezed == billMobile
                ? _value.billMobile
                : billMobile // ignore: cast_nullable_to_non_nullable
                      as String?,
            billPhone: freezed == billPhone
                ? _value.billPhone
                : billPhone // ignore: cast_nullable_to_non_nullable
                      as String?,
            shipLocation: freezed == shipLocation
                ? _value.shipLocation
                : shipLocation // ignore: cast_nullable_to_non_nullable
                      as String?,
            shipCustName: freezed == shipCustName
                ? _value.shipCustName
                : shipCustName // ignore: cast_nullable_to_non_nullable
                      as String?,
            shipCity: freezed == shipCity
                ? _value.shipCity
                : shipCity // ignore: cast_nullable_to_non_nullable
                      as String?,
            shipLandmark: freezed == shipLandmark
                ? _value.shipLandmark
                : shipLandmark // ignore: cast_nullable_to_non_nullable
                      as String?,
            shipStateId: freezed == shipStateId
                ? _value.shipStateId
                : shipStateId // ignore: cast_nullable_to_non_nullable
                      as int?,
            shipArea: freezed == shipArea
                ? _value.shipArea
                : shipArea // ignore: cast_nullable_to_non_nullable
                      as String?,
            shipPobox: freezed == shipPobox
                ? _value.shipPobox
                : shipPobox // ignore: cast_nullable_to_non_nullable
                      as String?,
            shipCountryId: freezed == shipCountryId
                ? _value.shipCountryId
                : shipCountryId // ignore: cast_nullable_to_non_nullable
                      as int?,
            shipEmail: freezed == shipEmail
                ? _value.shipEmail
                : shipEmail // ignore: cast_nullable_to_non_nullable
                      as String?,
            shipMobile: freezed == shipMobile
                ? _value.shipMobile
                : shipMobile // ignore: cast_nullable_to_non_nullable
                      as String?,
            shipPhone: freezed == shipPhone
                ? _value.shipPhone
                : shipPhone // ignore: cast_nullable_to_non_nullable
                      as String?,
            shipStreetNo: freezed == shipStreetNo
                ? _value.shipStreetNo
                : shipStreetNo // ignore: cast_nullable_to_non_nullable
                      as String?,
            shipZone: freezed == shipZone
                ? _value.shipZone
                : shipZone // ignore: cast_nullable_to_non_nullable
                      as String?,
            shipFlatNo: freezed == shipFlatNo
                ? _value.shipFlatNo
                : shipFlatNo // ignore: cast_nullable_to_non_nullable
                      as String?,
            shipBuildingNo: freezed == shipBuildingNo
                ? _value.shipBuildingNo
                : shipBuildingNo // ignore: cast_nullable_to_non_nullable
                      as String?,
            shipDoorNo: freezed == shipDoorNo
                ? _value.shipDoorNo
                : shipDoorNo // ignore: cast_nullable_to_non_nullable
                      as String?,
            custShipAddressId: freezed == custShipAddressId
                ? _value.custShipAddressId
                : custShipAddressId // ignore: cast_nullable_to_non_nullable
                      as int?,
            orderNote: freezed == orderNote
                ? _value.orderNote
                : orderNote // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdDate: freezed == createdDate
                ? _value.createdDate
                : createdDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedDate: freezed == updatedDate
                ? _value.updatedDate
                : updatedDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            currencyCode: freezed == currencyCode
                ? _value.currencyCode
                : currencyCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            delMethodId: freezed == delMethodId
                ? _value.delMethodId
                : delMethodId // ignore: cast_nullable_to_non_nullable
                      as int?,
            delMethodName: freezed == delMethodName
                ? _value.delMethodName
                : delMethodName // ignore: cast_nullable_to_non_nullable
                      as String?,
            pickupLocationId: freezed == pickupLocationId
                ? _value.pickupLocationId
                : pickupLocationId // ignore: cast_nullable_to_non_nullable
                      as int?,
            pickupLocationName: freezed == pickupLocationName
                ? _value.pickupLocationName
                : pickupLocationName // ignore: cast_nullable_to_non_nullable
                      as String?,
            pickupLocationAddress: freezed == pickupLocationAddress
                ? _value.pickupLocationAddress
                : pickupLocationAddress // ignore: cast_nullable_to_non_nullable
                      as String?,
            areaId: freezed == areaId
                ? _value.areaId
                : areaId // ignore: cast_nullable_to_non_nullable
                      as int?,
            zip: freezed == zip
                ? _value.zip
                : zip // ignore: cast_nullable_to_non_nullable
                      as String?,
            countryId: freezed == countryId
                ? _value.countryId
                : countryId // ignore: cast_nullable_to_non_nullable
                      as int?,
            stateId: freezed == stateId
                ? _value.stateId
                : stateId // ignore: cast_nullable_to_non_nullable
                      as int?,
            phoneNo: freezed == phoneNo
                ? _value.phoneNo
                : phoneNo // ignore: cast_nullable_to_non_nullable
                      as int?,
            emailId: freezed == emailId
                ? _value.emailId
                : emailId // ignore: cast_nullable_to_non_nullable
                      as String?,
            pickupCountryName: freezed == pickupCountryName
                ? _value.pickupCountryName
                : pickupCountryName // ignore: cast_nullable_to_non_nullable
                      as String?,
            pickupStateName: freezed == pickupStateName
                ? _value.pickupStateName
                : pickupStateName // ignore: cast_nullable_to_non_nullable
                      as String?,
            pickupAreaName: freezed == pickupAreaName
                ? _value.pickupAreaName
                : pickupAreaName // ignore: cast_nullable_to_non_nullable
                      as String?,
            orderRejectReason: freezed == orderRejectReason
                ? _value.orderRejectReason
                : orderRejectReason // ignore: cast_nullable_to_non_nullable
                      as String?,
            presentmentCurrencyId: freezed == presentmentCurrencyId
                ? _value.presentmentCurrencyId
                : presentmentCurrencyId // ignore: cast_nullable_to_non_nullable
                      as int?,
            exchangeMultiplier: freezed == exchangeMultiplier
                ? _value.exchangeMultiplier
                : exchangeMultiplier // ignore: cast_nullable_to_non_nullable
                      as int?,
            presentmentCurrencyPrecision:
                freezed == presentmentCurrencyPrecision
                ? _value.presentmentCurrencyPrecision
                : presentmentCurrencyPrecision // ignore: cast_nullable_to_non_nullable
                      as int?,
            presentmentCurrencyCode: freezed == presentmentCurrencyCode
                ? _value.presentmentCurrencyCode
                : presentmentCurrencyCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            referenceTypeId: freezed == referenceTypeId
                ? _value.referenceTypeId
                : referenceTypeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            orderStatuses: freezed == orderStatuses
                ? _value.orderStatuses
                : orderStatuses // ignore: cast_nullable_to_non_nullable
                      as List<OrderStatus>?,
            stores: freezed == stores
                ? _value.stores
                : stores // ignore: cast_nullable_to_non_nullable
                      as List<Store>?,
            productOrderItem: freezed == productOrderItem
                ? _value.productOrderItem
                : productOrderItem // ignore: cast_nullable_to_non_nullable
                      as List<ProductOrderItem>?,
            walletEnabled: freezed == walletEnabled
                ? _value.walletEnabled
                : walletEnabled // ignore: cast_nullable_to_non_nullable
                      as int?,
            rewardPointsEnabled: freezed == rewardPointsEnabled
                ? _value.rewardPointsEnabled
                : rewardPointsEnabled // ignore: cast_nullable_to_non_nullable
                      as int?,
            weighingScaleEnabled: freezed == weighingScaleEnabled
                ? _value.weighingScaleEnabled
                : weighingScaleEnabled // ignore: cast_nullable_to_non_nullable
                      as int?,
            parcelChargeEnabled: freezed == parcelChargeEnabled
                ? _value.parcelChargeEnabled
                : parcelChargeEnabled // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderDetailResponseImplCopyWith<$Res>
    implements $OrderDetailResponseCopyWith<$Res> {
  factory _$$OrderDetailResponseImplCopyWith(
    _$OrderDetailResponseImpl value,
    $Res Function(_$OrderDetailResponseImpl) then,
  ) = __$$OrderDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "prod_order_id") int? prodOrderId,
    @JsonKey(name: "reference_no") String? referenceNo,
    @JsonKey(name: "order_token") String? orderToken,
    @JsonKey(name: "order_status_name") String? orderStatusName,
    @JsonKey(name: "delivery_agent_id") String? deliveryAgentId,
    @JsonKey(name: "rounding") int? rounding,
    @JsonKey(name: "parcel_charge") double? parcelCharge,
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
    @JsonKey(name: "spot_discount_amt") int? spotDiscountAmt,
    @JsonKey(name: "order_option_name") String? orderOptionName,
    @JsonKey(name: "order_status_id") int? orderStatusId,
    @JsonKey(name: "invoice_num") String? invoiceNum,
    @JsonKey(name: "order_date") String? orderDate,
    @JsonKey(name: "mob_order_date") String? mobOrderDate,
    @JsonKey(name: "mob_order_time") String? mobOrderTime,
    @JsonKey(name: "mob_o_date") String? mobODate,
    @JsonKey(name: "net_amount") double? netAmount,
    @JsonKey(name: "amount_in_cash") int? amountInCash,
    @JsonKey(name: "time_cash") String? timeCash,
    @JsonKey(name: "amount_by_card") int? amountByCard,
    @JsonKey(name: "time_card") String? timeCard,
    @JsonKey(name: "net_amount_wallet_money") int? netAmountWalletMoney,
    @JsonKey(name: "net_amount_wallet_points") int? netAmountWalletPoints,
    @JsonKey(name: "state_name") String? stateName,
    @JsonKey(name: "country_name") String? countryName,
    @JsonKey(name: "grand_total") double? grandTotal,
    @JsonKey(name: "account_id") int? accountId,
    @JsonKey(name: "loyalty_no") String? loyaltyNo,
    @JsonKey(name: "cust_id") int? custId,
    @JsonKey(name: "taxable_amount") double? taxableAmount,
    @JsonKey(name: "is_taxable") int? isTaxable,
    @JsonKey(name: "is_tax_inclusive") int? isTaxInclusive,
    @JsonKey(name: "tax_id") int? taxId,
    @JsonKey(name: "TRN") String? trn,
    @JsonKey(name: "non_taxable_amt") int? nonTaxableAmt,
    @JsonKey(name: "order_disc_percentage") int? orderDiscPercentage,
    @JsonKey(name: "ArabicNameSettings") int? arabicNameSettings,
    @JsonKey(name: "taxSettings") int? taxSettings,
    @JsonKey(name: "tax_name") String? taxName,
    @JsonKey(name: "order_tax_percentage") int? orderTaxPercentage,
    @JsonKey(name: "order_disc_amount") int? orderDiscAmount,
    @JsonKey(name: "tax_amount") double? taxAmount,
    @JsonKey(name: "shipping_charge") int? shippingCharge,
    @JsonKey(name: "weight_scale") int? weightScale,
    @JsonKey(name: "cancel_item_amount") int? cancelItemAmount,
    @JsonKey(name: "substitute_exist") int? substituteExist,
    @JsonKey(name: "sub_notification_status_id") int? subNotificationStatusId,
    @JsonKey(name: "sub_notification_status_name")
    String? subNotificationStatusName,
    @JsonKey(name: "surge_amt") int? surgeAmt,
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
  });
}

/// @nodoc
class __$$OrderDetailResponseImplCopyWithImpl<$Res>
    extends _$OrderDetailResponseCopyWithImpl<$Res, _$OrderDetailResponseImpl>
    implements _$$OrderDetailResponseImplCopyWith<$Res> {
  __$$OrderDetailResponseImplCopyWithImpl(
    _$OrderDetailResponseImpl _value,
    $Res Function(_$OrderDetailResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodOrderId = freezed,
    Object? referenceNo = freezed,
    Object? orderToken = freezed,
    Object? orderStatusName = freezed,
    Object? deliveryAgentId = freezed,
    Object? rounding = freezed,
    Object? parcelCharge = freezed,
    Object? tableDetails = freezed,
    Object? custFeedbackExist = freezed,
    Object? customerFeedbacks = freezed,
    Object? tenantId = freezed,
    Object? deliveryAgentName = freezed,
    Object? deliveryBoyPhone = freezed,
    Object? deliveryPartnerId = freezed,
    Object? deliveryPartnerName = freezed,
    Object? deliveryAgentStatusId = freezed,
    Object? delPartnerOrderNo = freezed,
    Object? orderStatusArabicName = freezed,
    Object? payReferenceNumber = freezed,
    Object? orderOptionId = freezed,
    Object? delPrefDate = freezed,
    Object? delPrefTime = freezed,
    Object? pickupDate = freezed,
    Object? pickupTime = freezed,
    Object? orderOptionDate = freezed,
    Object? orderOption = freezed,
    Object? paymentMethodId = freezed,
    Object? payMethodName = freezed,
    Object? payMethodArabic = freezed,
    Object? paymentStatusId = freezed,
    Object? paymentStatusName = freezed,
    Object? paymentStatusArabic = freezed,
    Object? storeId = freezed,
    Object? spotDiscountPercentage = freezed,
    Object? spotDiscountAmt = freezed,
    Object? orderOptionName = freezed,
    Object? orderStatusId = freezed,
    Object? invoiceNum = freezed,
    Object? orderDate = freezed,
    Object? mobOrderDate = freezed,
    Object? mobOrderTime = freezed,
    Object? mobODate = freezed,
    Object? netAmount = freezed,
    Object? amountInCash = freezed,
    Object? timeCash = freezed,
    Object? amountByCard = freezed,
    Object? timeCard = freezed,
    Object? netAmountWalletMoney = freezed,
    Object? netAmountWalletPoints = freezed,
    Object? stateName = freezed,
    Object? countryName = freezed,
    Object? grandTotal = freezed,
    Object? accountId = freezed,
    Object? loyaltyNo = freezed,
    Object? custId = freezed,
    Object? taxableAmount = freezed,
    Object? isTaxable = freezed,
    Object? isTaxInclusive = freezed,
    Object? taxId = freezed,
    Object? trn = freezed,
    Object? nonTaxableAmt = freezed,
    Object? orderDiscPercentage = freezed,
    Object? arabicNameSettings = freezed,
    Object? taxSettings = freezed,
    Object? taxName = freezed,
    Object? orderTaxPercentage = freezed,
    Object? orderDiscAmount = freezed,
    Object? taxAmount = freezed,
    Object? shippingCharge = freezed,
    Object? weightScale = freezed,
    Object? cancelItemAmount = freezed,
    Object? substituteExist = freezed,
    Object? subNotificationStatusId = freezed,
    Object? subNotificationStatusName = freezed,
    Object? surgeAmt = freezed,
    Object? orderSurges = freezed,
    Object? supplierId = freezed,
    Object? waiterName = freezed,
    Object? cashierName = freezed,
    Object? kioskName = freezed,
    Object? vehicleNo = freezed,
    Object? deviceSerialNo = freezed,
    Object? billNo = freezed,
    Object? billCustName = freezed,
    Object? billFlatNo = freezed,
    Object? billDoorNo = freezed,
    Object? billStreetNo = freezed,
    Object? billBuildingNo = freezed,
    Object? billZone = freezed,
    Object? billLocation = freezed,
    Object? billCity = freezed,
    Object? billLandmark = freezed,
    Object? billArea = freezed,
    Object? billPobox = freezed,
    Object? billCountryId = freezed,
    Object? billStateId = freezed,
    Object? billEmail = freezed,
    Object? billMobile = freezed,
    Object? billPhone = freezed,
    Object? shipLocation = freezed,
    Object? shipCustName = freezed,
    Object? shipCity = freezed,
    Object? shipLandmark = freezed,
    Object? shipStateId = freezed,
    Object? shipArea = freezed,
    Object? shipPobox = freezed,
    Object? shipCountryId = freezed,
    Object? shipEmail = freezed,
    Object? shipMobile = freezed,
    Object? shipPhone = freezed,
    Object? shipStreetNo = freezed,
    Object? shipZone = freezed,
    Object? shipFlatNo = freezed,
    Object? shipBuildingNo = freezed,
    Object? shipDoorNo = freezed,
    Object? custShipAddressId = freezed,
    Object? orderNote = freezed,
    Object? createdDate = freezed,
    Object? updatedDate = freezed,
    Object? currencyCode = freezed,
    Object? delMethodId = freezed,
    Object? delMethodName = freezed,
    Object? pickupLocationId = freezed,
    Object? pickupLocationName = freezed,
    Object? pickupLocationAddress = freezed,
    Object? areaId = freezed,
    Object? zip = freezed,
    Object? countryId = freezed,
    Object? stateId = freezed,
    Object? phoneNo = freezed,
    Object? emailId = freezed,
    Object? pickupCountryName = freezed,
    Object? pickupStateName = freezed,
    Object? pickupAreaName = freezed,
    Object? orderRejectReason = freezed,
    Object? presentmentCurrencyId = freezed,
    Object? exchangeMultiplier = freezed,
    Object? presentmentCurrencyPrecision = freezed,
    Object? presentmentCurrencyCode = freezed,
    Object? referenceTypeId = freezed,
    Object? orderStatuses = freezed,
    Object? stores = freezed,
    Object? productOrderItem = freezed,
    Object? walletEnabled = freezed,
    Object? rewardPointsEnabled = freezed,
    Object? weighingScaleEnabled = freezed,
    Object? parcelChargeEnabled = freezed,
  }) {
    return _then(
      _$OrderDetailResponseImpl(
        prodOrderId: freezed == prodOrderId
            ? _value.prodOrderId
            : prodOrderId // ignore: cast_nullable_to_non_nullable
                  as int?,
        referenceNo: freezed == referenceNo
            ? _value.referenceNo
            : referenceNo // ignore: cast_nullable_to_non_nullable
                  as String?,
        orderToken: freezed == orderToken
            ? _value.orderToken
            : orderToken // ignore: cast_nullable_to_non_nullable
                  as String?,
        orderStatusName: freezed == orderStatusName
            ? _value.orderStatusName
            : orderStatusName // ignore: cast_nullable_to_non_nullable
                  as String?,
        deliveryAgentId: freezed == deliveryAgentId
            ? _value.deliveryAgentId
            : deliveryAgentId // ignore: cast_nullable_to_non_nullable
                  as String?,
        rounding: freezed == rounding
            ? _value.rounding
            : rounding // ignore: cast_nullable_to_non_nullable
                  as int?,
        parcelCharge: freezed == parcelCharge
            ? _value.parcelCharge
            : parcelCharge // ignore: cast_nullable_to_non_nullable
                  as double?,
        tableDetails: freezed == tableDetails
            ? _value._tableDetails
            : tableDetails // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        custFeedbackExist: freezed == custFeedbackExist
            ? _value.custFeedbackExist
            : custFeedbackExist // ignore: cast_nullable_to_non_nullable
                  as int?,
        customerFeedbacks: freezed == customerFeedbacks
            ? _value.customerFeedbacks
            : customerFeedbacks // ignore: cast_nullable_to_non_nullable
                  as String?,
        tenantId: freezed == tenantId
            ? _value.tenantId
            : tenantId // ignore: cast_nullable_to_non_nullable
                  as int?,
        deliveryAgentName: freezed == deliveryAgentName
            ? _value.deliveryAgentName
            : deliveryAgentName // ignore: cast_nullable_to_non_nullable
                  as String?,
        deliveryBoyPhone: freezed == deliveryBoyPhone
            ? _value.deliveryBoyPhone
            : deliveryBoyPhone // ignore: cast_nullable_to_non_nullable
                  as int?,
        deliveryPartnerId: freezed == deliveryPartnerId
            ? _value.deliveryPartnerId
            : deliveryPartnerId // ignore: cast_nullable_to_non_nullable
                  as int?,
        deliveryPartnerName: freezed == deliveryPartnerName
            ? _value.deliveryPartnerName
            : deliveryPartnerName // ignore: cast_nullable_to_non_nullable
                  as String?,
        deliveryAgentStatusId: freezed == deliveryAgentStatusId
            ? _value.deliveryAgentStatusId
            : deliveryAgentStatusId // ignore: cast_nullable_to_non_nullable
                  as int?,
        delPartnerOrderNo: freezed == delPartnerOrderNo
            ? _value.delPartnerOrderNo
            : delPartnerOrderNo // ignore: cast_nullable_to_non_nullable
                  as String?,
        orderStatusArabicName: freezed == orderStatusArabicName
            ? _value.orderStatusArabicName
            : orderStatusArabicName // ignore: cast_nullable_to_non_nullable
                  as String?,
        payReferenceNumber: freezed == payReferenceNumber
            ? _value.payReferenceNumber
            : payReferenceNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        orderOptionId: freezed == orderOptionId
            ? _value.orderOptionId
            : orderOptionId // ignore: cast_nullable_to_non_nullable
                  as int?,
        delPrefDate: freezed == delPrefDate
            ? _value.delPrefDate
            : delPrefDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        delPrefTime: freezed == delPrefTime
            ? _value.delPrefTime
            : delPrefTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        pickupDate: freezed == pickupDate
            ? _value.pickupDate
            : pickupDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        pickupTime: freezed == pickupTime
            ? _value.pickupTime
            : pickupTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        orderOptionDate: freezed == orderOptionDate
            ? _value.orderOptionDate
            : orderOptionDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        orderOption: freezed == orderOption
            ? _value.orderOption
            : orderOption // ignore: cast_nullable_to_non_nullable
                  as String?,
        paymentMethodId: freezed == paymentMethodId
            ? _value.paymentMethodId
            : paymentMethodId // ignore: cast_nullable_to_non_nullable
                  as int?,
        payMethodName: freezed == payMethodName
            ? _value.payMethodName
            : payMethodName // ignore: cast_nullable_to_non_nullable
                  as String?,
        payMethodArabic: freezed == payMethodArabic
            ? _value.payMethodArabic
            : payMethodArabic // ignore: cast_nullable_to_non_nullable
                  as String?,
        paymentStatusId: freezed == paymentStatusId
            ? _value.paymentStatusId
            : paymentStatusId // ignore: cast_nullable_to_non_nullable
                  as int?,
        paymentStatusName: freezed == paymentStatusName
            ? _value.paymentStatusName
            : paymentStatusName // ignore: cast_nullable_to_non_nullable
                  as String?,
        paymentStatusArabic: freezed == paymentStatusArabic
            ? _value.paymentStatusArabic
            : paymentStatusArabic // ignore: cast_nullable_to_non_nullable
                  as String?,
        storeId: freezed == storeId
            ? _value.storeId
            : storeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        spotDiscountPercentage: freezed == spotDiscountPercentage
            ? _value.spotDiscountPercentage
            : spotDiscountPercentage // ignore: cast_nullable_to_non_nullable
                  as double?,
        spotDiscountAmt: freezed == spotDiscountAmt
            ? _value.spotDiscountAmt
            : spotDiscountAmt // ignore: cast_nullable_to_non_nullable
                  as int?,
        orderOptionName: freezed == orderOptionName
            ? _value.orderOptionName
            : orderOptionName // ignore: cast_nullable_to_non_nullable
                  as String?,
        orderStatusId: freezed == orderStatusId
            ? _value.orderStatusId
            : orderStatusId // ignore: cast_nullable_to_non_nullable
                  as int?,
        invoiceNum: freezed == invoiceNum
            ? _value.invoiceNum
            : invoiceNum // ignore: cast_nullable_to_non_nullable
                  as String?,
        orderDate: freezed == orderDate
            ? _value.orderDate
            : orderDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        mobOrderDate: freezed == mobOrderDate
            ? _value.mobOrderDate
            : mobOrderDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        mobOrderTime: freezed == mobOrderTime
            ? _value.mobOrderTime
            : mobOrderTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        mobODate: freezed == mobODate
            ? _value.mobODate
            : mobODate // ignore: cast_nullable_to_non_nullable
                  as String?,
        netAmount: freezed == netAmount
            ? _value.netAmount
            : netAmount // ignore: cast_nullable_to_non_nullable
                  as double?,
        amountInCash: freezed == amountInCash
            ? _value.amountInCash
            : amountInCash // ignore: cast_nullable_to_non_nullable
                  as int?,
        timeCash: freezed == timeCash
            ? _value.timeCash
            : timeCash // ignore: cast_nullable_to_non_nullable
                  as String?,
        amountByCard: freezed == amountByCard
            ? _value.amountByCard
            : amountByCard // ignore: cast_nullable_to_non_nullable
                  as int?,
        timeCard: freezed == timeCard
            ? _value.timeCard
            : timeCard // ignore: cast_nullable_to_non_nullable
                  as String?,
        netAmountWalletMoney: freezed == netAmountWalletMoney
            ? _value.netAmountWalletMoney
            : netAmountWalletMoney // ignore: cast_nullable_to_non_nullable
                  as int?,
        netAmountWalletPoints: freezed == netAmountWalletPoints
            ? _value.netAmountWalletPoints
            : netAmountWalletPoints // ignore: cast_nullable_to_non_nullable
                  as int?,
        stateName: freezed == stateName
            ? _value.stateName
            : stateName // ignore: cast_nullable_to_non_nullable
                  as String?,
        countryName: freezed == countryName
            ? _value.countryName
            : countryName // ignore: cast_nullable_to_non_nullable
                  as String?,
        grandTotal: freezed == grandTotal
            ? _value.grandTotal
            : grandTotal // ignore: cast_nullable_to_non_nullable
                  as double?,
        accountId: freezed == accountId
            ? _value.accountId
            : accountId // ignore: cast_nullable_to_non_nullable
                  as int?,
        loyaltyNo: freezed == loyaltyNo
            ? _value.loyaltyNo
            : loyaltyNo // ignore: cast_nullable_to_non_nullable
                  as String?,
        custId: freezed == custId
            ? _value.custId
            : custId // ignore: cast_nullable_to_non_nullable
                  as int?,
        taxableAmount: freezed == taxableAmount
            ? _value.taxableAmount
            : taxableAmount // ignore: cast_nullable_to_non_nullable
                  as double?,
        isTaxable: freezed == isTaxable
            ? _value.isTaxable
            : isTaxable // ignore: cast_nullable_to_non_nullable
                  as int?,
        isTaxInclusive: freezed == isTaxInclusive
            ? _value.isTaxInclusive
            : isTaxInclusive // ignore: cast_nullable_to_non_nullable
                  as int?,
        taxId: freezed == taxId
            ? _value.taxId
            : taxId // ignore: cast_nullable_to_non_nullable
                  as int?,
        trn: freezed == trn
            ? _value.trn
            : trn // ignore: cast_nullable_to_non_nullable
                  as String?,
        nonTaxableAmt: freezed == nonTaxableAmt
            ? _value.nonTaxableAmt
            : nonTaxableAmt // ignore: cast_nullable_to_non_nullable
                  as int?,
        orderDiscPercentage: freezed == orderDiscPercentage
            ? _value.orderDiscPercentage
            : orderDiscPercentage // ignore: cast_nullable_to_non_nullable
                  as int?,
        arabicNameSettings: freezed == arabicNameSettings
            ? _value.arabicNameSettings
            : arabicNameSettings // ignore: cast_nullable_to_non_nullable
                  as int?,
        taxSettings: freezed == taxSettings
            ? _value.taxSettings
            : taxSettings // ignore: cast_nullable_to_non_nullable
                  as int?,
        taxName: freezed == taxName
            ? _value.taxName
            : taxName // ignore: cast_nullable_to_non_nullable
                  as String?,
        orderTaxPercentage: freezed == orderTaxPercentage
            ? _value.orderTaxPercentage
            : orderTaxPercentage // ignore: cast_nullable_to_non_nullable
                  as int?,
        orderDiscAmount: freezed == orderDiscAmount
            ? _value.orderDiscAmount
            : orderDiscAmount // ignore: cast_nullable_to_non_nullable
                  as int?,
        taxAmount: freezed == taxAmount
            ? _value.taxAmount
            : taxAmount // ignore: cast_nullable_to_non_nullable
                  as double?,
        shippingCharge: freezed == shippingCharge
            ? _value.shippingCharge
            : shippingCharge // ignore: cast_nullable_to_non_nullable
                  as int?,
        weightScale: freezed == weightScale
            ? _value.weightScale
            : weightScale // ignore: cast_nullable_to_non_nullable
                  as int?,
        cancelItemAmount: freezed == cancelItemAmount
            ? _value.cancelItemAmount
            : cancelItemAmount // ignore: cast_nullable_to_non_nullable
                  as int?,
        substituteExist: freezed == substituteExist
            ? _value.substituteExist
            : substituteExist // ignore: cast_nullable_to_non_nullable
                  as int?,
        subNotificationStatusId: freezed == subNotificationStatusId
            ? _value.subNotificationStatusId
            : subNotificationStatusId // ignore: cast_nullable_to_non_nullable
                  as int?,
        subNotificationStatusName: freezed == subNotificationStatusName
            ? _value.subNotificationStatusName
            : subNotificationStatusName // ignore: cast_nullable_to_non_nullable
                  as String?,
        surgeAmt: freezed == surgeAmt
            ? _value.surgeAmt
            : surgeAmt // ignore: cast_nullable_to_non_nullable
                  as int?,
        orderSurges: freezed == orderSurges
            ? _value._orderSurges
            : orderSurges // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        supplierId: freezed == supplierId
            ? _value.supplierId
            : supplierId // ignore: cast_nullable_to_non_nullable
                  as int?,
        waiterName: freezed == waiterName
            ? _value.waiterName
            : waiterName // ignore: cast_nullable_to_non_nullable
                  as String?,
        cashierName: freezed == cashierName
            ? _value.cashierName
            : cashierName // ignore: cast_nullable_to_non_nullable
                  as String?,
        kioskName: freezed == kioskName
            ? _value.kioskName
            : kioskName // ignore: cast_nullable_to_non_nullable
                  as String?,
        vehicleNo: freezed == vehicleNo
            ? _value.vehicleNo
            : vehicleNo // ignore: cast_nullable_to_non_nullable
                  as String?,
        deviceSerialNo: freezed == deviceSerialNo
            ? _value.deviceSerialNo
            : deviceSerialNo // ignore: cast_nullable_to_non_nullable
                  as String?,
        billNo: freezed == billNo
            ? _value.billNo
            : billNo // ignore: cast_nullable_to_non_nullable
                  as String?,
        billCustName: freezed == billCustName
            ? _value.billCustName
            : billCustName // ignore: cast_nullable_to_non_nullable
                  as String?,
        billFlatNo: freezed == billFlatNo
            ? _value.billFlatNo
            : billFlatNo // ignore: cast_nullable_to_non_nullable
                  as String?,
        billDoorNo: freezed == billDoorNo
            ? _value.billDoorNo
            : billDoorNo // ignore: cast_nullable_to_non_nullable
                  as String?,
        billStreetNo: freezed == billStreetNo
            ? _value.billStreetNo
            : billStreetNo // ignore: cast_nullable_to_non_nullable
                  as String?,
        billBuildingNo: freezed == billBuildingNo
            ? _value.billBuildingNo
            : billBuildingNo // ignore: cast_nullable_to_non_nullable
                  as String?,
        billZone: freezed == billZone
            ? _value.billZone
            : billZone // ignore: cast_nullable_to_non_nullable
                  as String?,
        billLocation: freezed == billLocation
            ? _value.billLocation
            : billLocation // ignore: cast_nullable_to_non_nullable
                  as String?,
        billCity: freezed == billCity
            ? _value.billCity
            : billCity // ignore: cast_nullable_to_non_nullable
                  as String?,
        billLandmark: freezed == billLandmark
            ? _value.billLandmark
            : billLandmark // ignore: cast_nullable_to_non_nullable
                  as String?,
        billArea: freezed == billArea
            ? _value.billArea
            : billArea // ignore: cast_nullable_to_non_nullable
                  as String?,
        billPobox: freezed == billPobox
            ? _value.billPobox
            : billPobox // ignore: cast_nullable_to_non_nullable
                  as String?,
        billCountryId: freezed == billCountryId
            ? _value.billCountryId
            : billCountryId // ignore: cast_nullable_to_non_nullable
                  as int?,
        billStateId: freezed == billStateId
            ? _value.billStateId
            : billStateId // ignore: cast_nullable_to_non_nullable
                  as int?,
        billEmail: freezed == billEmail
            ? _value.billEmail
            : billEmail // ignore: cast_nullable_to_non_nullable
                  as String?,
        billMobile: freezed == billMobile
            ? _value.billMobile
            : billMobile // ignore: cast_nullable_to_non_nullable
                  as String?,
        billPhone: freezed == billPhone
            ? _value.billPhone
            : billPhone // ignore: cast_nullable_to_non_nullable
                  as String?,
        shipLocation: freezed == shipLocation
            ? _value.shipLocation
            : shipLocation // ignore: cast_nullable_to_non_nullable
                  as String?,
        shipCustName: freezed == shipCustName
            ? _value.shipCustName
            : shipCustName // ignore: cast_nullable_to_non_nullable
                  as String?,
        shipCity: freezed == shipCity
            ? _value.shipCity
            : shipCity // ignore: cast_nullable_to_non_nullable
                  as String?,
        shipLandmark: freezed == shipLandmark
            ? _value.shipLandmark
            : shipLandmark // ignore: cast_nullable_to_non_nullable
                  as String?,
        shipStateId: freezed == shipStateId
            ? _value.shipStateId
            : shipStateId // ignore: cast_nullable_to_non_nullable
                  as int?,
        shipArea: freezed == shipArea
            ? _value.shipArea
            : shipArea // ignore: cast_nullable_to_non_nullable
                  as String?,
        shipPobox: freezed == shipPobox
            ? _value.shipPobox
            : shipPobox // ignore: cast_nullable_to_non_nullable
                  as String?,
        shipCountryId: freezed == shipCountryId
            ? _value.shipCountryId
            : shipCountryId // ignore: cast_nullable_to_non_nullable
                  as int?,
        shipEmail: freezed == shipEmail
            ? _value.shipEmail
            : shipEmail // ignore: cast_nullable_to_non_nullable
                  as String?,
        shipMobile: freezed == shipMobile
            ? _value.shipMobile
            : shipMobile // ignore: cast_nullable_to_non_nullable
                  as String?,
        shipPhone: freezed == shipPhone
            ? _value.shipPhone
            : shipPhone // ignore: cast_nullable_to_non_nullable
                  as String?,
        shipStreetNo: freezed == shipStreetNo
            ? _value.shipStreetNo
            : shipStreetNo // ignore: cast_nullable_to_non_nullable
                  as String?,
        shipZone: freezed == shipZone
            ? _value.shipZone
            : shipZone // ignore: cast_nullable_to_non_nullable
                  as String?,
        shipFlatNo: freezed == shipFlatNo
            ? _value.shipFlatNo
            : shipFlatNo // ignore: cast_nullable_to_non_nullable
                  as String?,
        shipBuildingNo: freezed == shipBuildingNo
            ? _value.shipBuildingNo
            : shipBuildingNo // ignore: cast_nullable_to_non_nullable
                  as String?,
        shipDoorNo: freezed == shipDoorNo
            ? _value.shipDoorNo
            : shipDoorNo // ignore: cast_nullable_to_non_nullable
                  as String?,
        custShipAddressId: freezed == custShipAddressId
            ? _value.custShipAddressId
            : custShipAddressId // ignore: cast_nullable_to_non_nullable
                  as int?,
        orderNote: freezed == orderNote
            ? _value.orderNote
            : orderNote // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdDate: freezed == createdDate
            ? _value.createdDate
            : createdDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedDate: freezed == updatedDate
            ? _value.updatedDate
            : updatedDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        currencyCode: freezed == currencyCode
            ? _value.currencyCode
            : currencyCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        delMethodId: freezed == delMethodId
            ? _value.delMethodId
            : delMethodId // ignore: cast_nullable_to_non_nullable
                  as int?,
        delMethodName: freezed == delMethodName
            ? _value.delMethodName
            : delMethodName // ignore: cast_nullable_to_non_nullable
                  as String?,
        pickupLocationId: freezed == pickupLocationId
            ? _value.pickupLocationId
            : pickupLocationId // ignore: cast_nullable_to_non_nullable
                  as int?,
        pickupLocationName: freezed == pickupLocationName
            ? _value.pickupLocationName
            : pickupLocationName // ignore: cast_nullable_to_non_nullable
                  as String?,
        pickupLocationAddress: freezed == pickupLocationAddress
            ? _value.pickupLocationAddress
            : pickupLocationAddress // ignore: cast_nullable_to_non_nullable
                  as String?,
        areaId: freezed == areaId
            ? _value.areaId
            : areaId // ignore: cast_nullable_to_non_nullable
                  as int?,
        zip: freezed == zip
            ? _value.zip
            : zip // ignore: cast_nullable_to_non_nullable
                  as String?,
        countryId: freezed == countryId
            ? _value.countryId
            : countryId // ignore: cast_nullable_to_non_nullable
                  as int?,
        stateId: freezed == stateId
            ? _value.stateId
            : stateId // ignore: cast_nullable_to_non_nullable
                  as int?,
        phoneNo: freezed == phoneNo
            ? _value.phoneNo
            : phoneNo // ignore: cast_nullable_to_non_nullable
                  as int?,
        emailId: freezed == emailId
            ? _value.emailId
            : emailId // ignore: cast_nullable_to_non_nullable
                  as String?,
        pickupCountryName: freezed == pickupCountryName
            ? _value.pickupCountryName
            : pickupCountryName // ignore: cast_nullable_to_non_nullable
                  as String?,
        pickupStateName: freezed == pickupStateName
            ? _value.pickupStateName
            : pickupStateName // ignore: cast_nullable_to_non_nullable
                  as String?,
        pickupAreaName: freezed == pickupAreaName
            ? _value.pickupAreaName
            : pickupAreaName // ignore: cast_nullable_to_non_nullable
                  as String?,
        orderRejectReason: freezed == orderRejectReason
            ? _value.orderRejectReason
            : orderRejectReason // ignore: cast_nullable_to_non_nullable
                  as String?,
        presentmentCurrencyId: freezed == presentmentCurrencyId
            ? _value.presentmentCurrencyId
            : presentmentCurrencyId // ignore: cast_nullable_to_non_nullable
                  as int?,
        exchangeMultiplier: freezed == exchangeMultiplier
            ? _value.exchangeMultiplier
            : exchangeMultiplier // ignore: cast_nullable_to_non_nullable
                  as int?,
        presentmentCurrencyPrecision: freezed == presentmentCurrencyPrecision
            ? _value.presentmentCurrencyPrecision
            : presentmentCurrencyPrecision // ignore: cast_nullable_to_non_nullable
                  as int?,
        presentmentCurrencyCode: freezed == presentmentCurrencyCode
            ? _value.presentmentCurrencyCode
            : presentmentCurrencyCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        referenceTypeId: freezed == referenceTypeId
            ? _value.referenceTypeId
            : referenceTypeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        orderStatuses: freezed == orderStatuses
            ? _value._orderStatuses
            : orderStatuses // ignore: cast_nullable_to_non_nullable
                  as List<OrderStatus>?,
        stores: freezed == stores
            ? _value._stores
            : stores // ignore: cast_nullable_to_non_nullable
                  as List<Store>?,
        productOrderItem: freezed == productOrderItem
            ? _value._productOrderItem
            : productOrderItem // ignore: cast_nullable_to_non_nullable
                  as List<ProductOrderItem>?,
        walletEnabled: freezed == walletEnabled
            ? _value.walletEnabled
            : walletEnabled // ignore: cast_nullable_to_non_nullable
                  as int?,
        rewardPointsEnabled: freezed == rewardPointsEnabled
            ? _value.rewardPointsEnabled
            : rewardPointsEnabled // ignore: cast_nullable_to_non_nullable
                  as int?,
        weighingScaleEnabled: freezed == weighingScaleEnabled
            ? _value.weighingScaleEnabled
            : weighingScaleEnabled // ignore: cast_nullable_to_non_nullable
                  as int?,
        parcelChargeEnabled: freezed == parcelChargeEnabled
            ? _value.parcelChargeEnabled
            : parcelChargeEnabled // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDetailResponseImpl implements _OrderDetailResponse {
  const _$OrderDetailResponseImpl({
    @JsonKey(name: "prod_order_id") this.prodOrderId,
    @JsonKey(name: "reference_no") this.referenceNo,
    @JsonKey(name: "order_token") this.orderToken,
    @JsonKey(name: "order_status_name") this.orderStatusName,
    @JsonKey(name: "delivery_agent_id") this.deliveryAgentId,
    @JsonKey(name: "rounding") this.rounding,
    @JsonKey(name: "parcel_charge") this.parcelCharge,
    @JsonKey(name: "table_details") final List<dynamic>? tableDetails,
    @JsonKey(name: "cust_feedback_exist") this.custFeedbackExist,
    @JsonKey(name: "customer_feedbacks") this.customerFeedbacks,
    @JsonKey(name: "tenant_id") this.tenantId,
    @JsonKey(name: "delivery_agent_name") this.deliveryAgentName,
    @JsonKey(name: "delivery_boy_phone") this.deliveryBoyPhone,
    @JsonKey(name: "delivery_partner_id") this.deliveryPartnerId,
    @JsonKey(name: "delivery_partner_name") this.deliveryPartnerName,
    @JsonKey(name: "delivery_agent_status_id") this.deliveryAgentStatusId,
    @JsonKey(name: "del_partner_order_no") this.delPartnerOrderNo,
    @JsonKey(name: "order_status_arabic_name") this.orderStatusArabicName,
    @JsonKey(name: "pay_reference_number") this.payReferenceNumber,
    @JsonKey(name: "order_option_id") this.orderOptionId,
    @JsonKey(name: "del_pref_date") this.delPrefDate,
    @JsonKey(name: "del_pref_time") this.delPrefTime,
    @JsonKey(name: "pickup_date") this.pickupDate,
    @JsonKey(name: "pickup_time") this.pickupTime,
    @JsonKey(name: "order_option_date") this.orderOptionDate,
    @JsonKey(name: "order_option") this.orderOption,
    @JsonKey(name: "payment_method_id") this.paymentMethodId,
    @JsonKey(name: "pay_method_name") this.payMethodName,
    @JsonKey(name: "pay_method_arabic") this.payMethodArabic,
    @JsonKey(name: "payment_status_id") this.paymentStatusId,
    @JsonKey(name: "payment_status_name") this.paymentStatusName,
    @JsonKey(name: "payment_status_arabic") this.paymentStatusArabic,
    @JsonKey(name: "store_id") this.storeId,
    @JsonKey(name: "spot_discount_percentage", fromJson: parseNumberAsDouble)
    this.spotDiscountPercentage,
    @JsonKey(name: "spot_discount_amt") this.spotDiscountAmt,
    @JsonKey(name: "order_option_name") this.orderOptionName,
    @JsonKey(name: "order_status_id") this.orderStatusId,
    @JsonKey(name: "invoice_num") this.invoiceNum,
    @JsonKey(name: "order_date") this.orderDate,
    @JsonKey(name: "mob_order_date") this.mobOrderDate,
    @JsonKey(name: "mob_order_time") this.mobOrderTime,
    @JsonKey(name: "mob_o_date") this.mobODate,
    @JsonKey(name: "net_amount") this.netAmount,
    @JsonKey(name: "amount_in_cash") this.amountInCash,
    @JsonKey(name: "time_cash") this.timeCash,
    @JsonKey(name: "amount_by_card") this.amountByCard,
    @JsonKey(name: "time_card") this.timeCard,
    @JsonKey(name: "net_amount_wallet_money") this.netAmountWalletMoney,
    @JsonKey(name: "net_amount_wallet_points") this.netAmountWalletPoints,
    @JsonKey(name: "state_name") this.stateName,
    @JsonKey(name: "country_name") this.countryName,
    @JsonKey(name: "grand_total") this.grandTotal,
    @JsonKey(name: "account_id") this.accountId,
    @JsonKey(name: "loyalty_no") this.loyaltyNo,
    @JsonKey(name: "cust_id") this.custId,
    @JsonKey(name: "taxable_amount") this.taxableAmount,
    @JsonKey(name: "is_taxable") this.isTaxable,
    @JsonKey(name: "is_tax_inclusive") this.isTaxInclusive,
    @JsonKey(name: "tax_id") this.taxId,
    @JsonKey(name: "TRN") this.trn,
    @JsonKey(name: "non_taxable_amt") this.nonTaxableAmt,
    @JsonKey(name: "order_disc_percentage") this.orderDiscPercentage,
    @JsonKey(name: "ArabicNameSettings") this.arabicNameSettings,
    @JsonKey(name: "taxSettings") this.taxSettings,
    @JsonKey(name: "tax_name") this.taxName,
    @JsonKey(name: "order_tax_percentage") this.orderTaxPercentage,
    @JsonKey(name: "order_disc_amount") this.orderDiscAmount,
    @JsonKey(name: "tax_amount") this.taxAmount,
    @JsonKey(name: "shipping_charge") this.shippingCharge,
    @JsonKey(name: "weight_scale") this.weightScale,
    @JsonKey(name: "cancel_item_amount") this.cancelItemAmount,
    @JsonKey(name: "substitute_exist") this.substituteExist,
    @JsonKey(name: "sub_notification_status_id") this.subNotificationStatusId,
    @JsonKey(name: "sub_notification_status_name")
    this.subNotificationStatusName,
    @JsonKey(name: "surge_amt") this.surgeAmt,
    @JsonKey(name: "order_surges") final List<dynamic>? orderSurges,
    @JsonKey(name: "supplier_id") this.supplierId,
    @JsonKey(name: "waiter_name") this.waiterName,
    @JsonKey(name: "cashier_name") this.cashierName,
    @JsonKey(name: "kiosk_name") this.kioskName,
    @JsonKey(name: "vehicle_no") this.vehicleNo,
    @JsonKey(name: "device_serial_no") this.deviceSerialNo,
    @JsonKey(name: "bill_no") this.billNo,
    @JsonKey(name: "bill_cust_name") this.billCustName,
    @JsonKey(name: "bill_flat_no") this.billFlatNo,
    @JsonKey(name: "bill_door_no") this.billDoorNo,
    @JsonKey(name: "bill_street_no") this.billStreetNo,
    @JsonKey(name: "bill_building_no") this.billBuildingNo,
    @JsonKey(name: "bill_zone") this.billZone,
    @JsonKey(name: "bill_location") this.billLocation,
    @JsonKey(name: "bill_city") this.billCity,
    @JsonKey(name: "bill_landmark") this.billLandmark,
    @JsonKey(name: "bill_area") this.billArea,
    @JsonKey(name: "bill_pobox") this.billPobox,
    @JsonKey(name: "bill_country_id") this.billCountryId,
    @JsonKey(name: "bill_state_id") this.billStateId,
    @JsonKey(name: "bill_email") this.billEmail,
    @JsonKey(name: "bill_mobile") this.billMobile,
    @JsonKey(name: "bill_phone") this.billPhone,
    @JsonKey(name: "ship_location") this.shipLocation,
    @JsonKey(name: "ship_cust_name") this.shipCustName,
    @JsonKey(name: "ship_city") this.shipCity,
    @JsonKey(name: "ship_landmark") this.shipLandmark,
    @JsonKey(name: "ship_state_id") this.shipStateId,
    @JsonKey(name: "ship_area") this.shipArea,
    @JsonKey(name: "ship_pobox") this.shipPobox,
    @JsonKey(name: "ship_country_id") this.shipCountryId,
    @JsonKey(name: "ship_email") this.shipEmail,
    @JsonKey(name: "ship_mobile") this.shipMobile,
    @JsonKey(name: "ship_phone") this.shipPhone,
    @JsonKey(name: "ship_street_no") this.shipStreetNo,
    @JsonKey(name: "ship_zone") this.shipZone,
    @JsonKey(name: "ship_flat_no") this.shipFlatNo,
    @JsonKey(name: "ship_building_no") this.shipBuildingNo,
    @JsonKey(name: "ship_door_no") this.shipDoorNo,
    @JsonKey(name: "cust_ship_address_id") this.custShipAddressId,
    @JsonKey(name: "order_note") this.orderNote,
    @JsonKey(name: "created_date") this.createdDate,
    @JsonKey(name: "updated_date") this.updatedDate,
    @JsonKey(name: "currency_code") this.currencyCode,
    @JsonKey(name: "del_method_id") this.delMethodId,
    @JsonKey(name: "del_method_name") this.delMethodName,
    @JsonKey(name: "pickup_location_id") this.pickupLocationId,
    @JsonKey(name: "pickup_location_name") this.pickupLocationName,
    @JsonKey(name: "pickup_location_address") this.pickupLocationAddress,
    @JsonKey(name: "area_id") this.areaId,
    @JsonKey(name: "zip") this.zip,
    @JsonKey(name: "country_id") this.countryId,
    @JsonKey(name: "state_id") this.stateId,
    @JsonKey(name: "phone_no") this.phoneNo,
    @JsonKey(name: "email_id") this.emailId,
    @JsonKey(name: "pickup_country_name") this.pickupCountryName,
    @JsonKey(name: "pickup_state_name") this.pickupStateName,
    @JsonKey(name: "pickup_area_name") this.pickupAreaName,
    @JsonKey(name: "order_reject_reason") this.orderRejectReason,
    @JsonKey(name: "presentment_currency_id") this.presentmentCurrencyId,
    @JsonKey(name: "exchange_multiplier") this.exchangeMultiplier,
    @JsonKey(name: "presentment_currency_precision")
    this.presentmentCurrencyPrecision,
    @JsonKey(name: "presentment_currency_code") this.presentmentCurrencyCode,
    @JsonKey(name: "reference_type_id") this.referenceTypeId,
    @JsonKey(name: "order_statuses") final List<OrderStatus>? orderStatuses,
    @JsonKey(name: "stores") final List<Store>? stores,
    @JsonKey(name: "product_order_item")
    final List<ProductOrderItem>? productOrderItem,
    @JsonKey(name: "wallet_enabled") this.walletEnabled,
    @JsonKey(name: "reward_points_enabled") this.rewardPointsEnabled,
    @JsonKey(name: "weighing_scale_enabled") this.weighingScaleEnabled,
    @JsonKey(name: "parcel_charge_enabled") this.parcelChargeEnabled,
  }) : _tableDetails = tableDetails,
       _orderSurges = orderSurges,
       _orderStatuses = orderStatuses,
       _stores = stores,
       _productOrderItem = productOrderItem;

  factory _$OrderDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDetailResponseImplFromJson(json);

  @override
  @JsonKey(name: "prod_order_id")
  final int? prodOrderId;
  @override
  @JsonKey(name: "reference_no")
  final String? referenceNo;
  @override
  @JsonKey(name: "order_token")
  final String? orderToken;
  @override
  @JsonKey(name: "order_status_name")
  final String? orderStatusName;
  @override
  @JsonKey(name: "delivery_agent_id")
  final String? deliveryAgentId;
  @override
  @JsonKey(name: "rounding")
  final int? rounding;
  @override
  @JsonKey(name: "parcel_charge")
  final double? parcelCharge;
  final List<dynamic>? _tableDetails;
  @override
  @JsonKey(name: "table_details")
  List<dynamic>? get tableDetails {
    final value = _tableDetails;
    if (value == null) return null;
    if (_tableDetails is EqualUnmodifiableListView) return _tableDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "cust_feedback_exist")
  final int? custFeedbackExist;
  @override
  @JsonKey(name: "customer_feedbacks")
  final String? customerFeedbacks;
  @override
  @JsonKey(name: "tenant_id")
  final int? tenantId;
  @override
  @JsonKey(name: "delivery_agent_name")
  final String? deliveryAgentName;
  @override
  @JsonKey(name: "delivery_boy_phone")
  final int? deliveryBoyPhone;
  @override
  @JsonKey(name: "delivery_partner_id")
  final int? deliveryPartnerId;
  @override
  @JsonKey(name: "delivery_partner_name")
  final String? deliveryPartnerName;
  @override
  @JsonKey(name: "delivery_agent_status_id")
  final int? deliveryAgentStatusId;
  @override
  @JsonKey(name: "del_partner_order_no")
  final String? delPartnerOrderNo;
  @override
  @JsonKey(name: "order_status_arabic_name")
  final String? orderStatusArabicName;
  @override
  @JsonKey(name: "pay_reference_number")
  final String? payReferenceNumber;
  @override
  @JsonKey(name: "order_option_id")
  final int? orderOptionId;
  @override
  @JsonKey(name: "del_pref_date")
  final String? delPrefDate;
  @override
  @JsonKey(name: "del_pref_time")
  final String? delPrefTime;
  @override
  @JsonKey(name: "pickup_date")
  final String? pickupDate;
  @override
  @JsonKey(name: "pickup_time")
  final String? pickupTime;
  @override
  @JsonKey(name: "order_option_date")
  final String? orderOptionDate;
  @override
  @JsonKey(name: "order_option")
  final String? orderOption;
  @override
  @JsonKey(name: "payment_method_id")
  final int? paymentMethodId;
  @override
  @JsonKey(name: "pay_method_name")
  final String? payMethodName;
  @override
  @JsonKey(name: "pay_method_arabic")
  final String? payMethodArabic;
  @override
  @JsonKey(name: "payment_status_id")
  final int? paymentStatusId;
  @override
  @JsonKey(name: "payment_status_name")
  final String? paymentStatusName;
  @override
  @JsonKey(name: "payment_status_arabic")
  final String? paymentStatusArabic;
  @override
  @JsonKey(name: "store_id")
  final int? storeId;
  @override
  @JsonKey(name: "spot_discount_percentage", fromJson: parseNumberAsDouble)
  final double? spotDiscountPercentage;
  @override
  @JsonKey(name: "spot_discount_amt")
  final int? spotDiscountAmt;
  @override
  @JsonKey(name: "order_option_name")
  final String? orderOptionName;
  @override
  @JsonKey(name: "order_status_id")
  final int? orderStatusId;
  @override
  @JsonKey(name: "invoice_num")
  final String? invoiceNum;
  @override
  @JsonKey(name: "order_date")
  final String? orderDate;
  @override
  @JsonKey(name: "mob_order_date")
  final String? mobOrderDate;
  @override
  @JsonKey(name: "mob_order_time")
  final String? mobOrderTime;
  @override
  @JsonKey(name: "mob_o_date")
  final String? mobODate;
  @override
  @JsonKey(name: "net_amount")
  final double? netAmount;
  @override
  @JsonKey(name: "amount_in_cash")
  final int? amountInCash;
  @override
  @JsonKey(name: "time_cash")
  final String? timeCash;
  @override
  @JsonKey(name: "amount_by_card")
  final int? amountByCard;
  @override
  @JsonKey(name: "time_card")
  final String? timeCard;
  @override
  @JsonKey(name: "net_amount_wallet_money")
  final int? netAmountWalletMoney;
  @override
  @JsonKey(name: "net_amount_wallet_points")
  final int? netAmountWalletPoints;
  @override
  @JsonKey(name: "state_name")
  final String? stateName;
  @override
  @JsonKey(name: "country_name")
  final String? countryName;
  @override
  @JsonKey(name: "grand_total")
  final double? grandTotal;
  @override
  @JsonKey(name: "account_id")
  final int? accountId;
  @override
  @JsonKey(name: "loyalty_no")
  final String? loyaltyNo;
  @override
  @JsonKey(name: "cust_id")
  final int? custId;
  @override
  @JsonKey(name: "taxable_amount")
  final double? taxableAmount;
  @override
  @JsonKey(name: "is_taxable")
  final int? isTaxable;
  @override
  @JsonKey(name: "is_tax_inclusive")
  final int? isTaxInclusive;
  @override
  @JsonKey(name: "tax_id")
  final int? taxId;
  @override
  @JsonKey(name: "TRN")
  final String? trn;
  @override
  @JsonKey(name: "non_taxable_amt")
  final int? nonTaxableAmt;
  @override
  @JsonKey(name: "order_disc_percentage")
  final int? orderDiscPercentage;
  @override
  @JsonKey(name: "ArabicNameSettings")
  final int? arabicNameSettings;
  @override
  @JsonKey(name: "taxSettings")
  final int? taxSettings;
  @override
  @JsonKey(name: "tax_name")
  final String? taxName;
  @override
  @JsonKey(name: "order_tax_percentage")
  final int? orderTaxPercentage;
  @override
  @JsonKey(name: "order_disc_amount")
  final int? orderDiscAmount;
  @override
  @JsonKey(name: "tax_amount")
  final double? taxAmount;
  @override
  @JsonKey(name: "shipping_charge")
  final int? shippingCharge;
  @override
  @JsonKey(name: "weight_scale")
  final int? weightScale;
  @override
  @JsonKey(name: "cancel_item_amount")
  final int? cancelItemAmount;
  @override
  @JsonKey(name: "substitute_exist")
  final int? substituteExist;
  @override
  @JsonKey(name: "sub_notification_status_id")
  final int? subNotificationStatusId;
  @override
  @JsonKey(name: "sub_notification_status_name")
  final String? subNotificationStatusName;
  @override
  @JsonKey(name: "surge_amt")
  final int? surgeAmt;
  final List<dynamic>? _orderSurges;
  @override
  @JsonKey(name: "order_surges")
  List<dynamic>? get orderSurges {
    final value = _orderSurges;
    if (value == null) return null;
    if (_orderSurges is EqualUnmodifiableListView) return _orderSurges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "supplier_id")
  final int? supplierId;
  @override
  @JsonKey(name: "waiter_name")
  final String? waiterName;
  @override
  @JsonKey(name: "cashier_name")
  final String? cashierName;
  @override
  @JsonKey(name: "kiosk_name")
  final String? kioskName;
  @override
  @JsonKey(name: "vehicle_no")
  final String? vehicleNo;
  @override
  @JsonKey(name: "device_serial_no")
  final String? deviceSerialNo;
  @override
  @JsonKey(name: "bill_no")
  final String? billNo;
  @override
  @JsonKey(name: "bill_cust_name")
  final String? billCustName;
  @override
  @JsonKey(name: "bill_flat_no")
  final String? billFlatNo;
  @override
  @JsonKey(name: "bill_door_no")
  final String? billDoorNo;
  @override
  @JsonKey(name: "bill_street_no")
  final String? billStreetNo;
  @override
  @JsonKey(name: "bill_building_no")
  final String? billBuildingNo;
  @override
  @JsonKey(name: "bill_zone")
  final String? billZone;
  @override
  @JsonKey(name: "bill_location")
  final String? billLocation;
  @override
  @JsonKey(name: "bill_city")
  final String? billCity;
  @override
  @JsonKey(name: "bill_landmark")
  final String? billLandmark;
  @override
  @JsonKey(name: "bill_area")
  final String? billArea;
  @override
  @JsonKey(name: "bill_pobox")
  final String? billPobox;
  @override
  @JsonKey(name: "bill_country_id")
  final int? billCountryId;
  @override
  @JsonKey(name: "bill_state_id")
  final int? billStateId;
  @override
  @JsonKey(name: "bill_email")
  final String? billEmail;
  @override
  @JsonKey(name: "bill_mobile")
  final String? billMobile;
  @override
  @JsonKey(name: "bill_phone")
  final String? billPhone;
  @override
  @JsonKey(name: "ship_location")
  final String? shipLocation;
  @override
  @JsonKey(name: "ship_cust_name")
  final String? shipCustName;
  @override
  @JsonKey(name: "ship_city")
  final String? shipCity;
  @override
  @JsonKey(name: "ship_landmark")
  final String? shipLandmark;
  @override
  @JsonKey(name: "ship_state_id")
  final int? shipStateId;
  @override
  @JsonKey(name: "ship_area")
  final String? shipArea;
  @override
  @JsonKey(name: "ship_pobox")
  final String? shipPobox;
  @override
  @JsonKey(name: "ship_country_id")
  final int? shipCountryId;
  @override
  @JsonKey(name: "ship_email")
  final String? shipEmail;
  @override
  @JsonKey(name: "ship_mobile")
  final String? shipMobile;
  @override
  @JsonKey(name: "ship_phone")
  final String? shipPhone;
  @override
  @JsonKey(name: "ship_street_no")
  final String? shipStreetNo;
  @override
  @JsonKey(name: "ship_zone")
  final String? shipZone;
  @override
  @JsonKey(name: "ship_flat_no")
  final String? shipFlatNo;
  @override
  @JsonKey(name: "ship_building_no")
  final String? shipBuildingNo;
  @override
  @JsonKey(name: "ship_door_no")
  final String? shipDoorNo;
  @override
  @JsonKey(name: "cust_ship_address_id")
  final int? custShipAddressId;
  @override
  @JsonKey(name: "order_note")
  final String? orderNote;
  @override
  @JsonKey(name: "created_date")
  final String? createdDate;
  @override
  @JsonKey(name: "updated_date")
  final DateTime? updatedDate;
  @override
  @JsonKey(name: "currency_code")
  final String? currencyCode;
  @override
  @JsonKey(name: "del_method_id")
  final int? delMethodId;
  @override
  @JsonKey(name: "del_method_name")
  final String? delMethodName;
  @override
  @JsonKey(name: "pickup_location_id")
  final int? pickupLocationId;
  @override
  @JsonKey(name: "pickup_location_name")
  final String? pickupLocationName;
  @override
  @JsonKey(name: "pickup_location_address")
  final String? pickupLocationAddress;
  @override
  @JsonKey(name: "area_id")
  final int? areaId;
  @override
  @JsonKey(name: "zip")
  final String? zip;
  @override
  @JsonKey(name: "country_id")
  final int? countryId;
  @override
  @JsonKey(name: "state_id")
  final int? stateId;
  @override
  @JsonKey(name: "phone_no")
  final int? phoneNo;
  @override
  @JsonKey(name: "email_id")
  final String? emailId;
  @override
  @JsonKey(name: "pickup_country_name")
  final String? pickupCountryName;
  @override
  @JsonKey(name: "pickup_state_name")
  final String? pickupStateName;
  @override
  @JsonKey(name: "pickup_area_name")
  final String? pickupAreaName;
  @override
  @JsonKey(name: "order_reject_reason")
  final String? orderRejectReason;
  @override
  @JsonKey(name: "presentment_currency_id")
  final int? presentmentCurrencyId;
  @override
  @JsonKey(name: "exchange_multiplier")
  final int? exchangeMultiplier;
  @override
  @JsonKey(name: "presentment_currency_precision")
  final int? presentmentCurrencyPrecision;
  @override
  @JsonKey(name: "presentment_currency_code")
  final String? presentmentCurrencyCode;
  @override
  @JsonKey(name: "reference_type_id")
  final int? referenceTypeId;
  final List<OrderStatus>? _orderStatuses;
  @override
  @JsonKey(name: "order_statuses")
  List<OrderStatus>? get orderStatuses {
    final value = _orderStatuses;
    if (value == null) return null;
    if (_orderStatuses is EqualUnmodifiableListView) return _orderStatuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Store>? _stores;
  @override
  @JsonKey(name: "stores")
  List<Store>? get stores {
    final value = _stores;
    if (value == null) return null;
    if (_stores is EqualUnmodifiableListView) return _stores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductOrderItem>? _productOrderItem;
  @override
  @JsonKey(name: "product_order_item")
  List<ProductOrderItem>? get productOrderItem {
    final value = _productOrderItem;
    if (value == null) return null;
    if (_productOrderItem is EqualUnmodifiableListView)
      return _productOrderItem;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "wallet_enabled")
  final int? walletEnabled;
  @override
  @JsonKey(name: "reward_points_enabled")
  final int? rewardPointsEnabled;
  @override
  @JsonKey(name: "weighing_scale_enabled")
  final int? weighingScaleEnabled;
  @override
  @JsonKey(name: "parcel_charge_enabled")
  final int? parcelChargeEnabled;

  @override
  String toString() {
    return 'OrderDetailResponse(prodOrderId: $prodOrderId, referenceNo: $referenceNo, orderToken: $orderToken, orderStatusName: $orderStatusName, deliveryAgentId: $deliveryAgentId, rounding: $rounding, parcelCharge: $parcelCharge, tableDetails: $tableDetails, custFeedbackExist: $custFeedbackExist, customerFeedbacks: $customerFeedbacks, tenantId: $tenantId, deliveryAgentName: $deliveryAgentName, deliveryBoyPhone: $deliveryBoyPhone, deliveryPartnerId: $deliveryPartnerId, deliveryPartnerName: $deliveryPartnerName, deliveryAgentStatusId: $deliveryAgentStatusId, delPartnerOrderNo: $delPartnerOrderNo, orderStatusArabicName: $orderStatusArabicName, payReferenceNumber: $payReferenceNumber, orderOptionId: $orderOptionId, delPrefDate: $delPrefDate, delPrefTime: $delPrefTime, pickupDate: $pickupDate, pickupTime: $pickupTime, orderOptionDate: $orderOptionDate, orderOption: $orderOption, paymentMethodId: $paymentMethodId, payMethodName: $payMethodName, payMethodArabic: $payMethodArabic, paymentStatusId: $paymentStatusId, paymentStatusName: $paymentStatusName, paymentStatusArabic: $paymentStatusArabic, storeId: $storeId, spotDiscountPercentage: $spotDiscountPercentage, spotDiscountAmt: $spotDiscountAmt, orderOptionName: $orderOptionName, orderStatusId: $orderStatusId, invoiceNum: $invoiceNum, orderDate: $orderDate, mobOrderDate: $mobOrderDate, mobOrderTime: $mobOrderTime, mobODate: $mobODate, netAmount: $netAmount, amountInCash: $amountInCash, timeCash: $timeCash, amountByCard: $amountByCard, timeCard: $timeCard, netAmountWalletMoney: $netAmountWalletMoney, netAmountWalletPoints: $netAmountWalletPoints, stateName: $stateName, countryName: $countryName, grandTotal: $grandTotal, accountId: $accountId, loyaltyNo: $loyaltyNo, custId: $custId, taxableAmount: $taxableAmount, isTaxable: $isTaxable, isTaxInclusive: $isTaxInclusive, taxId: $taxId, trn: $trn, nonTaxableAmt: $nonTaxableAmt, orderDiscPercentage: $orderDiscPercentage, arabicNameSettings: $arabicNameSettings, taxSettings: $taxSettings, taxName: $taxName, orderTaxPercentage: $orderTaxPercentage, orderDiscAmount: $orderDiscAmount, taxAmount: $taxAmount, shippingCharge: $shippingCharge, weightScale: $weightScale, cancelItemAmount: $cancelItemAmount, substituteExist: $substituteExist, subNotificationStatusId: $subNotificationStatusId, subNotificationStatusName: $subNotificationStatusName, surgeAmt: $surgeAmt, orderSurges: $orderSurges, supplierId: $supplierId, waiterName: $waiterName, cashierName: $cashierName, kioskName: $kioskName, vehicleNo: $vehicleNo, deviceSerialNo: $deviceSerialNo, billNo: $billNo, billCustName: $billCustName, billFlatNo: $billFlatNo, billDoorNo: $billDoorNo, billStreetNo: $billStreetNo, billBuildingNo: $billBuildingNo, billZone: $billZone, billLocation: $billLocation, billCity: $billCity, billLandmark: $billLandmark, billArea: $billArea, billPobox: $billPobox, billCountryId: $billCountryId, billStateId: $billStateId, billEmail: $billEmail, billMobile: $billMobile, billPhone: $billPhone, shipLocation: $shipLocation, shipCustName: $shipCustName, shipCity: $shipCity, shipLandmark: $shipLandmark, shipStateId: $shipStateId, shipArea: $shipArea, shipPobox: $shipPobox, shipCountryId: $shipCountryId, shipEmail: $shipEmail, shipMobile: $shipMobile, shipPhone: $shipPhone, shipStreetNo: $shipStreetNo, shipZone: $shipZone, shipFlatNo: $shipFlatNo, shipBuildingNo: $shipBuildingNo, shipDoorNo: $shipDoorNo, custShipAddressId: $custShipAddressId, orderNote: $orderNote, createdDate: $createdDate, updatedDate: $updatedDate, currencyCode: $currencyCode, delMethodId: $delMethodId, delMethodName: $delMethodName, pickupLocationId: $pickupLocationId, pickupLocationName: $pickupLocationName, pickupLocationAddress: $pickupLocationAddress, areaId: $areaId, zip: $zip, countryId: $countryId, stateId: $stateId, phoneNo: $phoneNo, emailId: $emailId, pickupCountryName: $pickupCountryName, pickupStateName: $pickupStateName, pickupAreaName: $pickupAreaName, orderRejectReason: $orderRejectReason, presentmentCurrencyId: $presentmentCurrencyId, exchangeMultiplier: $exchangeMultiplier, presentmentCurrencyPrecision: $presentmentCurrencyPrecision, presentmentCurrencyCode: $presentmentCurrencyCode, referenceTypeId: $referenceTypeId, orderStatuses: $orderStatuses, stores: $stores, productOrderItem: $productOrderItem, walletEnabled: $walletEnabled, rewardPointsEnabled: $rewardPointsEnabled, weighingScaleEnabled: $weighingScaleEnabled, parcelChargeEnabled: $parcelChargeEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDetailResponseImpl &&
            (identical(other.prodOrderId, prodOrderId) ||
                other.prodOrderId == prodOrderId) &&
            (identical(other.referenceNo, referenceNo) ||
                other.referenceNo == referenceNo) &&
            (identical(other.orderToken, orderToken) ||
                other.orderToken == orderToken) &&
            (identical(other.orderStatusName, orderStatusName) ||
                other.orderStatusName == orderStatusName) &&
            (identical(other.deliveryAgentId, deliveryAgentId) ||
                other.deliveryAgentId == deliveryAgentId) &&
            (identical(other.rounding, rounding) ||
                other.rounding == rounding) &&
            (identical(other.parcelCharge, parcelCharge) ||
                other.parcelCharge == parcelCharge) &&
            const DeepCollectionEquality().equals(
              other._tableDetails,
              _tableDetails,
            ) &&
            (identical(other.custFeedbackExist, custFeedbackExist) ||
                other.custFeedbackExist == custFeedbackExist) &&
            (identical(other.customerFeedbacks, customerFeedbacks) ||
                other.customerFeedbacks == customerFeedbacks) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.deliveryAgentName, deliveryAgentName) ||
                other.deliveryAgentName == deliveryAgentName) &&
            (identical(other.deliveryBoyPhone, deliveryBoyPhone) ||
                other.deliveryBoyPhone == deliveryBoyPhone) &&
            (identical(other.deliveryPartnerId, deliveryPartnerId) ||
                other.deliveryPartnerId == deliveryPartnerId) &&
            (identical(other.deliveryPartnerName, deliveryPartnerName) ||
                other.deliveryPartnerName == deliveryPartnerName) &&
            (identical(other.deliveryAgentStatusId, deliveryAgentStatusId) ||
                other.deliveryAgentStatusId == deliveryAgentStatusId) &&
            (identical(other.delPartnerOrderNo, delPartnerOrderNo) ||
                other.delPartnerOrderNo == delPartnerOrderNo) &&
            (identical(other.orderStatusArabicName, orderStatusArabicName) ||
                other.orderStatusArabicName == orderStatusArabicName) &&
            (identical(other.payReferenceNumber, payReferenceNumber) ||
                other.payReferenceNumber == payReferenceNumber) &&
            (identical(other.orderOptionId, orderOptionId) ||
                other.orderOptionId == orderOptionId) &&
            (identical(other.delPrefDate, delPrefDate) ||
                other.delPrefDate == delPrefDate) &&
            (identical(other.delPrefTime, delPrefTime) ||
                other.delPrefTime == delPrefTime) &&
            (identical(other.pickupDate, pickupDate) ||
                other.pickupDate == pickupDate) &&
            (identical(other.pickupTime, pickupTime) ||
                other.pickupTime == pickupTime) &&
            (identical(other.orderOptionDate, orderOptionDate) ||
                other.orderOptionDate == orderOptionDate) &&
            (identical(other.orderOption, orderOption) ||
                other.orderOption == orderOption) &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                other.paymentMethodId == paymentMethodId) &&
            (identical(other.payMethodName, payMethodName) ||
                other.payMethodName == payMethodName) &&
            (identical(other.payMethodArabic, payMethodArabic) ||
                other.payMethodArabic == payMethodArabic) &&
            (identical(other.paymentStatusId, paymentStatusId) ||
                other.paymentStatusId == paymentStatusId) &&
            (identical(other.paymentStatusName, paymentStatusName) ||
                other.paymentStatusName == paymentStatusName) &&
            (identical(other.paymentStatusArabic, paymentStatusArabic) ||
                other.paymentStatusArabic == paymentStatusArabic) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.spotDiscountPercentage, spotDiscountPercentage) ||
                other.spotDiscountPercentage == spotDiscountPercentage) &&
            (identical(other.spotDiscountAmt, spotDiscountAmt) ||
                other.spotDiscountAmt == spotDiscountAmt) &&
            (identical(other.orderOptionName, orderOptionName) ||
                other.orderOptionName == orderOptionName) &&
            (identical(other.orderStatusId, orderStatusId) ||
                other.orderStatusId == orderStatusId) &&
            (identical(other.invoiceNum, invoiceNum) ||
                other.invoiceNum == invoiceNum) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.mobOrderDate, mobOrderDate) ||
                other.mobOrderDate == mobOrderDate) &&
            (identical(other.mobOrderTime, mobOrderTime) ||
                other.mobOrderTime == mobOrderTime) &&
            (identical(other.mobODate, mobODate) ||
                other.mobODate == mobODate) &&
            (identical(other.netAmount, netAmount) ||
                other.netAmount == netAmount) &&
            (identical(other.amountInCash, amountInCash) ||
                other.amountInCash == amountInCash) &&
            (identical(other.timeCash, timeCash) ||
                other.timeCash == timeCash) &&
            (identical(other.amountByCard, amountByCard) ||
                other.amountByCard == amountByCard) &&
            (identical(other.timeCard, timeCard) ||
                other.timeCard == timeCard) &&
            (identical(other.netAmountWalletMoney, netAmountWalletMoney) ||
                other.netAmountWalletMoney == netAmountWalletMoney) &&
            (identical(other.netAmountWalletPoints, netAmountWalletPoints) ||
                other.netAmountWalletPoints == netAmountWalletPoints) &&
            (identical(other.stateName, stateName) ||
                other.stateName == stateName) &&
            (identical(other.countryName, countryName) ||
                other.countryName == countryName) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.loyaltyNo, loyaltyNo) ||
                other.loyaltyNo == loyaltyNo) &&
            (identical(other.custId, custId) || other.custId == custId) &&
            (identical(other.taxableAmount, taxableAmount) ||
                other.taxableAmount == taxableAmount) &&
            (identical(other.isTaxable, isTaxable) ||
                other.isTaxable == isTaxable) &&
            (identical(other.isTaxInclusive, isTaxInclusive) ||
                other.isTaxInclusive == isTaxInclusive) &&
            (identical(other.taxId, taxId) || other.taxId == taxId) &&
            (identical(other.trn, trn) || other.trn == trn) &&
            (identical(other.nonTaxableAmt, nonTaxableAmt) ||
                other.nonTaxableAmt == nonTaxableAmt) &&
            (identical(other.orderDiscPercentage, orderDiscPercentage) ||
                other.orderDiscPercentage == orderDiscPercentage) &&
            (identical(other.arabicNameSettings, arabicNameSettings) ||
                other.arabicNameSettings == arabicNameSettings) &&
            (identical(other.taxSettings, taxSettings) ||
                other.taxSettings == taxSettings) &&
            (identical(other.taxName, taxName) || other.taxName == taxName) &&
            (identical(other.orderTaxPercentage, orderTaxPercentage) ||
                other.orderTaxPercentage == orderTaxPercentage) &&
            (identical(other.orderDiscAmount, orderDiscAmount) ||
                other.orderDiscAmount == orderDiscAmount) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.shippingCharge, shippingCharge) ||
                other.shippingCharge == shippingCharge) &&
            (identical(other.weightScale, weightScale) ||
                other.weightScale == weightScale) &&
            (identical(other.cancelItemAmount, cancelItemAmount) ||
                other.cancelItemAmount == cancelItemAmount) &&
            (identical(other.substituteExist, substituteExist) ||
                other.substituteExist == substituteExist) &&
            (identical(
                  other.subNotificationStatusId,
                  subNotificationStatusId,
                ) ||
                other.subNotificationStatusId == subNotificationStatusId) &&
            (identical(
                  other.subNotificationStatusName,
                  subNotificationStatusName,
                ) ||
                other.subNotificationStatusName == subNotificationStatusName) &&
            (identical(other.surgeAmt, surgeAmt) ||
                other.surgeAmt == surgeAmt) &&
            const DeepCollectionEquality().equals(
              other._orderSurges,
              _orderSurges,
            ) &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.waiterName, waiterName) ||
                other.waiterName == waiterName) &&
            (identical(other.cashierName, cashierName) ||
                other.cashierName == cashierName) &&
            (identical(other.kioskName, kioskName) ||
                other.kioskName == kioskName) &&
            (identical(other.vehicleNo, vehicleNo) ||
                other.vehicleNo == vehicleNo) &&
            (identical(other.deviceSerialNo, deviceSerialNo) ||
                other.deviceSerialNo == deviceSerialNo) &&
            (identical(other.billNo, billNo) || other.billNo == billNo) &&
            (identical(other.billCustName, billCustName) ||
                other.billCustName == billCustName) &&
            (identical(other.billFlatNo, billFlatNo) ||
                other.billFlatNo == billFlatNo) &&
            (identical(other.billDoorNo, billDoorNo) ||
                other.billDoorNo == billDoorNo) &&
            (identical(other.billStreetNo, billStreetNo) ||
                other.billStreetNo == billStreetNo) &&
            (identical(other.billBuildingNo, billBuildingNo) ||
                other.billBuildingNo == billBuildingNo) &&
            (identical(other.billZone, billZone) ||
                other.billZone == billZone) &&
            (identical(other.billLocation, billLocation) ||
                other.billLocation == billLocation) &&
            (identical(other.billCity, billCity) ||
                other.billCity == billCity) &&
            (identical(other.billLandmark, billLandmark) ||
                other.billLandmark == billLandmark) &&
            (identical(other.billArea, billArea) ||
                other.billArea == billArea) &&
            (identical(other.billPobox, billPobox) ||
                other.billPobox == billPobox) &&
            (identical(other.billCountryId, billCountryId) ||
                other.billCountryId == billCountryId) &&
            (identical(other.billStateId, billStateId) ||
                other.billStateId == billStateId) &&
            (identical(other.billEmail, billEmail) ||
                other.billEmail == billEmail) &&
            (identical(other.billMobile, billMobile) ||
                other.billMobile == billMobile) &&
            (identical(other.billPhone, billPhone) ||
                other.billPhone == billPhone) &&
            (identical(other.shipLocation, shipLocation) ||
                other.shipLocation == shipLocation) &&
            (identical(other.shipCustName, shipCustName) ||
                other.shipCustName == shipCustName) &&
            (identical(other.shipCity, shipCity) ||
                other.shipCity == shipCity) &&
            (identical(other.shipLandmark, shipLandmark) ||
                other.shipLandmark == shipLandmark) &&
            (identical(other.shipStateId, shipStateId) ||
                other.shipStateId == shipStateId) &&
            (identical(other.shipArea, shipArea) ||
                other.shipArea == shipArea) &&
            (identical(other.shipPobox, shipPobox) ||
                other.shipPobox == shipPobox) &&
            (identical(other.shipCountryId, shipCountryId) ||
                other.shipCountryId == shipCountryId) &&
            (identical(other.shipEmail, shipEmail) ||
                other.shipEmail == shipEmail) &&
            (identical(other.shipMobile, shipMobile) ||
                other.shipMobile == shipMobile) &&
            (identical(other.shipPhone, shipPhone) ||
                other.shipPhone == shipPhone) &&
            (identical(other.shipStreetNo, shipStreetNo) ||
                other.shipStreetNo == shipStreetNo) &&
            (identical(other.shipZone, shipZone) ||
                other.shipZone == shipZone) &&
            (identical(other.shipFlatNo, shipFlatNo) ||
                other.shipFlatNo == shipFlatNo) &&
            (identical(other.shipBuildingNo, shipBuildingNo) ||
                other.shipBuildingNo == shipBuildingNo) &&
            (identical(other.shipDoorNo, shipDoorNo) ||
                other.shipDoorNo == shipDoorNo) &&
            (identical(other.custShipAddressId, custShipAddressId) ||
                other.custShipAddressId == custShipAddressId) &&
            (identical(other.orderNote, orderNote) ||
                other.orderNote == orderNote) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.updatedDate, updatedDate) ||
                other.updatedDate == updatedDate) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.delMethodId, delMethodId) ||
                other.delMethodId == delMethodId) &&
            (identical(other.delMethodName, delMethodName) ||
                other.delMethodName == delMethodName) &&
            (identical(other.pickupLocationId, pickupLocationId) ||
                other.pickupLocationId == pickupLocationId) &&
            (identical(other.pickupLocationName, pickupLocationName) ||
                other.pickupLocationName == pickupLocationName) &&
            (identical(other.pickupLocationAddress, pickupLocationAddress) ||
                other.pickupLocationAddress == pickupLocationAddress) &&
            (identical(other.areaId, areaId) || other.areaId == areaId) &&
            (identical(other.zip, zip) || other.zip == zip) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.stateId, stateId) || other.stateId == stateId) &&
            (identical(other.phoneNo, phoneNo) || other.phoneNo == phoneNo) &&
            (identical(other.emailId, emailId) || other.emailId == emailId) &&
            (identical(other.pickupCountryName, pickupCountryName) ||
                other.pickupCountryName == pickupCountryName) &&
            (identical(other.pickupStateName, pickupStateName) ||
                other.pickupStateName == pickupStateName) &&
            (identical(other.pickupAreaName, pickupAreaName) ||
                other.pickupAreaName == pickupAreaName) &&
            (identical(other.orderRejectReason, orderRejectReason) ||
                other.orderRejectReason == orderRejectReason) &&
            (identical(other.presentmentCurrencyId, presentmentCurrencyId) ||
                other.presentmentCurrencyId == presentmentCurrencyId) &&
            (identical(other.exchangeMultiplier, exchangeMultiplier) ||
                other.exchangeMultiplier == exchangeMultiplier) &&
            (identical(
                  other.presentmentCurrencyPrecision,
                  presentmentCurrencyPrecision,
                ) ||
                other.presentmentCurrencyPrecision ==
                    presentmentCurrencyPrecision) &&
            (identical(
                  other.presentmentCurrencyCode,
                  presentmentCurrencyCode,
                ) ||
                other.presentmentCurrencyCode == presentmentCurrencyCode) &&
            (identical(other.referenceTypeId, referenceTypeId) ||
                other.referenceTypeId == referenceTypeId) &&
            const DeepCollectionEquality().equals(
              other._orderStatuses,
              _orderStatuses,
            ) &&
            const DeepCollectionEquality().equals(other._stores, _stores) &&
            const DeepCollectionEquality().equals(
              other._productOrderItem,
              _productOrderItem,
            ) &&
            (identical(other.walletEnabled, walletEnabled) ||
                other.walletEnabled == walletEnabled) &&
            (identical(other.rewardPointsEnabled, rewardPointsEnabled) ||
                other.rewardPointsEnabled == rewardPointsEnabled) &&
            (identical(other.weighingScaleEnabled, weighingScaleEnabled) ||
                other.weighingScaleEnabled == weighingScaleEnabled) &&
            (identical(other.parcelChargeEnabled, parcelChargeEnabled) ||
                other.parcelChargeEnabled == parcelChargeEnabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    prodOrderId,
    referenceNo,
    orderToken,
    orderStatusName,
    deliveryAgentId,
    rounding,
    parcelCharge,
    const DeepCollectionEquality().hash(_tableDetails),
    custFeedbackExist,
    customerFeedbacks,
    tenantId,
    deliveryAgentName,
    deliveryBoyPhone,
    deliveryPartnerId,
    deliveryPartnerName,
    deliveryAgentStatusId,
    delPartnerOrderNo,
    orderStatusArabicName,
    payReferenceNumber,
    orderOptionId,
    delPrefDate,
    delPrefTime,
    pickupDate,
    pickupTime,
    orderOptionDate,
    orderOption,
    paymentMethodId,
    payMethodName,
    payMethodArabic,
    paymentStatusId,
    paymentStatusName,
    paymentStatusArabic,
    storeId,
    spotDiscountPercentage,
    spotDiscountAmt,
    orderOptionName,
    orderStatusId,
    invoiceNum,
    orderDate,
    mobOrderDate,
    mobOrderTime,
    mobODate,
    netAmount,
    amountInCash,
    timeCash,
    amountByCard,
    timeCard,
    netAmountWalletMoney,
    netAmountWalletPoints,
    stateName,
    countryName,
    grandTotal,
    accountId,
    loyaltyNo,
    custId,
    taxableAmount,
    isTaxable,
    isTaxInclusive,
    taxId,
    trn,
    nonTaxableAmt,
    orderDiscPercentage,
    arabicNameSettings,
    taxSettings,
    taxName,
    orderTaxPercentage,
    orderDiscAmount,
    taxAmount,
    shippingCharge,
    weightScale,
    cancelItemAmount,
    substituteExist,
    subNotificationStatusId,
    subNotificationStatusName,
    surgeAmt,
    const DeepCollectionEquality().hash(_orderSurges),
    supplierId,
    waiterName,
    cashierName,
    kioskName,
    vehicleNo,
    deviceSerialNo,
    billNo,
    billCustName,
    billFlatNo,
    billDoorNo,
    billStreetNo,
    billBuildingNo,
    billZone,
    billLocation,
    billCity,
    billLandmark,
    billArea,
    billPobox,
    billCountryId,
    billStateId,
    billEmail,
    billMobile,
    billPhone,
    shipLocation,
    shipCustName,
    shipCity,
    shipLandmark,
    shipStateId,
    shipArea,
    shipPobox,
    shipCountryId,
    shipEmail,
    shipMobile,
    shipPhone,
    shipStreetNo,
    shipZone,
    shipFlatNo,
    shipBuildingNo,
    shipDoorNo,
    custShipAddressId,
    orderNote,
    createdDate,
    updatedDate,
    currencyCode,
    delMethodId,
    delMethodName,
    pickupLocationId,
    pickupLocationName,
    pickupLocationAddress,
    areaId,
    zip,
    countryId,
    stateId,
    phoneNo,
    emailId,
    pickupCountryName,
    pickupStateName,
    pickupAreaName,
    orderRejectReason,
    presentmentCurrencyId,
    exchangeMultiplier,
    presentmentCurrencyPrecision,
    presentmentCurrencyCode,
    referenceTypeId,
    const DeepCollectionEquality().hash(_orderStatuses),
    const DeepCollectionEquality().hash(_stores),
    const DeepCollectionEquality().hash(_productOrderItem),
    walletEnabled,
    rewardPointsEnabled,
    weighingScaleEnabled,
    parcelChargeEnabled,
  ]);

  /// Create a copy of OrderDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDetailResponseImplCopyWith<_$OrderDetailResponseImpl> get copyWith =>
      __$$OrderDetailResponseImplCopyWithImpl<_$OrderDetailResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDetailResponseImplToJson(this);
  }
}

abstract class _OrderDetailResponse implements OrderDetailResponse {
  const factory _OrderDetailResponse({
    @JsonKey(name: "prod_order_id") final int? prodOrderId,
    @JsonKey(name: "reference_no") final String? referenceNo,
    @JsonKey(name: "order_token") final String? orderToken,
    @JsonKey(name: "order_status_name") final String? orderStatusName,
    @JsonKey(name: "delivery_agent_id") final String? deliveryAgentId,
    @JsonKey(name: "rounding") final int? rounding,
    @JsonKey(name: "parcel_charge") final double? parcelCharge,
    @JsonKey(name: "table_details") final List<dynamic>? tableDetails,
    @JsonKey(name: "cust_feedback_exist") final int? custFeedbackExist,
    @JsonKey(name: "customer_feedbacks") final String? customerFeedbacks,
    @JsonKey(name: "tenant_id") final int? tenantId,
    @JsonKey(name: "delivery_agent_name") final String? deliveryAgentName,
    @JsonKey(name: "delivery_boy_phone") final int? deliveryBoyPhone,
    @JsonKey(name: "delivery_partner_id") final int? deliveryPartnerId,
    @JsonKey(name: "delivery_partner_name") final String? deliveryPartnerName,
    @JsonKey(name: "delivery_agent_status_id") final int? deliveryAgentStatusId,
    @JsonKey(name: "del_partner_order_no") final String? delPartnerOrderNo,
    @JsonKey(name: "order_status_arabic_name")
    final String? orderStatusArabicName,
    @JsonKey(name: "pay_reference_number") final String? payReferenceNumber,
    @JsonKey(name: "order_option_id") final int? orderOptionId,
    @JsonKey(name: "del_pref_date") final String? delPrefDate,
    @JsonKey(name: "del_pref_time") final String? delPrefTime,
    @JsonKey(name: "pickup_date") final String? pickupDate,
    @JsonKey(name: "pickup_time") final String? pickupTime,
    @JsonKey(name: "order_option_date") final String? orderOptionDate,
    @JsonKey(name: "order_option") final String? orderOption,
    @JsonKey(name: "payment_method_id") final int? paymentMethodId,
    @JsonKey(name: "pay_method_name") final String? payMethodName,
    @JsonKey(name: "pay_method_arabic") final String? payMethodArabic,
    @JsonKey(name: "payment_status_id") final int? paymentStatusId,
    @JsonKey(name: "payment_status_name") final String? paymentStatusName,
    @JsonKey(name: "payment_status_arabic") final String? paymentStatusArabic,
    @JsonKey(name: "store_id") final int? storeId,
    @JsonKey(name: "spot_discount_percentage", fromJson: parseNumberAsDouble)
    final double? spotDiscountPercentage,
    @JsonKey(name: "spot_discount_amt") final int? spotDiscountAmt,
    @JsonKey(name: "order_option_name") final String? orderOptionName,
    @JsonKey(name: "order_status_id") final int? orderStatusId,
    @JsonKey(name: "invoice_num") final String? invoiceNum,
    @JsonKey(name: "order_date") final String? orderDate,
    @JsonKey(name: "mob_order_date") final String? mobOrderDate,
    @JsonKey(name: "mob_order_time") final String? mobOrderTime,
    @JsonKey(name: "mob_o_date") final String? mobODate,
    @JsonKey(name: "net_amount") final double? netAmount,
    @JsonKey(name: "amount_in_cash") final int? amountInCash,
    @JsonKey(name: "time_cash") final String? timeCash,
    @JsonKey(name: "amount_by_card") final int? amountByCard,
    @JsonKey(name: "time_card") final String? timeCard,
    @JsonKey(name: "net_amount_wallet_money") final int? netAmountWalletMoney,
    @JsonKey(name: "net_amount_wallet_points") final int? netAmountWalletPoints,
    @JsonKey(name: "state_name") final String? stateName,
    @JsonKey(name: "country_name") final String? countryName,
    @JsonKey(name: "grand_total") final double? grandTotal,
    @JsonKey(name: "account_id") final int? accountId,
    @JsonKey(name: "loyalty_no") final String? loyaltyNo,
    @JsonKey(name: "cust_id") final int? custId,
    @JsonKey(name: "taxable_amount") final double? taxableAmount,
    @JsonKey(name: "is_taxable") final int? isTaxable,
    @JsonKey(name: "is_tax_inclusive") final int? isTaxInclusive,
    @JsonKey(name: "tax_id") final int? taxId,
    @JsonKey(name: "TRN") final String? trn,
    @JsonKey(name: "non_taxable_amt") final int? nonTaxableAmt,
    @JsonKey(name: "order_disc_percentage") final int? orderDiscPercentage,
    @JsonKey(name: "ArabicNameSettings") final int? arabicNameSettings,
    @JsonKey(name: "taxSettings") final int? taxSettings,
    @JsonKey(name: "tax_name") final String? taxName,
    @JsonKey(name: "order_tax_percentage") final int? orderTaxPercentage,
    @JsonKey(name: "order_disc_amount") final int? orderDiscAmount,
    @JsonKey(name: "tax_amount") final double? taxAmount,
    @JsonKey(name: "shipping_charge") final int? shippingCharge,
    @JsonKey(name: "weight_scale") final int? weightScale,
    @JsonKey(name: "cancel_item_amount") final int? cancelItemAmount,
    @JsonKey(name: "substitute_exist") final int? substituteExist,
    @JsonKey(name: "sub_notification_status_id")
    final int? subNotificationStatusId,
    @JsonKey(name: "sub_notification_status_name")
    final String? subNotificationStatusName,
    @JsonKey(name: "surge_amt") final int? surgeAmt,
    @JsonKey(name: "order_surges") final List<dynamic>? orderSurges,
    @JsonKey(name: "supplier_id") final int? supplierId,
    @JsonKey(name: "waiter_name") final String? waiterName,
    @JsonKey(name: "cashier_name") final String? cashierName,
    @JsonKey(name: "kiosk_name") final String? kioskName,
    @JsonKey(name: "vehicle_no") final String? vehicleNo,
    @JsonKey(name: "device_serial_no") final String? deviceSerialNo,
    @JsonKey(name: "bill_no") final String? billNo,
    @JsonKey(name: "bill_cust_name") final String? billCustName,
    @JsonKey(name: "bill_flat_no") final String? billFlatNo,
    @JsonKey(name: "bill_door_no") final String? billDoorNo,
    @JsonKey(name: "bill_street_no") final String? billStreetNo,
    @JsonKey(name: "bill_building_no") final String? billBuildingNo,
    @JsonKey(name: "bill_zone") final String? billZone,
    @JsonKey(name: "bill_location") final String? billLocation,
    @JsonKey(name: "bill_city") final String? billCity,
    @JsonKey(name: "bill_landmark") final String? billLandmark,
    @JsonKey(name: "bill_area") final String? billArea,
    @JsonKey(name: "bill_pobox") final String? billPobox,
    @JsonKey(name: "bill_country_id") final int? billCountryId,
    @JsonKey(name: "bill_state_id") final int? billStateId,
    @JsonKey(name: "bill_email") final String? billEmail,
    @JsonKey(name: "bill_mobile") final String? billMobile,
    @JsonKey(name: "bill_phone") final String? billPhone,
    @JsonKey(name: "ship_location") final String? shipLocation,
    @JsonKey(name: "ship_cust_name") final String? shipCustName,
    @JsonKey(name: "ship_city") final String? shipCity,
    @JsonKey(name: "ship_landmark") final String? shipLandmark,
    @JsonKey(name: "ship_state_id") final int? shipStateId,
    @JsonKey(name: "ship_area") final String? shipArea,
    @JsonKey(name: "ship_pobox") final String? shipPobox,
    @JsonKey(name: "ship_country_id") final int? shipCountryId,
    @JsonKey(name: "ship_email") final String? shipEmail,
    @JsonKey(name: "ship_mobile") final String? shipMobile,
    @JsonKey(name: "ship_phone") final String? shipPhone,
    @JsonKey(name: "ship_street_no") final String? shipStreetNo,
    @JsonKey(name: "ship_zone") final String? shipZone,
    @JsonKey(name: "ship_flat_no") final String? shipFlatNo,
    @JsonKey(name: "ship_building_no") final String? shipBuildingNo,
    @JsonKey(name: "ship_door_no") final String? shipDoorNo,
    @JsonKey(name: "cust_ship_address_id") final int? custShipAddressId,
    @JsonKey(name: "order_note") final String? orderNote,
    @JsonKey(name: "created_date") final String? createdDate,
    @JsonKey(name: "updated_date") final DateTime? updatedDate,
    @JsonKey(name: "currency_code") final String? currencyCode,
    @JsonKey(name: "del_method_id") final int? delMethodId,
    @JsonKey(name: "del_method_name") final String? delMethodName,
    @JsonKey(name: "pickup_location_id") final int? pickupLocationId,
    @JsonKey(name: "pickup_location_name") final String? pickupLocationName,
    @JsonKey(name: "pickup_location_address")
    final String? pickupLocationAddress,
    @JsonKey(name: "area_id") final int? areaId,
    @JsonKey(name: "zip") final String? zip,
    @JsonKey(name: "country_id") final int? countryId,
    @JsonKey(name: "state_id") final int? stateId,
    @JsonKey(name: "phone_no") final int? phoneNo,
    @JsonKey(name: "email_id") final String? emailId,
    @JsonKey(name: "pickup_country_name") final String? pickupCountryName,
    @JsonKey(name: "pickup_state_name") final String? pickupStateName,
    @JsonKey(name: "pickup_area_name") final String? pickupAreaName,
    @JsonKey(name: "order_reject_reason") final String? orderRejectReason,
    @JsonKey(name: "presentment_currency_id") final int? presentmentCurrencyId,
    @JsonKey(name: "exchange_multiplier") final int? exchangeMultiplier,
    @JsonKey(name: "presentment_currency_precision")
    final int? presentmentCurrencyPrecision,
    @JsonKey(name: "presentment_currency_code")
    final String? presentmentCurrencyCode,
    @JsonKey(name: "reference_type_id") final int? referenceTypeId,
    @JsonKey(name: "order_statuses") final List<OrderStatus>? orderStatuses,
    @JsonKey(name: "stores") final List<Store>? stores,
    @JsonKey(name: "product_order_item")
    final List<ProductOrderItem>? productOrderItem,
    @JsonKey(name: "wallet_enabled") final int? walletEnabled,
    @JsonKey(name: "reward_points_enabled") final int? rewardPointsEnabled,
    @JsonKey(name: "weighing_scale_enabled") final int? weighingScaleEnabled,
    @JsonKey(name: "parcel_charge_enabled") final int? parcelChargeEnabled,
  }) = _$OrderDetailResponseImpl;

  factory _OrderDetailResponse.fromJson(Map<String, dynamic> json) =
      _$OrderDetailResponseImpl.fromJson;

  @override
  @JsonKey(name: "prod_order_id")
  int? get prodOrderId;
  @override
  @JsonKey(name: "reference_no")
  String? get referenceNo;
  @override
  @JsonKey(name: "order_token")
  String? get orderToken;
  @override
  @JsonKey(name: "order_status_name")
  String? get orderStatusName;
  @override
  @JsonKey(name: "delivery_agent_id")
  String? get deliveryAgentId;
  @override
  @JsonKey(name: "rounding")
  int? get rounding;
  @override
  @JsonKey(name: "parcel_charge")
  double? get parcelCharge;
  @override
  @JsonKey(name: "table_details")
  List<dynamic>? get tableDetails;
  @override
  @JsonKey(name: "cust_feedback_exist")
  int? get custFeedbackExist;
  @override
  @JsonKey(name: "customer_feedbacks")
  String? get customerFeedbacks;
  @override
  @JsonKey(name: "tenant_id")
  int? get tenantId;
  @override
  @JsonKey(name: "delivery_agent_name")
  String? get deliveryAgentName;
  @override
  @JsonKey(name: "delivery_boy_phone")
  int? get deliveryBoyPhone;
  @override
  @JsonKey(name: "delivery_partner_id")
  int? get deliveryPartnerId;
  @override
  @JsonKey(name: "delivery_partner_name")
  String? get deliveryPartnerName;
  @override
  @JsonKey(name: "delivery_agent_status_id")
  int? get deliveryAgentStatusId;
  @override
  @JsonKey(name: "del_partner_order_no")
  String? get delPartnerOrderNo;
  @override
  @JsonKey(name: "order_status_arabic_name")
  String? get orderStatusArabicName;
  @override
  @JsonKey(name: "pay_reference_number")
  String? get payReferenceNumber;
  @override
  @JsonKey(name: "order_option_id")
  int? get orderOptionId;
  @override
  @JsonKey(name: "del_pref_date")
  String? get delPrefDate;
  @override
  @JsonKey(name: "del_pref_time")
  String? get delPrefTime;
  @override
  @JsonKey(name: "pickup_date")
  String? get pickupDate;
  @override
  @JsonKey(name: "pickup_time")
  String? get pickupTime;
  @override
  @JsonKey(name: "order_option_date")
  String? get orderOptionDate;
  @override
  @JsonKey(name: "order_option")
  String? get orderOption;
  @override
  @JsonKey(name: "payment_method_id")
  int? get paymentMethodId;
  @override
  @JsonKey(name: "pay_method_name")
  String? get payMethodName;
  @override
  @JsonKey(name: "pay_method_arabic")
  String? get payMethodArabic;
  @override
  @JsonKey(name: "payment_status_id")
  int? get paymentStatusId;
  @override
  @JsonKey(name: "payment_status_name")
  String? get paymentStatusName;
  @override
  @JsonKey(name: "payment_status_arabic")
  String? get paymentStatusArabic;
  @override
  @JsonKey(name: "store_id")
  int? get storeId;
  @override
  @JsonKey(name: "spot_discount_percentage", fromJson: parseNumberAsDouble)
  double? get spotDiscountPercentage;
  @override
  @JsonKey(name: "spot_discount_amt")
  int? get spotDiscountAmt;
  @override
  @JsonKey(name: "order_option_name")
  String? get orderOptionName;
  @override
  @JsonKey(name: "order_status_id")
  int? get orderStatusId;
  @override
  @JsonKey(name: "invoice_num")
  String? get invoiceNum;
  @override
  @JsonKey(name: "order_date")
  String? get orderDate;
  @override
  @JsonKey(name: "mob_order_date")
  String? get mobOrderDate;
  @override
  @JsonKey(name: "mob_order_time")
  String? get mobOrderTime;
  @override
  @JsonKey(name: "mob_o_date")
  String? get mobODate;
  @override
  @JsonKey(name: "net_amount")
  double? get netAmount;
  @override
  @JsonKey(name: "amount_in_cash")
  int? get amountInCash;
  @override
  @JsonKey(name: "time_cash")
  String? get timeCash;
  @override
  @JsonKey(name: "amount_by_card")
  int? get amountByCard;
  @override
  @JsonKey(name: "time_card")
  String? get timeCard;
  @override
  @JsonKey(name: "net_amount_wallet_money")
  int? get netAmountWalletMoney;
  @override
  @JsonKey(name: "net_amount_wallet_points")
  int? get netAmountWalletPoints;
  @override
  @JsonKey(name: "state_name")
  String? get stateName;
  @override
  @JsonKey(name: "country_name")
  String? get countryName;
  @override
  @JsonKey(name: "grand_total")
  double? get grandTotal;
  @override
  @JsonKey(name: "account_id")
  int? get accountId;
  @override
  @JsonKey(name: "loyalty_no")
  String? get loyaltyNo;
  @override
  @JsonKey(name: "cust_id")
  int? get custId;
  @override
  @JsonKey(name: "taxable_amount")
  double? get taxableAmount;
  @override
  @JsonKey(name: "is_taxable")
  int? get isTaxable;
  @override
  @JsonKey(name: "is_tax_inclusive")
  int? get isTaxInclusive;
  @override
  @JsonKey(name: "tax_id")
  int? get taxId;
  @override
  @JsonKey(name: "TRN")
  String? get trn;
  @override
  @JsonKey(name: "non_taxable_amt")
  int? get nonTaxableAmt;
  @override
  @JsonKey(name: "order_disc_percentage")
  int? get orderDiscPercentage;
  @override
  @JsonKey(name: "ArabicNameSettings")
  int? get arabicNameSettings;
  @override
  @JsonKey(name: "taxSettings")
  int? get taxSettings;
  @override
  @JsonKey(name: "tax_name")
  String? get taxName;
  @override
  @JsonKey(name: "order_tax_percentage")
  int? get orderTaxPercentage;
  @override
  @JsonKey(name: "order_disc_amount")
  int? get orderDiscAmount;
  @override
  @JsonKey(name: "tax_amount")
  double? get taxAmount;
  @override
  @JsonKey(name: "shipping_charge")
  int? get shippingCharge;
  @override
  @JsonKey(name: "weight_scale")
  int? get weightScale;
  @override
  @JsonKey(name: "cancel_item_amount")
  int? get cancelItemAmount;
  @override
  @JsonKey(name: "substitute_exist")
  int? get substituteExist;
  @override
  @JsonKey(name: "sub_notification_status_id")
  int? get subNotificationStatusId;
  @override
  @JsonKey(name: "sub_notification_status_name")
  String? get subNotificationStatusName;
  @override
  @JsonKey(name: "surge_amt")
  int? get surgeAmt;
  @override
  @JsonKey(name: "order_surges")
  List<dynamic>? get orderSurges;
  @override
  @JsonKey(name: "supplier_id")
  int? get supplierId;
  @override
  @JsonKey(name: "waiter_name")
  String? get waiterName;
  @override
  @JsonKey(name: "cashier_name")
  String? get cashierName;
  @override
  @JsonKey(name: "kiosk_name")
  String? get kioskName;
  @override
  @JsonKey(name: "vehicle_no")
  String? get vehicleNo;
  @override
  @JsonKey(name: "device_serial_no")
  String? get deviceSerialNo;
  @override
  @JsonKey(name: "bill_no")
  String? get billNo;
  @override
  @JsonKey(name: "bill_cust_name")
  String? get billCustName;
  @override
  @JsonKey(name: "bill_flat_no")
  String? get billFlatNo;
  @override
  @JsonKey(name: "bill_door_no")
  String? get billDoorNo;
  @override
  @JsonKey(name: "bill_street_no")
  String? get billStreetNo;
  @override
  @JsonKey(name: "bill_building_no")
  String? get billBuildingNo;
  @override
  @JsonKey(name: "bill_zone")
  String? get billZone;
  @override
  @JsonKey(name: "bill_location")
  String? get billLocation;
  @override
  @JsonKey(name: "bill_city")
  String? get billCity;
  @override
  @JsonKey(name: "bill_landmark")
  String? get billLandmark;
  @override
  @JsonKey(name: "bill_area")
  String? get billArea;
  @override
  @JsonKey(name: "bill_pobox")
  String? get billPobox;
  @override
  @JsonKey(name: "bill_country_id")
  int? get billCountryId;
  @override
  @JsonKey(name: "bill_state_id")
  int? get billStateId;
  @override
  @JsonKey(name: "bill_email")
  String? get billEmail;
  @override
  @JsonKey(name: "bill_mobile")
  String? get billMobile;
  @override
  @JsonKey(name: "bill_phone")
  String? get billPhone;
  @override
  @JsonKey(name: "ship_location")
  String? get shipLocation;
  @override
  @JsonKey(name: "ship_cust_name")
  String? get shipCustName;
  @override
  @JsonKey(name: "ship_city")
  String? get shipCity;
  @override
  @JsonKey(name: "ship_landmark")
  String? get shipLandmark;
  @override
  @JsonKey(name: "ship_state_id")
  int? get shipStateId;
  @override
  @JsonKey(name: "ship_area")
  String? get shipArea;
  @override
  @JsonKey(name: "ship_pobox")
  String? get shipPobox;
  @override
  @JsonKey(name: "ship_country_id")
  int? get shipCountryId;
  @override
  @JsonKey(name: "ship_email")
  String? get shipEmail;
  @override
  @JsonKey(name: "ship_mobile")
  String? get shipMobile;
  @override
  @JsonKey(name: "ship_phone")
  String? get shipPhone;
  @override
  @JsonKey(name: "ship_street_no")
  String? get shipStreetNo;
  @override
  @JsonKey(name: "ship_zone")
  String? get shipZone;
  @override
  @JsonKey(name: "ship_flat_no")
  String? get shipFlatNo;
  @override
  @JsonKey(name: "ship_building_no")
  String? get shipBuildingNo;
  @override
  @JsonKey(name: "ship_door_no")
  String? get shipDoorNo;
  @override
  @JsonKey(name: "cust_ship_address_id")
  int? get custShipAddressId;
  @override
  @JsonKey(name: "order_note")
  String? get orderNote;
  @override
  @JsonKey(name: "created_date")
  String? get createdDate;
  @override
  @JsonKey(name: "updated_date")
  DateTime? get updatedDate;
  @override
  @JsonKey(name: "currency_code")
  String? get currencyCode;
  @override
  @JsonKey(name: "del_method_id")
  int? get delMethodId;
  @override
  @JsonKey(name: "del_method_name")
  String? get delMethodName;
  @override
  @JsonKey(name: "pickup_location_id")
  int? get pickupLocationId;
  @override
  @JsonKey(name: "pickup_location_name")
  String? get pickupLocationName;
  @override
  @JsonKey(name: "pickup_location_address")
  String? get pickupLocationAddress;
  @override
  @JsonKey(name: "area_id")
  int? get areaId;
  @override
  @JsonKey(name: "zip")
  String? get zip;
  @override
  @JsonKey(name: "country_id")
  int? get countryId;
  @override
  @JsonKey(name: "state_id")
  int? get stateId;
  @override
  @JsonKey(name: "phone_no")
  int? get phoneNo;
  @override
  @JsonKey(name: "email_id")
  String? get emailId;
  @override
  @JsonKey(name: "pickup_country_name")
  String? get pickupCountryName;
  @override
  @JsonKey(name: "pickup_state_name")
  String? get pickupStateName;
  @override
  @JsonKey(name: "pickup_area_name")
  String? get pickupAreaName;
  @override
  @JsonKey(name: "order_reject_reason")
  String? get orderRejectReason;
  @override
  @JsonKey(name: "presentment_currency_id")
  int? get presentmentCurrencyId;
  @override
  @JsonKey(name: "exchange_multiplier")
  int? get exchangeMultiplier;
  @override
  @JsonKey(name: "presentment_currency_precision")
  int? get presentmentCurrencyPrecision;
  @override
  @JsonKey(name: "presentment_currency_code")
  String? get presentmentCurrencyCode;
  @override
  @JsonKey(name: "reference_type_id")
  int? get referenceTypeId;
  @override
  @JsonKey(name: "order_statuses")
  List<OrderStatus>? get orderStatuses;
  @override
  @JsonKey(name: "stores")
  List<Store>? get stores;
  @override
  @JsonKey(name: "product_order_item")
  List<ProductOrderItem>? get productOrderItem;
  @override
  @JsonKey(name: "wallet_enabled")
  int? get walletEnabled;
  @override
  @JsonKey(name: "reward_points_enabled")
  int? get rewardPointsEnabled;
  @override
  @JsonKey(name: "weighing_scale_enabled")
  int? get weighingScaleEnabled;
  @override
  @JsonKey(name: "parcel_charge_enabled")
  int? get parcelChargeEnabled;

  /// Create a copy of OrderDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderDetailResponseImplCopyWith<_$OrderDetailResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderStatus _$OrderStatusFromJson(Map<String, dynamic> json) {
  return _OrderStatus.fromJson(json);
}

/// @nodoc
mixin _$OrderStatus {
  @JsonKey(name: "order_status_id")
  int? get orderStatusId => throw _privateConstructorUsedError;
  @JsonKey(name: "order_status_name")
  String? get orderStatusName => throw _privateConstructorUsedError;
  @JsonKey(name: "order_status_arabic_name")
  String? get orderStatusArabicName => throw _privateConstructorUsedError;

  /// Serializes this OrderStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderStatusCopyWith<OrderStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStatusCopyWith<$Res> {
  factory $OrderStatusCopyWith(
    OrderStatus value,
    $Res Function(OrderStatus) then,
  ) = _$OrderStatusCopyWithImpl<$Res, OrderStatus>;
  @useResult
  $Res call({
    @JsonKey(name: "order_status_id") int? orderStatusId,
    @JsonKey(name: "order_status_name") String? orderStatusName,
    @JsonKey(name: "order_status_arabic_name") String? orderStatusArabicName,
  });
}

/// @nodoc
class _$OrderStatusCopyWithImpl<$Res, $Val extends OrderStatus>
    implements $OrderStatusCopyWith<$Res> {
  _$OrderStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderStatusId = freezed,
    Object? orderStatusName = freezed,
    Object? orderStatusArabicName = freezed,
  }) {
    return _then(
      _value.copyWith(
            orderStatusId: freezed == orderStatusId
                ? _value.orderStatusId
                : orderStatusId // ignore: cast_nullable_to_non_nullable
                      as int?,
            orderStatusName: freezed == orderStatusName
                ? _value.orderStatusName
                : orderStatusName // ignore: cast_nullable_to_non_nullable
                      as String?,
            orderStatusArabicName: freezed == orderStatusArabicName
                ? _value.orderStatusArabicName
                : orderStatusArabicName // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderStatusImplCopyWith<$Res>
    implements $OrderStatusCopyWith<$Res> {
  factory _$$OrderStatusImplCopyWith(
    _$OrderStatusImpl value,
    $Res Function(_$OrderStatusImpl) then,
  ) = __$$OrderStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "order_status_id") int? orderStatusId,
    @JsonKey(name: "order_status_name") String? orderStatusName,
    @JsonKey(name: "order_status_arabic_name") String? orderStatusArabicName,
  });
}

/// @nodoc
class __$$OrderStatusImplCopyWithImpl<$Res>
    extends _$OrderStatusCopyWithImpl<$Res, _$OrderStatusImpl>
    implements _$$OrderStatusImplCopyWith<$Res> {
  __$$OrderStatusImplCopyWithImpl(
    _$OrderStatusImpl _value,
    $Res Function(_$OrderStatusImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderStatusId = freezed,
    Object? orderStatusName = freezed,
    Object? orderStatusArabicName = freezed,
  }) {
    return _then(
      _$OrderStatusImpl(
        orderStatusId: freezed == orderStatusId
            ? _value.orderStatusId
            : orderStatusId // ignore: cast_nullable_to_non_nullable
                  as int?,
        orderStatusName: freezed == orderStatusName
            ? _value.orderStatusName
            : orderStatusName // ignore: cast_nullable_to_non_nullable
                  as String?,
        orderStatusArabicName: freezed == orderStatusArabicName
            ? _value.orderStatusArabicName
            : orderStatusArabicName // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderStatusImpl implements _OrderStatus {
  const _$OrderStatusImpl({
    @JsonKey(name: "order_status_id") this.orderStatusId,
    @JsonKey(name: "order_status_name") this.orderStatusName,
    @JsonKey(name: "order_status_arabic_name") this.orderStatusArabicName,
  });

  factory _$OrderStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderStatusImplFromJson(json);

  @override
  @JsonKey(name: "order_status_id")
  final int? orderStatusId;
  @override
  @JsonKey(name: "order_status_name")
  final String? orderStatusName;
  @override
  @JsonKey(name: "order_status_arabic_name")
  final String? orderStatusArabicName;

  @override
  String toString() {
    return 'OrderStatus(orderStatusId: $orderStatusId, orderStatusName: $orderStatusName, orderStatusArabicName: $orderStatusArabicName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStatusImpl &&
            (identical(other.orderStatusId, orderStatusId) ||
                other.orderStatusId == orderStatusId) &&
            (identical(other.orderStatusName, orderStatusName) ||
                other.orderStatusName == orderStatusName) &&
            (identical(other.orderStatusArabicName, orderStatusArabicName) ||
                other.orderStatusArabicName == orderStatusArabicName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    orderStatusId,
    orderStatusName,
    orderStatusArabicName,
  );

  /// Create a copy of OrderStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderStatusImplCopyWith<_$OrderStatusImpl> get copyWith =>
      __$$OrderStatusImplCopyWithImpl<_$OrderStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderStatusImplToJson(this);
  }
}

abstract class _OrderStatus implements OrderStatus {
  const factory _OrderStatus({
    @JsonKey(name: "order_status_id") final int? orderStatusId,
    @JsonKey(name: "order_status_name") final String? orderStatusName,
    @JsonKey(name: "order_status_arabic_name")
    final String? orderStatusArabicName,
  }) = _$OrderStatusImpl;

  factory _OrderStatus.fromJson(Map<String, dynamic> json) =
      _$OrderStatusImpl.fromJson;

  @override
  @JsonKey(name: "order_status_id")
  int? get orderStatusId;
  @override
  @JsonKey(name: "order_status_name")
  String? get orderStatusName;
  @override
  @JsonKey(name: "order_status_arabic_name")
  String? get orderStatusArabicName;

  /// Create a copy of OrderStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderStatusImplCopyWith<_$OrderStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductOrderItem _$ProductOrderItemFromJson(Map<String, dynamic> json) {
  return _ProductOrderItem.fromJson(json);
}

/// @nodoc
mixin _$ProductOrderItem {
  @JsonKey(name: "product_id")
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "product_name")
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: "order_item_id")
  int? get orderItemId => throw _privateConstructorUsedError;
  @JsonKey(name: "product_code")
  String? get productCode => throw _privateConstructorUsedError;
  @JsonKey(name: "product_slug")
  String? get productSlug => throw _privateConstructorUsedError;
  @JsonKey(name: "product_barcode")
  String? get productBarcode => throw _privateConstructorUsedError;
  @JsonKey(name: "product_desc")
  String? get productDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "product_arabic_name")
  String? get productArabicName => throw _privateConstructorUsedError;
  @JsonKey(name: "store_id")
  int? get storeId => throw _privateConstructorUsedError;
  @JsonKey(name: "sub_notification_status_id")
  int? get subNotificationStatusId => throw _privateConstructorUsedError;
  @JsonKey(name: "sub_notification_status_name")
  String? get subNotificationStatusName => throw _privateConstructorUsedError;
  @JsonKey(name: "store_product_id")
  int? get storeProductId => throw _privateConstructorUsedError;
  @JsonKey(name: "store_listing_id")
  int? get storeListingId => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_id")
  int? get unitId => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_name")
  String? get unitName => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_arabic_name")
  String? get unitArabicName => throw _privateConstructorUsedError;
  @JsonKey(name: "tax_id")
  int? get taxId => throw _privateConstructorUsedError;
  @JsonKey(name: "itemsubstitute")
  List<dynamic>? get itemsubstitute => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_price")
  int? get offerPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "product_price")
  double? get productPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "order_item_purchase_price")
  int? get orderItemPurchasePrice => throw _privateConstructorUsedError;
  @JsonKey(name: "order_item_price")
  double? get orderItemPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "order_item_offer_price")
  int? get orderItemOfferPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "order_item_disc")
  int? get orderItemDisc => throw _privateConstructorUsedError;
  @JsonKey(name: "order_item_net_amt")
  int? get orderItemNetAmt => throw _privateConstructorUsedError;
  @JsonKey(name: "order_item_note")
  String? get orderItemNote => throw _privateConstructorUsedError;
  @JsonKey(name: "order_item_total")
  int? get orderItemTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "del_method_id")
  int? get delMethodId => throw _privateConstructorUsedError;
  @JsonKey(name: "del_method_charge")
  String? get delMethodCharge => throw _privateConstructorUsedError;
  @JsonKey(name: "printed")
  int? get printed => throw _privateConstructorUsedError;
  @JsonKey(name: "del_method_name")
  String? get delMethodName => throw _privateConstructorUsedError;
  @JsonKey(name: "main_category_id")
  int? get mainCategoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "category_name")
  String? get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: "is_free")
  int? get isFree => throw _privateConstructorUsedError;
  @JsonKey(name: "service_price")
  int? get servicePrice => throw _privateConstructorUsedError;
  @JsonKey(name: "order_status_id")
  int? get orderStatusId => throw _privateConstructorUsedError;
  @JsonKey(name: "order_status_name")
  String? get orderStatusName => throw _privateConstructorUsedError;
  @JsonKey(name: "order_item_status_history")
  List<dynamic>? get orderItemStatusHistory =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "order_item_qty")
  int? get orderItemQty => throw _privateConstructorUsedError;
  @JsonKey(name: "coupon_id")
  int? get couponId => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_charge")
  int? get shippingCharge => throw _privateConstructorUsedError;
  @JsonKey(name: "is_taxable")
  int? get isTaxable => throw _privateConstructorUsedError;
  @JsonKey(name: "is_tax_inclusive")
  int? get isTaxInclusive => throw _privateConstructorUsedError;
  @JsonKey(name: "tax_amt")
  dynamic get taxAmt => throw _privateConstructorUsedError;
  @JsonKey(name: "order_tax_percentage")
  dynamic get orderTaxPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: "min_order_qty")
  int? get minOrderQty => throw _privateConstructorUsedError;
  @JsonKey(name: "product_qty")
  int? get productQty => throw _privateConstructorUsedError;
  @JsonKey(name: "product_tax_amt")
  int? get productTaxAmt => throw _privateConstructorUsedError;
  @JsonKey(name: "product_tax_percentage")
  int? get productTaxPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: "product_featured")
  int? get productFeatured => throw _privateConstructorUsedError;
  @JsonKey(name: "product_short_description")
  String? get productShortDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_ship_charge")
  int? get prodShipCharge => throw _privateConstructorUsedError;
  @JsonKey(name: "items_per_pack")
  int? get itemsPerPack => throw _privateConstructorUsedError;
  @JsonKey(name: "volume")
  int? get volume => throw _privateConstructorUsedError;
  @JsonKey(name: "product_sku")
  String? get productSku => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_purchase_limit")
  int? get prodPurchaseLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "kot_id")
  int? get kotId => throw _privateConstructorUsedError;
  @JsonKey(name: "kot_name")
  String? get kotName => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_menu_order")
  int? get prodMenuOrder => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_height")
  int? get prodHeight => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_width")
  int? get prodWidth => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_length")
  int? get prodLength => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_weight")
  int? get prodWeight => throw _privateConstructorUsedError;
  @JsonKey(name: "reorder_qty")
  int? get reorderQty => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_seo_title")
  String? get prodSeoTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_seo_keyword")
  String? get prodSeoKeyword => throw _privateConstructorUsedError;
  @JsonKey(name: "product_seo_url")
  String? get productSeoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_seo_desc")
  String? get prodSeoDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "maintain_stock")
  int? get maintainStock => throw _privateConstructorUsedError;
  @JsonKey(name: "ignore_discount")
  int? get ignoreDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: "is_variant")
  int? get isVariant => throw _privateConstructorUsedError;
  @JsonKey(name: "is_cancelled")
  int? get isCancelled => throw _privateConstructorUsedError;
  @JsonKey(name: "cancelled_reason_date")
  String? get cancelledReasonDate => throw _privateConstructorUsedError;
  @JsonKey(name: "cancelled_reason_id")
  int? get cancelledReasonId => throw _privateConstructorUsedError;
  @JsonKey(name: "cancelled_reason")
  String? get cancelledReason => throw _privateConstructorUsedError;
  @JsonKey(name: "images")
  List<dynamic>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: "variants")
  List<Variant>? get variants => throw _privateConstructorUsedError;
  @JsonKey(name: "service_id")
  List<dynamic>? get serviceId => throw _privateConstructorUsedError;
  @JsonKey(name: "services")
  List<dynamic>? get services => throw _privateConstructorUsedError;
  @JsonKey(name: "service_groups")
  List<dynamic>? get serviceGroups => throw _privateConstructorUsedError;
  @JsonKey(name: "product_categories")
  List<ProductCategory>? get productCategories =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "is_shop_only")
  int? get isShopOnly => throw _privateConstructorUsedError;
  @JsonKey(name: "add_to_cart")
  bool? get addToCart => throw _privateConstructorUsedError;
  @JsonKey(name: "wishlisted")
  bool? get wishlisted => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "default_quantity")
  int? get defaultQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_var_id")
  int? get prodVarId => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_var_code", fromJson: parseInt)
  int? get prodVarCode => throw _privateConstructorUsedError;
  @JsonKey(name: "is_out_of_stock")
  int? get isOutOfStock => throw _privateConstructorUsedError;
  @JsonKey(name: "change_price")
  int? get changePrice => throw _privateConstructorUsedError;
  @JsonKey(name: "returnable_info")
  ReturnableInfo? get returnableInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "is_pre_order")
  int? get isPreOrder => throw _privateConstructorUsedError;
  @JsonKey(name: "pre_order_fee")
  int? get preOrderFee => throw _privateConstructorUsedError;
  @JsonKey(name: "release_time")
  int? get releaseTime => throw _privateConstructorUsedError;
  @JsonKey(name: "pre_order_charging_option_id")
  int? get preOrderChargingOptionId => throw _privateConstructorUsedError;
  @JsonKey(name: "takeaway_addon_price")
  int? get takeawayAddonPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "parcel_charge")
  int? get parcelCharge => throw _privateConstructorUsedError;

  /// Serializes this ProductOrderItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductOrderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductOrderItemCopyWith<ProductOrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductOrderItemCopyWith<$Res> {
  factory $ProductOrderItemCopyWith(
    ProductOrderItem value,
    $Res Function(ProductOrderItem) then,
  ) = _$ProductOrderItemCopyWithImpl<$Res, ProductOrderItem>;
  @useResult
  $Res call({
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
    @JsonKey(name: "parcel_charge") int? parcelCharge,
  });

  $ReturnableInfoCopyWith<$Res>? get returnableInfo;
}

/// @nodoc
class _$ProductOrderItemCopyWithImpl<$Res, $Val extends ProductOrderItem>
    implements $ProductOrderItemCopyWith<$Res> {
  _$ProductOrderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductOrderItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? productName = freezed,
    Object? orderItemId = freezed,
    Object? productCode = freezed,
    Object? productSlug = freezed,
    Object? productBarcode = freezed,
    Object? productDesc = freezed,
    Object? productArabicName = freezed,
    Object? storeId = freezed,
    Object? subNotificationStatusId = freezed,
    Object? subNotificationStatusName = freezed,
    Object? storeProductId = freezed,
    Object? storeListingId = freezed,
    Object? unitId = freezed,
    Object? unitName = freezed,
    Object? unitArabicName = freezed,
    Object? taxId = freezed,
    Object? itemsubstitute = freezed,
    Object? offerPrice = freezed,
    Object? productPrice = freezed,
    Object? orderItemPurchasePrice = freezed,
    Object? orderItemPrice = freezed,
    Object? orderItemOfferPrice = freezed,
    Object? orderItemDisc = freezed,
    Object? orderItemNetAmt = freezed,
    Object? orderItemNote = freezed,
    Object? orderItemTotal = freezed,
    Object? delMethodId = freezed,
    Object? delMethodCharge = freezed,
    Object? printed = freezed,
    Object? delMethodName = freezed,
    Object? mainCategoryId = freezed,
    Object? categoryName = freezed,
    Object? isFree = freezed,
    Object? servicePrice = freezed,
    Object? orderStatusId = freezed,
    Object? orderStatusName = freezed,
    Object? orderItemStatusHistory = freezed,
    Object? orderItemQty = freezed,
    Object? couponId = freezed,
    Object? shippingCharge = freezed,
    Object? isTaxable = freezed,
    Object? isTaxInclusive = freezed,
    Object? taxAmt = freezed,
    Object? orderTaxPercentage = freezed,
    Object? minOrderQty = freezed,
    Object? productQty = freezed,
    Object? productTaxAmt = freezed,
    Object? productTaxPercentage = freezed,
    Object? productFeatured = freezed,
    Object? productShortDescription = freezed,
    Object? prodShipCharge = freezed,
    Object? itemsPerPack = freezed,
    Object? volume = freezed,
    Object? productSku = freezed,
    Object? prodPurchaseLimit = freezed,
    Object? kotId = freezed,
    Object? kotName = freezed,
    Object? prodMenuOrder = freezed,
    Object? prodHeight = freezed,
    Object? prodWidth = freezed,
    Object? prodLength = freezed,
    Object? prodWeight = freezed,
    Object? reorderQty = freezed,
    Object? prodSeoTitle = freezed,
    Object? prodSeoKeyword = freezed,
    Object? productSeoUrl = freezed,
    Object? prodSeoDesc = freezed,
    Object? maintainStock = freezed,
    Object? ignoreDiscount = freezed,
    Object? isVariant = freezed,
    Object? isCancelled = freezed,
    Object? cancelledReasonDate = freezed,
    Object? cancelledReasonId = freezed,
    Object? cancelledReason = freezed,
    Object? images = freezed,
    Object? variants = freezed,
    Object? serviceId = freezed,
    Object? services = freezed,
    Object? serviceGroups = freezed,
    Object? productCategories = freezed,
    Object? isShopOnly = freezed,
    Object? addToCart = freezed,
    Object? wishlisted = freezed,
    Object? quantity = freezed,
    Object? defaultQuantity = freezed,
    Object? prodVarId = freezed,
    Object? prodVarCode = freezed,
    Object? isOutOfStock = freezed,
    Object? changePrice = freezed,
    Object? returnableInfo = freezed,
    Object? isPreOrder = freezed,
    Object? preOrderFee = freezed,
    Object? releaseTime = freezed,
    Object? preOrderChargingOptionId = freezed,
    Object? takeawayAddonPrice = freezed,
    Object? parcelCharge = freezed,
  }) {
    return _then(
      _value.copyWith(
            productId: freezed == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as int?,
            productName: freezed == productName
                ? _value.productName
                : productName // ignore: cast_nullable_to_non_nullable
                      as String?,
            orderItemId: freezed == orderItemId
                ? _value.orderItemId
                : orderItemId // ignore: cast_nullable_to_non_nullable
                      as int?,
            productCode: freezed == productCode
                ? _value.productCode
                : productCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            productSlug: freezed == productSlug
                ? _value.productSlug
                : productSlug // ignore: cast_nullable_to_non_nullable
                      as String?,
            productBarcode: freezed == productBarcode
                ? _value.productBarcode
                : productBarcode // ignore: cast_nullable_to_non_nullable
                      as String?,
            productDesc: freezed == productDesc
                ? _value.productDesc
                : productDesc // ignore: cast_nullable_to_non_nullable
                      as String?,
            productArabicName: freezed == productArabicName
                ? _value.productArabicName
                : productArabicName // ignore: cast_nullable_to_non_nullable
                      as String?,
            storeId: freezed == storeId
                ? _value.storeId
                : storeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            subNotificationStatusId: freezed == subNotificationStatusId
                ? _value.subNotificationStatusId
                : subNotificationStatusId // ignore: cast_nullable_to_non_nullable
                      as int?,
            subNotificationStatusName: freezed == subNotificationStatusName
                ? _value.subNotificationStatusName
                : subNotificationStatusName // ignore: cast_nullable_to_non_nullable
                      as String?,
            storeProductId: freezed == storeProductId
                ? _value.storeProductId
                : storeProductId // ignore: cast_nullable_to_non_nullable
                      as int?,
            storeListingId: freezed == storeListingId
                ? _value.storeListingId
                : storeListingId // ignore: cast_nullable_to_non_nullable
                      as int?,
            unitId: freezed == unitId
                ? _value.unitId
                : unitId // ignore: cast_nullable_to_non_nullable
                      as int?,
            unitName: freezed == unitName
                ? _value.unitName
                : unitName // ignore: cast_nullable_to_non_nullable
                      as String?,
            unitArabicName: freezed == unitArabicName
                ? _value.unitArabicName
                : unitArabicName // ignore: cast_nullable_to_non_nullable
                      as String?,
            taxId: freezed == taxId
                ? _value.taxId
                : taxId // ignore: cast_nullable_to_non_nullable
                      as int?,
            itemsubstitute: freezed == itemsubstitute
                ? _value.itemsubstitute
                : itemsubstitute // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            offerPrice: freezed == offerPrice
                ? _value.offerPrice
                : offerPrice // ignore: cast_nullable_to_non_nullable
                      as int?,
            productPrice: freezed == productPrice
                ? _value.productPrice
                : productPrice // ignore: cast_nullable_to_non_nullable
                      as double?,
            orderItemPurchasePrice: freezed == orderItemPurchasePrice
                ? _value.orderItemPurchasePrice
                : orderItemPurchasePrice // ignore: cast_nullable_to_non_nullable
                      as int?,
            orderItemPrice: freezed == orderItemPrice
                ? _value.orderItemPrice
                : orderItemPrice // ignore: cast_nullable_to_non_nullable
                      as double?,
            orderItemOfferPrice: freezed == orderItemOfferPrice
                ? _value.orderItemOfferPrice
                : orderItemOfferPrice // ignore: cast_nullable_to_non_nullable
                      as int?,
            orderItemDisc: freezed == orderItemDisc
                ? _value.orderItemDisc
                : orderItemDisc // ignore: cast_nullable_to_non_nullable
                      as int?,
            orderItemNetAmt: freezed == orderItemNetAmt
                ? _value.orderItemNetAmt
                : orderItemNetAmt // ignore: cast_nullable_to_non_nullable
                      as int?,
            orderItemNote: freezed == orderItemNote
                ? _value.orderItemNote
                : orderItemNote // ignore: cast_nullable_to_non_nullable
                      as String?,
            orderItemTotal: freezed == orderItemTotal
                ? _value.orderItemTotal
                : orderItemTotal // ignore: cast_nullable_to_non_nullable
                      as int?,
            delMethodId: freezed == delMethodId
                ? _value.delMethodId
                : delMethodId // ignore: cast_nullable_to_non_nullable
                      as int?,
            delMethodCharge: freezed == delMethodCharge
                ? _value.delMethodCharge
                : delMethodCharge // ignore: cast_nullable_to_non_nullable
                      as String?,
            printed: freezed == printed
                ? _value.printed
                : printed // ignore: cast_nullable_to_non_nullable
                      as int?,
            delMethodName: freezed == delMethodName
                ? _value.delMethodName
                : delMethodName // ignore: cast_nullable_to_non_nullable
                      as String?,
            mainCategoryId: freezed == mainCategoryId
                ? _value.mainCategoryId
                : mainCategoryId // ignore: cast_nullable_to_non_nullable
                      as int?,
            categoryName: freezed == categoryName
                ? _value.categoryName
                : categoryName // ignore: cast_nullable_to_non_nullable
                      as String?,
            isFree: freezed == isFree
                ? _value.isFree
                : isFree // ignore: cast_nullable_to_non_nullable
                      as int?,
            servicePrice: freezed == servicePrice
                ? _value.servicePrice
                : servicePrice // ignore: cast_nullable_to_non_nullable
                      as int?,
            orderStatusId: freezed == orderStatusId
                ? _value.orderStatusId
                : orderStatusId // ignore: cast_nullable_to_non_nullable
                      as int?,
            orderStatusName: freezed == orderStatusName
                ? _value.orderStatusName
                : orderStatusName // ignore: cast_nullable_to_non_nullable
                      as String?,
            orderItemStatusHistory: freezed == orderItemStatusHistory
                ? _value.orderItemStatusHistory
                : orderItemStatusHistory // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            orderItemQty: freezed == orderItemQty
                ? _value.orderItemQty
                : orderItemQty // ignore: cast_nullable_to_non_nullable
                      as int?,
            couponId: freezed == couponId
                ? _value.couponId
                : couponId // ignore: cast_nullable_to_non_nullable
                      as int?,
            shippingCharge: freezed == shippingCharge
                ? _value.shippingCharge
                : shippingCharge // ignore: cast_nullable_to_non_nullable
                      as int?,
            isTaxable: freezed == isTaxable
                ? _value.isTaxable
                : isTaxable // ignore: cast_nullable_to_non_nullable
                      as int?,
            isTaxInclusive: freezed == isTaxInclusive
                ? _value.isTaxInclusive
                : isTaxInclusive // ignore: cast_nullable_to_non_nullable
                      as int?,
            taxAmt: freezed == taxAmt
                ? _value.taxAmt
                : taxAmt // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            orderTaxPercentage: freezed == orderTaxPercentage
                ? _value.orderTaxPercentage
                : orderTaxPercentage // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            minOrderQty: freezed == minOrderQty
                ? _value.minOrderQty
                : minOrderQty // ignore: cast_nullable_to_non_nullable
                      as int?,
            productQty: freezed == productQty
                ? _value.productQty
                : productQty // ignore: cast_nullable_to_non_nullable
                      as int?,
            productTaxAmt: freezed == productTaxAmt
                ? _value.productTaxAmt
                : productTaxAmt // ignore: cast_nullable_to_non_nullable
                      as int?,
            productTaxPercentage: freezed == productTaxPercentage
                ? _value.productTaxPercentage
                : productTaxPercentage // ignore: cast_nullable_to_non_nullable
                      as int?,
            productFeatured: freezed == productFeatured
                ? _value.productFeatured
                : productFeatured // ignore: cast_nullable_to_non_nullable
                      as int?,
            productShortDescription: freezed == productShortDescription
                ? _value.productShortDescription
                : productShortDescription // ignore: cast_nullable_to_non_nullable
                      as String?,
            prodShipCharge: freezed == prodShipCharge
                ? _value.prodShipCharge
                : prodShipCharge // ignore: cast_nullable_to_non_nullable
                      as int?,
            itemsPerPack: freezed == itemsPerPack
                ? _value.itemsPerPack
                : itemsPerPack // ignore: cast_nullable_to_non_nullable
                      as int?,
            volume: freezed == volume
                ? _value.volume
                : volume // ignore: cast_nullable_to_non_nullable
                      as int?,
            productSku: freezed == productSku
                ? _value.productSku
                : productSku // ignore: cast_nullable_to_non_nullable
                      as String?,
            prodPurchaseLimit: freezed == prodPurchaseLimit
                ? _value.prodPurchaseLimit
                : prodPurchaseLimit // ignore: cast_nullable_to_non_nullable
                      as int?,
            kotId: freezed == kotId
                ? _value.kotId
                : kotId // ignore: cast_nullable_to_non_nullable
                      as int?,
            kotName: freezed == kotName
                ? _value.kotName
                : kotName // ignore: cast_nullable_to_non_nullable
                      as String?,
            prodMenuOrder: freezed == prodMenuOrder
                ? _value.prodMenuOrder
                : prodMenuOrder // ignore: cast_nullable_to_non_nullable
                      as int?,
            prodHeight: freezed == prodHeight
                ? _value.prodHeight
                : prodHeight // ignore: cast_nullable_to_non_nullable
                      as int?,
            prodWidth: freezed == prodWidth
                ? _value.prodWidth
                : prodWidth // ignore: cast_nullable_to_non_nullable
                      as int?,
            prodLength: freezed == prodLength
                ? _value.prodLength
                : prodLength // ignore: cast_nullable_to_non_nullable
                      as int?,
            prodWeight: freezed == prodWeight
                ? _value.prodWeight
                : prodWeight // ignore: cast_nullable_to_non_nullable
                      as int?,
            reorderQty: freezed == reorderQty
                ? _value.reorderQty
                : reorderQty // ignore: cast_nullable_to_non_nullable
                      as int?,
            prodSeoTitle: freezed == prodSeoTitle
                ? _value.prodSeoTitle
                : prodSeoTitle // ignore: cast_nullable_to_non_nullable
                      as String?,
            prodSeoKeyword: freezed == prodSeoKeyword
                ? _value.prodSeoKeyword
                : prodSeoKeyword // ignore: cast_nullable_to_non_nullable
                      as String?,
            productSeoUrl: freezed == productSeoUrl
                ? _value.productSeoUrl
                : productSeoUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            prodSeoDesc: freezed == prodSeoDesc
                ? _value.prodSeoDesc
                : prodSeoDesc // ignore: cast_nullable_to_non_nullable
                      as String?,
            maintainStock: freezed == maintainStock
                ? _value.maintainStock
                : maintainStock // ignore: cast_nullable_to_non_nullable
                      as int?,
            ignoreDiscount: freezed == ignoreDiscount
                ? _value.ignoreDiscount
                : ignoreDiscount // ignore: cast_nullable_to_non_nullable
                      as int?,
            isVariant: freezed == isVariant
                ? _value.isVariant
                : isVariant // ignore: cast_nullable_to_non_nullable
                      as int?,
            isCancelled: freezed == isCancelled
                ? _value.isCancelled
                : isCancelled // ignore: cast_nullable_to_non_nullable
                      as int?,
            cancelledReasonDate: freezed == cancelledReasonDate
                ? _value.cancelledReasonDate
                : cancelledReasonDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            cancelledReasonId: freezed == cancelledReasonId
                ? _value.cancelledReasonId
                : cancelledReasonId // ignore: cast_nullable_to_non_nullable
                      as int?,
            cancelledReason: freezed == cancelledReason
                ? _value.cancelledReason
                : cancelledReason // ignore: cast_nullable_to_non_nullable
                      as String?,
            images: freezed == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            variants: freezed == variants
                ? _value.variants
                : variants // ignore: cast_nullable_to_non_nullable
                      as List<Variant>?,
            serviceId: freezed == serviceId
                ? _value.serviceId
                : serviceId // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            services: freezed == services
                ? _value.services
                : services // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            serviceGroups: freezed == serviceGroups
                ? _value.serviceGroups
                : serviceGroups // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            productCategories: freezed == productCategories
                ? _value.productCategories
                : productCategories // ignore: cast_nullable_to_non_nullable
                      as List<ProductCategory>?,
            isShopOnly: freezed == isShopOnly
                ? _value.isShopOnly
                : isShopOnly // ignore: cast_nullable_to_non_nullable
                      as int?,
            addToCart: freezed == addToCart
                ? _value.addToCart
                : addToCart // ignore: cast_nullable_to_non_nullable
                      as bool?,
            wishlisted: freezed == wishlisted
                ? _value.wishlisted
                : wishlisted // ignore: cast_nullable_to_non_nullable
                      as bool?,
            quantity: freezed == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                      as int?,
            defaultQuantity: freezed == defaultQuantity
                ? _value.defaultQuantity
                : defaultQuantity // ignore: cast_nullable_to_non_nullable
                      as int?,
            prodVarId: freezed == prodVarId
                ? _value.prodVarId
                : prodVarId // ignore: cast_nullable_to_non_nullable
                      as int?,
            prodVarCode: freezed == prodVarCode
                ? _value.prodVarCode
                : prodVarCode // ignore: cast_nullable_to_non_nullable
                      as int?,
            isOutOfStock: freezed == isOutOfStock
                ? _value.isOutOfStock
                : isOutOfStock // ignore: cast_nullable_to_non_nullable
                      as int?,
            changePrice: freezed == changePrice
                ? _value.changePrice
                : changePrice // ignore: cast_nullable_to_non_nullable
                      as int?,
            returnableInfo: freezed == returnableInfo
                ? _value.returnableInfo
                : returnableInfo // ignore: cast_nullable_to_non_nullable
                      as ReturnableInfo?,
            isPreOrder: freezed == isPreOrder
                ? _value.isPreOrder
                : isPreOrder // ignore: cast_nullable_to_non_nullable
                      as int?,
            preOrderFee: freezed == preOrderFee
                ? _value.preOrderFee
                : preOrderFee // ignore: cast_nullable_to_non_nullable
                      as int?,
            releaseTime: freezed == releaseTime
                ? _value.releaseTime
                : releaseTime // ignore: cast_nullable_to_non_nullable
                      as int?,
            preOrderChargingOptionId: freezed == preOrderChargingOptionId
                ? _value.preOrderChargingOptionId
                : preOrderChargingOptionId // ignore: cast_nullable_to_non_nullable
                      as int?,
            takeawayAddonPrice: freezed == takeawayAddonPrice
                ? _value.takeawayAddonPrice
                : takeawayAddonPrice // ignore: cast_nullable_to_non_nullable
                      as int?,
            parcelCharge: freezed == parcelCharge
                ? _value.parcelCharge
                : parcelCharge // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }

  /// Create a copy of ProductOrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReturnableInfoCopyWith<$Res>? get returnableInfo {
    if (_value.returnableInfo == null) {
      return null;
    }

    return $ReturnableInfoCopyWith<$Res>(_value.returnableInfo!, (value) {
      return _then(_value.copyWith(returnableInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductOrderItemImplCopyWith<$Res>
    implements $ProductOrderItemCopyWith<$Res> {
  factory _$$ProductOrderItemImplCopyWith(
    _$ProductOrderItemImpl value,
    $Res Function(_$ProductOrderItemImpl) then,
  ) = __$$ProductOrderItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
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
    @JsonKey(name: "parcel_charge") int? parcelCharge,
  });

  @override
  $ReturnableInfoCopyWith<$Res>? get returnableInfo;
}

/// @nodoc
class __$$ProductOrderItemImplCopyWithImpl<$Res>
    extends _$ProductOrderItemCopyWithImpl<$Res, _$ProductOrderItemImpl>
    implements _$$ProductOrderItemImplCopyWith<$Res> {
  __$$ProductOrderItemImplCopyWithImpl(
    _$ProductOrderItemImpl _value,
    $Res Function(_$ProductOrderItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductOrderItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? productName = freezed,
    Object? orderItemId = freezed,
    Object? productCode = freezed,
    Object? productSlug = freezed,
    Object? productBarcode = freezed,
    Object? productDesc = freezed,
    Object? productArabicName = freezed,
    Object? storeId = freezed,
    Object? subNotificationStatusId = freezed,
    Object? subNotificationStatusName = freezed,
    Object? storeProductId = freezed,
    Object? storeListingId = freezed,
    Object? unitId = freezed,
    Object? unitName = freezed,
    Object? unitArabicName = freezed,
    Object? taxId = freezed,
    Object? itemsubstitute = freezed,
    Object? offerPrice = freezed,
    Object? productPrice = freezed,
    Object? orderItemPurchasePrice = freezed,
    Object? orderItemPrice = freezed,
    Object? orderItemOfferPrice = freezed,
    Object? orderItemDisc = freezed,
    Object? orderItemNetAmt = freezed,
    Object? orderItemNote = freezed,
    Object? orderItemTotal = freezed,
    Object? delMethodId = freezed,
    Object? delMethodCharge = freezed,
    Object? printed = freezed,
    Object? delMethodName = freezed,
    Object? mainCategoryId = freezed,
    Object? categoryName = freezed,
    Object? isFree = freezed,
    Object? servicePrice = freezed,
    Object? orderStatusId = freezed,
    Object? orderStatusName = freezed,
    Object? orderItemStatusHistory = freezed,
    Object? orderItemQty = freezed,
    Object? couponId = freezed,
    Object? shippingCharge = freezed,
    Object? isTaxable = freezed,
    Object? isTaxInclusive = freezed,
    Object? taxAmt = freezed,
    Object? orderTaxPercentage = freezed,
    Object? minOrderQty = freezed,
    Object? productQty = freezed,
    Object? productTaxAmt = freezed,
    Object? productTaxPercentage = freezed,
    Object? productFeatured = freezed,
    Object? productShortDescription = freezed,
    Object? prodShipCharge = freezed,
    Object? itemsPerPack = freezed,
    Object? volume = freezed,
    Object? productSku = freezed,
    Object? prodPurchaseLimit = freezed,
    Object? kotId = freezed,
    Object? kotName = freezed,
    Object? prodMenuOrder = freezed,
    Object? prodHeight = freezed,
    Object? prodWidth = freezed,
    Object? prodLength = freezed,
    Object? prodWeight = freezed,
    Object? reorderQty = freezed,
    Object? prodSeoTitle = freezed,
    Object? prodSeoKeyword = freezed,
    Object? productSeoUrl = freezed,
    Object? prodSeoDesc = freezed,
    Object? maintainStock = freezed,
    Object? ignoreDiscount = freezed,
    Object? isVariant = freezed,
    Object? isCancelled = freezed,
    Object? cancelledReasonDate = freezed,
    Object? cancelledReasonId = freezed,
    Object? cancelledReason = freezed,
    Object? images = freezed,
    Object? variants = freezed,
    Object? serviceId = freezed,
    Object? services = freezed,
    Object? serviceGroups = freezed,
    Object? productCategories = freezed,
    Object? isShopOnly = freezed,
    Object? addToCart = freezed,
    Object? wishlisted = freezed,
    Object? quantity = freezed,
    Object? defaultQuantity = freezed,
    Object? prodVarId = freezed,
    Object? prodVarCode = freezed,
    Object? isOutOfStock = freezed,
    Object? changePrice = freezed,
    Object? returnableInfo = freezed,
    Object? isPreOrder = freezed,
    Object? preOrderFee = freezed,
    Object? releaseTime = freezed,
    Object? preOrderChargingOptionId = freezed,
    Object? takeawayAddonPrice = freezed,
    Object? parcelCharge = freezed,
  }) {
    return _then(
      _$ProductOrderItemImpl(
        productId: freezed == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as int?,
        productName: freezed == productName
            ? _value.productName
            : productName // ignore: cast_nullable_to_non_nullable
                  as String?,
        orderItemId: freezed == orderItemId
            ? _value.orderItemId
            : orderItemId // ignore: cast_nullable_to_non_nullable
                  as int?,
        productCode: freezed == productCode
            ? _value.productCode
            : productCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        productSlug: freezed == productSlug
            ? _value.productSlug
            : productSlug // ignore: cast_nullable_to_non_nullable
                  as String?,
        productBarcode: freezed == productBarcode
            ? _value.productBarcode
            : productBarcode // ignore: cast_nullable_to_non_nullable
                  as String?,
        productDesc: freezed == productDesc
            ? _value.productDesc
            : productDesc // ignore: cast_nullable_to_non_nullable
                  as String?,
        productArabicName: freezed == productArabicName
            ? _value.productArabicName
            : productArabicName // ignore: cast_nullable_to_non_nullable
                  as String?,
        storeId: freezed == storeId
            ? _value.storeId
            : storeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        subNotificationStatusId: freezed == subNotificationStatusId
            ? _value.subNotificationStatusId
            : subNotificationStatusId // ignore: cast_nullable_to_non_nullable
                  as int?,
        subNotificationStatusName: freezed == subNotificationStatusName
            ? _value.subNotificationStatusName
            : subNotificationStatusName // ignore: cast_nullable_to_non_nullable
                  as String?,
        storeProductId: freezed == storeProductId
            ? _value.storeProductId
            : storeProductId // ignore: cast_nullable_to_non_nullable
                  as int?,
        storeListingId: freezed == storeListingId
            ? _value.storeListingId
            : storeListingId // ignore: cast_nullable_to_non_nullable
                  as int?,
        unitId: freezed == unitId
            ? _value.unitId
            : unitId // ignore: cast_nullable_to_non_nullable
                  as int?,
        unitName: freezed == unitName
            ? _value.unitName
            : unitName // ignore: cast_nullable_to_non_nullable
                  as String?,
        unitArabicName: freezed == unitArabicName
            ? _value.unitArabicName
            : unitArabicName // ignore: cast_nullable_to_non_nullable
                  as String?,
        taxId: freezed == taxId
            ? _value.taxId
            : taxId // ignore: cast_nullable_to_non_nullable
                  as int?,
        itemsubstitute: freezed == itemsubstitute
            ? _value._itemsubstitute
            : itemsubstitute // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        offerPrice: freezed == offerPrice
            ? _value.offerPrice
            : offerPrice // ignore: cast_nullable_to_non_nullable
                  as int?,
        productPrice: freezed == productPrice
            ? _value.productPrice
            : productPrice // ignore: cast_nullable_to_non_nullable
                  as double?,
        orderItemPurchasePrice: freezed == orderItemPurchasePrice
            ? _value.orderItemPurchasePrice
            : orderItemPurchasePrice // ignore: cast_nullable_to_non_nullable
                  as int?,
        orderItemPrice: freezed == orderItemPrice
            ? _value.orderItemPrice
            : orderItemPrice // ignore: cast_nullable_to_non_nullable
                  as double?,
        orderItemOfferPrice: freezed == orderItemOfferPrice
            ? _value.orderItemOfferPrice
            : orderItemOfferPrice // ignore: cast_nullable_to_non_nullable
                  as int?,
        orderItemDisc: freezed == orderItemDisc
            ? _value.orderItemDisc
            : orderItemDisc // ignore: cast_nullable_to_non_nullable
                  as int?,
        orderItemNetAmt: freezed == orderItemNetAmt
            ? _value.orderItemNetAmt
            : orderItemNetAmt // ignore: cast_nullable_to_non_nullable
                  as int?,
        orderItemNote: freezed == orderItemNote
            ? _value.orderItemNote
            : orderItemNote // ignore: cast_nullable_to_non_nullable
                  as String?,
        orderItemTotal: freezed == orderItemTotal
            ? _value.orderItemTotal
            : orderItemTotal // ignore: cast_nullable_to_non_nullable
                  as int?,
        delMethodId: freezed == delMethodId
            ? _value.delMethodId
            : delMethodId // ignore: cast_nullable_to_non_nullable
                  as int?,
        delMethodCharge: freezed == delMethodCharge
            ? _value.delMethodCharge
            : delMethodCharge // ignore: cast_nullable_to_non_nullable
                  as String?,
        printed: freezed == printed
            ? _value.printed
            : printed // ignore: cast_nullable_to_non_nullable
                  as int?,
        delMethodName: freezed == delMethodName
            ? _value.delMethodName
            : delMethodName // ignore: cast_nullable_to_non_nullable
                  as String?,
        mainCategoryId: freezed == mainCategoryId
            ? _value.mainCategoryId
            : mainCategoryId // ignore: cast_nullable_to_non_nullable
                  as int?,
        categoryName: freezed == categoryName
            ? _value.categoryName
            : categoryName // ignore: cast_nullable_to_non_nullable
                  as String?,
        isFree: freezed == isFree
            ? _value.isFree
            : isFree // ignore: cast_nullable_to_non_nullable
                  as int?,
        servicePrice: freezed == servicePrice
            ? _value.servicePrice
            : servicePrice // ignore: cast_nullable_to_non_nullable
                  as int?,
        orderStatusId: freezed == orderStatusId
            ? _value.orderStatusId
            : orderStatusId // ignore: cast_nullable_to_non_nullable
                  as int?,
        orderStatusName: freezed == orderStatusName
            ? _value.orderStatusName
            : orderStatusName // ignore: cast_nullable_to_non_nullable
                  as String?,
        orderItemStatusHistory: freezed == orderItemStatusHistory
            ? _value._orderItemStatusHistory
            : orderItemStatusHistory // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        orderItemQty: freezed == orderItemQty
            ? _value.orderItemQty
            : orderItemQty // ignore: cast_nullable_to_non_nullable
                  as int?,
        couponId: freezed == couponId
            ? _value.couponId
            : couponId // ignore: cast_nullable_to_non_nullable
                  as int?,
        shippingCharge: freezed == shippingCharge
            ? _value.shippingCharge
            : shippingCharge // ignore: cast_nullable_to_non_nullable
                  as int?,
        isTaxable: freezed == isTaxable
            ? _value.isTaxable
            : isTaxable // ignore: cast_nullable_to_non_nullable
                  as int?,
        isTaxInclusive: freezed == isTaxInclusive
            ? _value.isTaxInclusive
            : isTaxInclusive // ignore: cast_nullable_to_non_nullable
                  as int?,
        taxAmt: freezed == taxAmt
            ? _value.taxAmt
            : taxAmt // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        orderTaxPercentage: freezed == orderTaxPercentage
            ? _value.orderTaxPercentage
            : orderTaxPercentage // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        minOrderQty: freezed == minOrderQty
            ? _value.minOrderQty
            : minOrderQty // ignore: cast_nullable_to_non_nullable
                  as int?,
        productQty: freezed == productQty
            ? _value.productQty
            : productQty // ignore: cast_nullable_to_non_nullable
                  as int?,
        productTaxAmt: freezed == productTaxAmt
            ? _value.productTaxAmt
            : productTaxAmt // ignore: cast_nullable_to_non_nullable
                  as int?,
        productTaxPercentage: freezed == productTaxPercentage
            ? _value.productTaxPercentage
            : productTaxPercentage // ignore: cast_nullable_to_non_nullable
                  as int?,
        productFeatured: freezed == productFeatured
            ? _value.productFeatured
            : productFeatured // ignore: cast_nullable_to_non_nullable
                  as int?,
        productShortDescription: freezed == productShortDescription
            ? _value.productShortDescription
            : productShortDescription // ignore: cast_nullable_to_non_nullable
                  as String?,
        prodShipCharge: freezed == prodShipCharge
            ? _value.prodShipCharge
            : prodShipCharge // ignore: cast_nullable_to_non_nullable
                  as int?,
        itemsPerPack: freezed == itemsPerPack
            ? _value.itemsPerPack
            : itemsPerPack // ignore: cast_nullable_to_non_nullable
                  as int?,
        volume: freezed == volume
            ? _value.volume
            : volume // ignore: cast_nullable_to_non_nullable
                  as int?,
        productSku: freezed == productSku
            ? _value.productSku
            : productSku // ignore: cast_nullable_to_non_nullable
                  as String?,
        prodPurchaseLimit: freezed == prodPurchaseLimit
            ? _value.prodPurchaseLimit
            : prodPurchaseLimit // ignore: cast_nullable_to_non_nullable
                  as int?,
        kotId: freezed == kotId
            ? _value.kotId
            : kotId // ignore: cast_nullable_to_non_nullable
                  as int?,
        kotName: freezed == kotName
            ? _value.kotName
            : kotName // ignore: cast_nullable_to_non_nullable
                  as String?,
        prodMenuOrder: freezed == prodMenuOrder
            ? _value.prodMenuOrder
            : prodMenuOrder // ignore: cast_nullable_to_non_nullable
                  as int?,
        prodHeight: freezed == prodHeight
            ? _value.prodHeight
            : prodHeight // ignore: cast_nullable_to_non_nullable
                  as int?,
        prodWidth: freezed == prodWidth
            ? _value.prodWidth
            : prodWidth // ignore: cast_nullable_to_non_nullable
                  as int?,
        prodLength: freezed == prodLength
            ? _value.prodLength
            : prodLength // ignore: cast_nullable_to_non_nullable
                  as int?,
        prodWeight: freezed == prodWeight
            ? _value.prodWeight
            : prodWeight // ignore: cast_nullable_to_non_nullable
                  as int?,
        reorderQty: freezed == reorderQty
            ? _value.reorderQty
            : reorderQty // ignore: cast_nullable_to_non_nullable
                  as int?,
        prodSeoTitle: freezed == prodSeoTitle
            ? _value.prodSeoTitle
            : prodSeoTitle // ignore: cast_nullable_to_non_nullable
                  as String?,
        prodSeoKeyword: freezed == prodSeoKeyword
            ? _value.prodSeoKeyword
            : prodSeoKeyword // ignore: cast_nullable_to_non_nullable
                  as String?,
        productSeoUrl: freezed == productSeoUrl
            ? _value.productSeoUrl
            : productSeoUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        prodSeoDesc: freezed == prodSeoDesc
            ? _value.prodSeoDesc
            : prodSeoDesc // ignore: cast_nullable_to_non_nullable
                  as String?,
        maintainStock: freezed == maintainStock
            ? _value.maintainStock
            : maintainStock // ignore: cast_nullable_to_non_nullable
                  as int?,
        ignoreDiscount: freezed == ignoreDiscount
            ? _value.ignoreDiscount
            : ignoreDiscount // ignore: cast_nullable_to_non_nullable
                  as int?,
        isVariant: freezed == isVariant
            ? _value.isVariant
            : isVariant // ignore: cast_nullable_to_non_nullable
                  as int?,
        isCancelled: freezed == isCancelled
            ? _value.isCancelled
            : isCancelled // ignore: cast_nullable_to_non_nullable
                  as int?,
        cancelledReasonDate: freezed == cancelledReasonDate
            ? _value.cancelledReasonDate
            : cancelledReasonDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        cancelledReasonId: freezed == cancelledReasonId
            ? _value.cancelledReasonId
            : cancelledReasonId // ignore: cast_nullable_to_non_nullable
                  as int?,
        cancelledReason: freezed == cancelledReason
            ? _value.cancelledReason
            : cancelledReason // ignore: cast_nullable_to_non_nullable
                  as String?,
        images: freezed == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        variants: freezed == variants
            ? _value._variants
            : variants // ignore: cast_nullable_to_non_nullable
                  as List<Variant>?,
        serviceId: freezed == serviceId
            ? _value._serviceId
            : serviceId // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        services: freezed == services
            ? _value._services
            : services // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        serviceGroups: freezed == serviceGroups
            ? _value._serviceGroups
            : serviceGroups // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        productCategories: freezed == productCategories
            ? _value._productCategories
            : productCategories // ignore: cast_nullable_to_non_nullable
                  as List<ProductCategory>?,
        isShopOnly: freezed == isShopOnly
            ? _value.isShopOnly
            : isShopOnly // ignore: cast_nullable_to_non_nullable
                  as int?,
        addToCart: freezed == addToCart
            ? _value.addToCart
            : addToCart // ignore: cast_nullable_to_non_nullable
                  as bool?,
        wishlisted: freezed == wishlisted
            ? _value.wishlisted
            : wishlisted // ignore: cast_nullable_to_non_nullable
                  as bool?,
        quantity: freezed == quantity
            ? _value.quantity
            : quantity // ignore: cast_nullable_to_non_nullable
                  as int?,
        defaultQuantity: freezed == defaultQuantity
            ? _value.defaultQuantity
            : defaultQuantity // ignore: cast_nullable_to_non_nullable
                  as int?,
        prodVarId: freezed == prodVarId
            ? _value.prodVarId
            : prodVarId // ignore: cast_nullable_to_non_nullable
                  as int?,
        prodVarCode: freezed == prodVarCode
            ? _value.prodVarCode
            : prodVarCode // ignore: cast_nullable_to_non_nullable
                  as int?,
        isOutOfStock: freezed == isOutOfStock
            ? _value.isOutOfStock
            : isOutOfStock // ignore: cast_nullable_to_non_nullable
                  as int?,
        changePrice: freezed == changePrice
            ? _value.changePrice
            : changePrice // ignore: cast_nullable_to_non_nullable
                  as int?,
        returnableInfo: freezed == returnableInfo
            ? _value.returnableInfo
            : returnableInfo // ignore: cast_nullable_to_non_nullable
                  as ReturnableInfo?,
        isPreOrder: freezed == isPreOrder
            ? _value.isPreOrder
            : isPreOrder // ignore: cast_nullable_to_non_nullable
                  as int?,
        preOrderFee: freezed == preOrderFee
            ? _value.preOrderFee
            : preOrderFee // ignore: cast_nullable_to_non_nullable
                  as int?,
        releaseTime: freezed == releaseTime
            ? _value.releaseTime
            : releaseTime // ignore: cast_nullable_to_non_nullable
                  as int?,
        preOrderChargingOptionId: freezed == preOrderChargingOptionId
            ? _value.preOrderChargingOptionId
            : preOrderChargingOptionId // ignore: cast_nullable_to_non_nullable
                  as int?,
        takeawayAddonPrice: freezed == takeawayAddonPrice
            ? _value.takeawayAddonPrice
            : takeawayAddonPrice // ignore: cast_nullable_to_non_nullable
                  as int?,
        parcelCharge: freezed == parcelCharge
            ? _value.parcelCharge
            : parcelCharge // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductOrderItemImpl implements _ProductOrderItem {
  const _$ProductOrderItemImpl({
    @JsonKey(name: "product_id") this.productId,
    @JsonKey(name: "product_name") this.productName,
    @JsonKey(name: "order_item_id") this.orderItemId,
    @JsonKey(name: "product_code") this.productCode,
    @JsonKey(name: "product_slug") this.productSlug,
    @JsonKey(name: "product_barcode") this.productBarcode,
    @JsonKey(name: "product_desc") this.productDesc,
    @JsonKey(name: "product_arabic_name") this.productArabicName,
    @JsonKey(name: "store_id") this.storeId,
    @JsonKey(name: "sub_notification_status_id") this.subNotificationStatusId,
    @JsonKey(name: "sub_notification_status_name")
    this.subNotificationStatusName,
    @JsonKey(name: "store_product_id") this.storeProductId,
    @JsonKey(name: "store_listing_id") this.storeListingId,
    @JsonKey(name: "unit_id") this.unitId,
    @JsonKey(name: "unit_name") this.unitName,
    @JsonKey(name: "unit_arabic_name") this.unitArabicName,
    @JsonKey(name: "tax_id") this.taxId,
    @JsonKey(name: "itemsubstitute") final List<dynamic>? itemsubstitute,
    @JsonKey(name: "offer_price") this.offerPrice,
    @JsonKey(name: "product_price") this.productPrice,
    @JsonKey(name: "order_item_purchase_price") this.orderItemPurchasePrice,
    @JsonKey(name: "order_item_price") this.orderItemPrice,
    @JsonKey(name: "order_item_offer_price") this.orderItemOfferPrice,
    @JsonKey(name: "order_item_disc") this.orderItemDisc,
    @JsonKey(name: "order_item_net_amt") this.orderItemNetAmt,
    @JsonKey(name: "order_item_note") this.orderItemNote,
    @JsonKey(name: "order_item_total") this.orderItemTotal,
    @JsonKey(name: "del_method_id") this.delMethodId,
    @JsonKey(name: "del_method_charge") this.delMethodCharge,
    @JsonKey(name: "printed") this.printed,
    @JsonKey(name: "del_method_name") this.delMethodName,
    @JsonKey(name: "main_category_id") this.mainCategoryId,
    @JsonKey(name: "category_name") this.categoryName,
    @JsonKey(name: "is_free") this.isFree,
    @JsonKey(name: "service_price") this.servicePrice,
    @JsonKey(name: "order_status_id") this.orderStatusId,
    @JsonKey(name: "order_status_name") this.orderStatusName,
    @JsonKey(name: "order_item_status_history")
    final List<dynamic>? orderItemStatusHistory,
    @JsonKey(name: "order_item_qty") this.orderItemQty,
    @JsonKey(name: "coupon_id") this.couponId,
    @JsonKey(name: "shipping_charge") this.shippingCharge,
    @JsonKey(name: "is_taxable") this.isTaxable,
    @JsonKey(name: "is_tax_inclusive") this.isTaxInclusive,
    @JsonKey(name: "tax_amt") this.taxAmt,
    @JsonKey(name: "order_tax_percentage") this.orderTaxPercentage,
    @JsonKey(name: "min_order_qty") this.minOrderQty,
    @JsonKey(name: "product_qty") this.productQty,
    @JsonKey(name: "product_tax_amt") this.productTaxAmt,
    @JsonKey(name: "product_tax_percentage") this.productTaxPercentage,
    @JsonKey(name: "product_featured") this.productFeatured,
    @JsonKey(name: "product_short_description") this.productShortDescription,
    @JsonKey(name: "prod_ship_charge") this.prodShipCharge,
    @JsonKey(name: "items_per_pack") this.itemsPerPack,
    @JsonKey(name: "volume") this.volume,
    @JsonKey(name: "product_sku") this.productSku,
    @JsonKey(name: "prod_purchase_limit") this.prodPurchaseLimit,
    @JsonKey(name: "kot_id") this.kotId,
    @JsonKey(name: "kot_name") this.kotName,
    @JsonKey(name: "prod_menu_order") this.prodMenuOrder,
    @JsonKey(name: "prod_height") this.prodHeight,
    @JsonKey(name: "prod_width") this.prodWidth,
    @JsonKey(name: "prod_length") this.prodLength,
    @JsonKey(name: "prod_weight") this.prodWeight,
    @JsonKey(name: "reorder_qty") this.reorderQty,
    @JsonKey(name: "prod_seo_title") this.prodSeoTitle,
    @JsonKey(name: "prod_seo_keyword") this.prodSeoKeyword,
    @JsonKey(name: "product_seo_url") this.productSeoUrl,
    @JsonKey(name: "prod_seo_desc") this.prodSeoDesc,
    @JsonKey(name: "maintain_stock") this.maintainStock,
    @JsonKey(name: "ignore_discount") this.ignoreDiscount,
    @JsonKey(name: "is_variant") this.isVariant,
    @JsonKey(name: "is_cancelled") this.isCancelled,
    @JsonKey(name: "cancelled_reason_date") this.cancelledReasonDate,
    @JsonKey(name: "cancelled_reason_id") this.cancelledReasonId,
    @JsonKey(name: "cancelled_reason") this.cancelledReason,
    @JsonKey(name: "images") final List<dynamic>? images,
    @JsonKey(name: "variants") final List<Variant>? variants,
    @JsonKey(name: "service_id") final List<dynamic>? serviceId,
    @JsonKey(name: "services") final List<dynamic>? services,
    @JsonKey(name: "service_groups") final List<dynamic>? serviceGroups,
    @JsonKey(name: "product_categories")
    final List<ProductCategory>? productCategories,
    @JsonKey(name: "is_shop_only") this.isShopOnly,
    @JsonKey(name: "add_to_cart") this.addToCart,
    @JsonKey(name: "wishlisted") this.wishlisted,
    @JsonKey(name: "quantity") this.quantity,
    @JsonKey(name: "default_quantity") this.defaultQuantity,
    @JsonKey(name: "prod_var_id") this.prodVarId,
    @JsonKey(name: "prod_var_code", fromJson: parseInt) this.prodVarCode,
    @JsonKey(name: "is_out_of_stock") this.isOutOfStock,
    @JsonKey(name: "change_price") this.changePrice,
    @JsonKey(name: "returnable_info") this.returnableInfo,
    @JsonKey(name: "is_pre_order") this.isPreOrder,
    @JsonKey(name: "pre_order_fee") this.preOrderFee,
    @JsonKey(name: "release_time") this.releaseTime,
    @JsonKey(name: "pre_order_charging_option_id")
    this.preOrderChargingOptionId,
    @JsonKey(name: "takeaway_addon_price") this.takeawayAddonPrice,
    @JsonKey(name: "parcel_charge") this.parcelCharge,
  }) : _itemsubstitute = itemsubstitute,
       _orderItemStatusHistory = orderItemStatusHistory,
       _images = images,
       _variants = variants,
       _serviceId = serviceId,
       _services = services,
       _serviceGroups = serviceGroups,
       _productCategories = productCategories;

  factory _$ProductOrderItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductOrderItemImplFromJson(json);

  @override
  @JsonKey(name: "product_id")
  final int? productId;
  @override
  @JsonKey(name: "product_name")
  final String? productName;
  @override
  @JsonKey(name: "order_item_id")
  final int? orderItemId;
  @override
  @JsonKey(name: "product_code")
  final String? productCode;
  @override
  @JsonKey(name: "product_slug")
  final String? productSlug;
  @override
  @JsonKey(name: "product_barcode")
  final String? productBarcode;
  @override
  @JsonKey(name: "product_desc")
  final String? productDesc;
  @override
  @JsonKey(name: "product_arabic_name")
  final String? productArabicName;
  @override
  @JsonKey(name: "store_id")
  final int? storeId;
  @override
  @JsonKey(name: "sub_notification_status_id")
  final int? subNotificationStatusId;
  @override
  @JsonKey(name: "sub_notification_status_name")
  final String? subNotificationStatusName;
  @override
  @JsonKey(name: "store_product_id")
  final int? storeProductId;
  @override
  @JsonKey(name: "store_listing_id")
  final int? storeListingId;
  @override
  @JsonKey(name: "unit_id")
  final int? unitId;
  @override
  @JsonKey(name: "unit_name")
  final String? unitName;
  @override
  @JsonKey(name: "unit_arabic_name")
  final String? unitArabicName;
  @override
  @JsonKey(name: "tax_id")
  final int? taxId;
  final List<dynamic>? _itemsubstitute;
  @override
  @JsonKey(name: "itemsubstitute")
  List<dynamic>? get itemsubstitute {
    final value = _itemsubstitute;
    if (value == null) return null;
    if (_itemsubstitute is EqualUnmodifiableListView) return _itemsubstitute;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "offer_price")
  final int? offerPrice;
  @override
  @JsonKey(name: "product_price")
  final double? productPrice;
  @override
  @JsonKey(name: "order_item_purchase_price")
  final int? orderItemPurchasePrice;
  @override
  @JsonKey(name: "order_item_price")
  final double? orderItemPrice;
  @override
  @JsonKey(name: "order_item_offer_price")
  final int? orderItemOfferPrice;
  @override
  @JsonKey(name: "order_item_disc")
  final int? orderItemDisc;
  @override
  @JsonKey(name: "order_item_net_amt")
  final int? orderItemNetAmt;
  @override
  @JsonKey(name: "order_item_note")
  final String? orderItemNote;
  @override
  @JsonKey(name: "order_item_total")
  final int? orderItemTotal;
  @override
  @JsonKey(name: "del_method_id")
  final int? delMethodId;
  @override
  @JsonKey(name: "del_method_charge")
  final String? delMethodCharge;
  @override
  @JsonKey(name: "printed")
  final int? printed;
  @override
  @JsonKey(name: "del_method_name")
  final String? delMethodName;
  @override
  @JsonKey(name: "main_category_id")
  final int? mainCategoryId;
  @override
  @JsonKey(name: "category_name")
  final String? categoryName;
  @override
  @JsonKey(name: "is_free")
  final int? isFree;
  @override
  @JsonKey(name: "service_price")
  final int? servicePrice;
  @override
  @JsonKey(name: "order_status_id")
  final int? orderStatusId;
  @override
  @JsonKey(name: "order_status_name")
  final String? orderStatusName;
  final List<dynamic>? _orderItemStatusHistory;
  @override
  @JsonKey(name: "order_item_status_history")
  List<dynamic>? get orderItemStatusHistory {
    final value = _orderItemStatusHistory;
    if (value == null) return null;
    if (_orderItemStatusHistory is EqualUnmodifiableListView)
      return _orderItemStatusHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "order_item_qty")
  final int? orderItemQty;
  @override
  @JsonKey(name: "coupon_id")
  final int? couponId;
  @override
  @JsonKey(name: "shipping_charge")
  final int? shippingCharge;
  @override
  @JsonKey(name: "is_taxable")
  final int? isTaxable;
  @override
  @JsonKey(name: "is_tax_inclusive")
  final int? isTaxInclusive;
  @override
  @JsonKey(name: "tax_amt")
  final dynamic taxAmt;
  @override
  @JsonKey(name: "order_tax_percentage")
  final dynamic orderTaxPercentage;
  @override
  @JsonKey(name: "min_order_qty")
  final int? minOrderQty;
  @override
  @JsonKey(name: "product_qty")
  final int? productQty;
  @override
  @JsonKey(name: "product_tax_amt")
  final int? productTaxAmt;
  @override
  @JsonKey(name: "product_tax_percentage")
  final int? productTaxPercentage;
  @override
  @JsonKey(name: "product_featured")
  final int? productFeatured;
  @override
  @JsonKey(name: "product_short_description")
  final String? productShortDescription;
  @override
  @JsonKey(name: "prod_ship_charge")
  final int? prodShipCharge;
  @override
  @JsonKey(name: "items_per_pack")
  final int? itemsPerPack;
  @override
  @JsonKey(name: "volume")
  final int? volume;
  @override
  @JsonKey(name: "product_sku")
  final String? productSku;
  @override
  @JsonKey(name: "prod_purchase_limit")
  final int? prodPurchaseLimit;
  @override
  @JsonKey(name: "kot_id")
  final int? kotId;
  @override
  @JsonKey(name: "kot_name")
  final String? kotName;
  @override
  @JsonKey(name: "prod_menu_order")
  final int? prodMenuOrder;
  @override
  @JsonKey(name: "prod_height")
  final int? prodHeight;
  @override
  @JsonKey(name: "prod_width")
  final int? prodWidth;
  @override
  @JsonKey(name: "prod_length")
  final int? prodLength;
  @override
  @JsonKey(name: "prod_weight")
  final int? prodWeight;
  @override
  @JsonKey(name: "reorder_qty")
  final int? reorderQty;
  @override
  @JsonKey(name: "prod_seo_title")
  final String? prodSeoTitle;
  @override
  @JsonKey(name: "prod_seo_keyword")
  final String? prodSeoKeyword;
  @override
  @JsonKey(name: "product_seo_url")
  final String? productSeoUrl;
  @override
  @JsonKey(name: "prod_seo_desc")
  final String? prodSeoDesc;
  @override
  @JsonKey(name: "maintain_stock")
  final int? maintainStock;
  @override
  @JsonKey(name: "ignore_discount")
  final int? ignoreDiscount;
  @override
  @JsonKey(name: "is_variant")
  final int? isVariant;
  @override
  @JsonKey(name: "is_cancelled")
  final int? isCancelled;
  @override
  @JsonKey(name: "cancelled_reason_date")
  final String? cancelledReasonDate;
  @override
  @JsonKey(name: "cancelled_reason_id")
  final int? cancelledReasonId;
  @override
  @JsonKey(name: "cancelled_reason")
  final String? cancelledReason;
  final List<dynamic>? _images;
  @override
  @JsonKey(name: "images")
  List<dynamic>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Variant>? _variants;
  @override
  @JsonKey(name: "variants")
  List<Variant>? get variants {
    final value = _variants;
    if (value == null) return null;
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _serviceId;
  @override
  @JsonKey(name: "service_id")
  List<dynamic>? get serviceId {
    final value = _serviceId;
    if (value == null) return null;
    if (_serviceId is EqualUnmodifiableListView) return _serviceId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _services;
  @override
  @JsonKey(name: "services")
  List<dynamic>? get services {
    final value = _services;
    if (value == null) return null;
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _serviceGroups;
  @override
  @JsonKey(name: "service_groups")
  List<dynamic>? get serviceGroups {
    final value = _serviceGroups;
    if (value == null) return null;
    if (_serviceGroups is EqualUnmodifiableListView) return _serviceGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductCategory>? _productCategories;
  @override
  @JsonKey(name: "product_categories")
  List<ProductCategory>? get productCategories {
    final value = _productCategories;
    if (value == null) return null;
    if (_productCategories is EqualUnmodifiableListView)
      return _productCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "is_shop_only")
  final int? isShopOnly;
  @override
  @JsonKey(name: "add_to_cart")
  final bool? addToCart;
  @override
  @JsonKey(name: "wishlisted")
  final bool? wishlisted;
  @override
  @JsonKey(name: "quantity")
  final int? quantity;
  @override
  @JsonKey(name: "default_quantity")
  final int? defaultQuantity;
  @override
  @JsonKey(name: "prod_var_id")
  final int? prodVarId;
  @override
  @JsonKey(name: "prod_var_code", fromJson: parseInt)
  final int? prodVarCode;
  @override
  @JsonKey(name: "is_out_of_stock")
  final int? isOutOfStock;
  @override
  @JsonKey(name: "change_price")
  final int? changePrice;
  @override
  @JsonKey(name: "returnable_info")
  final ReturnableInfo? returnableInfo;
  @override
  @JsonKey(name: "is_pre_order")
  final int? isPreOrder;
  @override
  @JsonKey(name: "pre_order_fee")
  final int? preOrderFee;
  @override
  @JsonKey(name: "release_time")
  final int? releaseTime;
  @override
  @JsonKey(name: "pre_order_charging_option_id")
  final int? preOrderChargingOptionId;
  @override
  @JsonKey(name: "takeaway_addon_price")
  final int? takeawayAddonPrice;
  @override
  @JsonKey(name: "parcel_charge")
  final int? parcelCharge;

  @override
  String toString() {
    return 'ProductOrderItem(productId: $productId, productName: $productName, orderItemId: $orderItemId, productCode: $productCode, productSlug: $productSlug, productBarcode: $productBarcode, productDesc: $productDesc, productArabicName: $productArabicName, storeId: $storeId, subNotificationStatusId: $subNotificationStatusId, subNotificationStatusName: $subNotificationStatusName, storeProductId: $storeProductId, storeListingId: $storeListingId, unitId: $unitId, unitName: $unitName, unitArabicName: $unitArabicName, taxId: $taxId, itemsubstitute: $itemsubstitute, offerPrice: $offerPrice, productPrice: $productPrice, orderItemPurchasePrice: $orderItemPurchasePrice, orderItemPrice: $orderItemPrice, orderItemOfferPrice: $orderItemOfferPrice, orderItemDisc: $orderItemDisc, orderItemNetAmt: $orderItemNetAmt, orderItemNote: $orderItemNote, orderItemTotal: $orderItemTotal, delMethodId: $delMethodId, delMethodCharge: $delMethodCharge, printed: $printed, delMethodName: $delMethodName, mainCategoryId: $mainCategoryId, categoryName: $categoryName, isFree: $isFree, servicePrice: $servicePrice, orderStatusId: $orderStatusId, orderStatusName: $orderStatusName, orderItemStatusHistory: $orderItemStatusHistory, orderItemQty: $orderItemQty, couponId: $couponId, shippingCharge: $shippingCharge, isTaxable: $isTaxable, isTaxInclusive: $isTaxInclusive, taxAmt: $taxAmt, orderTaxPercentage: $orderTaxPercentage, minOrderQty: $minOrderQty, productQty: $productQty, productTaxAmt: $productTaxAmt, productTaxPercentage: $productTaxPercentage, productFeatured: $productFeatured, productShortDescription: $productShortDescription, prodShipCharge: $prodShipCharge, itemsPerPack: $itemsPerPack, volume: $volume, productSku: $productSku, prodPurchaseLimit: $prodPurchaseLimit, kotId: $kotId, kotName: $kotName, prodMenuOrder: $prodMenuOrder, prodHeight: $prodHeight, prodWidth: $prodWidth, prodLength: $prodLength, prodWeight: $prodWeight, reorderQty: $reorderQty, prodSeoTitle: $prodSeoTitle, prodSeoKeyword: $prodSeoKeyword, productSeoUrl: $productSeoUrl, prodSeoDesc: $prodSeoDesc, maintainStock: $maintainStock, ignoreDiscount: $ignoreDiscount, isVariant: $isVariant, isCancelled: $isCancelled, cancelledReasonDate: $cancelledReasonDate, cancelledReasonId: $cancelledReasonId, cancelledReason: $cancelledReason, images: $images, variants: $variants, serviceId: $serviceId, services: $services, serviceGroups: $serviceGroups, productCategories: $productCategories, isShopOnly: $isShopOnly, addToCart: $addToCart, wishlisted: $wishlisted, quantity: $quantity, defaultQuantity: $defaultQuantity, prodVarId: $prodVarId, prodVarCode: $prodVarCode, isOutOfStock: $isOutOfStock, changePrice: $changePrice, returnableInfo: $returnableInfo, isPreOrder: $isPreOrder, preOrderFee: $preOrderFee, releaseTime: $releaseTime, preOrderChargingOptionId: $preOrderChargingOptionId, takeawayAddonPrice: $takeawayAddonPrice, parcelCharge: $parcelCharge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductOrderItemImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.orderItemId, orderItemId) ||
                other.orderItemId == orderItemId) &&
            (identical(other.productCode, productCode) ||
                other.productCode == productCode) &&
            (identical(other.productSlug, productSlug) ||
                other.productSlug == productSlug) &&
            (identical(other.productBarcode, productBarcode) ||
                other.productBarcode == productBarcode) &&
            (identical(other.productDesc, productDesc) ||
                other.productDesc == productDesc) &&
            (identical(other.productArabicName, productArabicName) ||
                other.productArabicName == productArabicName) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(
                  other.subNotificationStatusId,
                  subNotificationStatusId,
                ) ||
                other.subNotificationStatusId == subNotificationStatusId) &&
            (identical(
                  other.subNotificationStatusName,
                  subNotificationStatusName,
                ) ||
                other.subNotificationStatusName == subNotificationStatusName) &&
            (identical(other.storeProductId, storeProductId) ||
                other.storeProductId == storeProductId) &&
            (identical(other.storeListingId, storeListingId) ||
                other.storeListingId == storeListingId) &&
            (identical(other.unitId, unitId) || other.unitId == unitId) &&
            (identical(other.unitName, unitName) ||
                other.unitName == unitName) &&
            (identical(other.unitArabicName, unitArabicName) ||
                other.unitArabicName == unitArabicName) &&
            (identical(other.taxId, taxId) || other.taxId == taxId) &&
            const DeepCollectionEquality().equals(
              other._itemsubstitute,
              _itemsubstitute,
            ) &&
            (identical(other.offerPrice, offerPrice) ||
                other.offerPrice == offerPrice) &&
            (identical(other.productPrice, productPrice) ||
                other.productPrice == productPrice) &&
            (identical(other.orderItemPurchasePrice, orderItemPurchasePrice) ||
                other.orderItemPurchasePrice == orderItemPurchasePrice) &&
            (identical(other.orderItemPrice, orderItemPrice) ||
                other.orderItemPrice == orderItemPrice) &&
            (identical(other.orderItemOfferPrice, orderItemOfferPrice) ||
                other.orderItemOfferPrice == orderItemOfferPrice) &&
            (identical(other.orderItemDisc, orderItemDisc) ||
                other.orderItemDisc == orderItemDisc) &&
            (identical(other.orderItemNetAmt, orderItemNetAmt) ||
                other.orderItemNetAmt == orderItemNetAmt) &&
            (identical(other.orderItemNote, orderItemNote) ||
                other.orderItemNote == orderItemNote) &&
            (identical(other.orderItemTotal, orderItemTotal) ||
                other.orderItemTotal == orderItemTotal) &&
            (identical(other.delMethodId, delMethodId) ||
                other.delMethodId == delMethodId) &&
            (identical(other.delMethodCharge, delMethodCharge) ||
                other.delMethodCharge == delMethodCharge) &&
            (identical(other.printed, printed) || other.printed == printed) &&
            (identical(other.delMethodName, delMethodName) ||
                other.delMethodName == delMethodName) &&
            (identical(other.mainCategoryId, mainCategoryId) ||
                other.mainCategoryId == mainCategoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.isFree, isFree) || other.isFree == isFree) &&
            (identical(other.servicePrice, servicePrice) ||
                other.servicePrice == servicePrice) &&
            (identical(other.orderStatusId, orderStatusId) ||
                other.orderStatusId == orderStatusId) &&
            (identical(other.orderStatusName, orderStatusName) ||
                other.orderStatusName == orderStatusName) &&
            const DeepCollectionEquality().equals(
              other._orderItemStatusHistory,
              _orderItemStatusHistory,
            ) &&
            (identical(other.orderItemQty, orderItemQty) ||
                other.orderItemQty == orderItemQty) &&
            (identical(other.couponId, couponId) ||
                other.couponId == couponId) &&
            (identical(other.shippingCharge, shippingCharge) ||
                other.shippingCharge == shippingCharge) &&
            (identical(other.isTaxable, isTaxable) ||
                other.isTaxable == isTaxable) &&
            (identical(other.isTaxInclusive, isTaxInclusive) ||
                other.isTaxInclusive == isTaxInclusive) &&
            const DeepCollectionEquality().equals(other.taxAmt, taxAmt) &&
            const DeepCollectionEquality().equals(
              other.orderTaxPercentage,
              orderTaxPercentage,
            ) &&
            (identical(other.minOrderQty, minOrderQty) ||
                other.minOrderQty == minOrderQty) &&
            (identical(other.productQty, productQty) ||
                other.productQty == productQty) &&
            (identical(other.productTaxAmt, productTaxAmt) ||
                other.productTaxAmt == productTaxAmt) &&
            (identical(other.productTaxPercentage, productTaxPercentage) ||
                other.productTaxPercentage == productTaxPercentage) &&
            (identical(other.productFeatured, productFeatured) ||
                other.productFeatured == productFeatured) &&
            (identical(
                  other.productShortDescription,
                  productShortDescription,
                ) ||
                other.productShortDescription == productShortDescription) &&
            (identical(other.prodShipCharge, prodShipCharge) ||
                other.prodShipCharge == prodShipCharge) &&
            (identical(other.itemsPerPack, itemsPerPack) ||
                other.itemsPerPack == itemsPerPack) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.productSku, productSku) ||
                other.productSku == productSku) &&
            (identical(other.prodPurchaseLimit, prodPurchaseLimit) ||
                other.prodPurchaseLimit == prodPurchaseLimit) &&
            (identical(other.kotId, kotId) || other.kotId == kotId) &&
            (identical(other.kotName, kotName) || other.kotName == kotName) &&
            (identical(other.prodMenuOrder, prodMenuOrder) ||
                other.prodMenuOrder == prodMenuOrder) &&
            (identical(other.prodHeight, prodHeight) ||
                other.prodHeight == prodHeight) &&
            (identical(other.prodWidth, prodWidth) ||
                other.prodWidth == prodWidth) &&
            (identical(other.prodLength, prodLength) ||
                other.prodLength == prodLength) &&
            (identical(other.prodWeight, prodWeight) ||
                other.prodWeight == prodWeight) &&
            (identical(other.reorderQty, reorderQty) ||
                other.reorderQty == reorderQty) &&
            (identical(other.prodSeoTitle, prodSeoTitle) ||
                other.prodSeoTitle == prodSeoTitle) &&
            (identical(other.prodSeoKeyword, prodSeoKeyword) ||
                other.prodSeoKeyword == prodSeoKeyword) &&
            (identical(other.productSeoUrl, productSeoUrl) ||
                other.productSeoUrl == productSeoUrl) &&
            (identical(other.prodSeoDesc, prodSeoDesc) ||
                other.prodSeoDesc == prodSeoDesc) &&
            (identical(other.maintainStock, maintainStock) ||
                other.maintainStock == maintainStock) &&
            (identical(other.ignoreDiscount, ignoreDiscount) ||
                other.ignoreDiscount == ignoreDiscount) &&
            (identical(other.isVariant, isVariant) ||
                other.isVariant == isVariant) &&
            (identical(other.isCancelled, isCancelled) ||
                other.isCancelled == isCancelled) &&
            (identical(other.cancelledReasonDate, cancelledReasonDate) ||
                other.cancelledReasonDate == cancelledReasonDate) &&
            (identical(other.cancelledReasonId, cancelledReasonId) ||
                other.cancelledReasonId == cancelledReasonId) &&
            (identical(other.cancelledReason, cancelledReason) ||
                other.cancelledReason == cancelledReason) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._variants, _variants) &&
            const DeepCollectionEquality().equals(
              other._serviceId,
              _serviceId,
            ) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            const DeepCollectionEquality().equals(
              other._serviceGroups,
              _serviceGroups,
            ) &&
            const DeepCollectionEquality().equals(
              other._productCategories,
              _productCategories,
            ) &&
            (identical(other.isShopOnly, isShopOnly) ||
                other.isShopOnly == isShopOnly) &&
            (identical(other.addToCart, addToCart) ||
                other.addToCart == addToCart) &&
            (identical(other.wishlisted, wishlisted) ||
                other.wishlisted == wishlisted) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.defaultQuantity, defaultQuantity) ||
                other.defaultQuantity == defaultQuantity) &&
            (identical(other.prodVarId, prodVarId) ||
                other.prodVarId == prodVarId) &&
            (identical(other.prodVarCode, prodVarCode) ||
                other.prodVarCode == prodVarCode) &&
            (identical(other.isOutOfStock, isOutOfStock) ||
                other.isOutOfStock == isOutOfStock) &&
            (identical(other.changePrice, changePrice) ||
                other.changePrice == changePrice) &&
            (identical(other.returnableInfo, returnableInfo) ||
                other.returnableInfo == returnableInfo) &&
            (identical(other.isPreOrder, isPreOrder) ||
                other.isPreOrder == isPreOrder) &&
            (identical(other.preOrderFee, preOrderFee) ||
                other.preOrderFee == preOrderFee) &&
            (identical(other.releaseTime, releaseTime) ||
                other.releaseTime == releaseTime) &&
            (identical(
                  other.preOrderChargingOptionId,
                  preOrderChargingOptionId,
                ) ||
                other.preOrderChargingOptionId == preOrderChargingOptionId) &&
            (identical(other.takeawayAddonPrice, takeawayAddonPrice) ||
                other.takeawayAddonPrice == takeawayAddonPrice) &&
            (identical(other.parcelCharge, parcelCharge) ||
                other.parcelCharge == parcelCharge));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    productId,
    productName,
    orderItemId,
    productCode,
    productSlug,
    productBarcode,
    productDesc,
    productArabicName,
    storeId,
    subNotificationStatusId,
    subNotificationStatusName,
    storeProductId,
    storeListingId,
    unitId,
    unitName,
    unitArabicName,
    taxId,
    const DeepCollectionEquality().hash(_itemsubstitute),
    offerPrice,
    productPrice,
    orderItemPurchasePrice,
    orderItemPrice,
    orderItemOfferPrice,
    orderItemDisc,
    orderItemNetAmt,
    orderItemNote,
    orderItemTotal,
    delMethodId,
    delMethodCharge,
    printed,
    delMethodName,
    mainCategoryId,
    categoryName,
    isFree,
    servicePrice,
    orderStatusId,
    orderStatusName,
    const DeepCollectionEquality().hash(_orderItemStatusHistory),
    orderItemQty,
    couponId,
    shippingCharge,
    isTaxable,
    isTaxInclusive,
    const DeepCollectionEquality().hash(taxAmt),
    const DeepCollectionEquality().hash(orderTaxPercentage),
    minOrderQty,
    productQty,
    productTaxAmt,
    productTaxPercentage,
    productFeatured,
    productShortDescription,
    prodShipCharge,
    itemsPerPack,
    volume,
    productSku,
    prodPurchaseLimit,
    kotId,
    kotName,
    prodMenuOrder,
    prodHeight,
    prodWidth,
    prodLength,
    prodWeight,
    reorderQty,
    prodSeoTitle,
    prodSeoKeyword,
    productSeoUrl,
    prodSeoDesc,
    maintainStock,
    ignoreDiscount,
    isVariant,
    isCancelled,
    cancelledReasonDate,
    cancelledReasonId,
    cancelledReason,
    const DeepCollectionEquality().hash(_images),
    const DeepCollectionEquality().hash(_variants),
    const DeepCollectionEquality().hash(_serviceId),
    const DeepCollectionEquality().hash(_services),
    const DeepCollectionEquality().hash(_serviceGroups),
    const DeepCollectionEquality().hash(_productCategories),
    isShopOnly,
    addToCart,
    wishlisted,
    quantity,
    defaultQuantity,
    prodVarId,
    prodVarCode,
    isOutOfStock,
    changePrice,
    returnableInfo,
    isPreOrder,
    preOrderFee,
    releaseTime,
    preOrderChargingOptionId,
    takeawayAddonPrice,
    parcelCharge,
  ]);

  /// Create a copy of ProductOrderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductOrderItemImplCopyWith<_$ProductOrderItemImpl> get copyWith =>
      __$$ProductOrderItemImplCopyWithImpl<_$ProductOrderItemImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductOrderItemImplToJson(this);
  }
}

abstract class _ProductOrderItem implements ProductOrderItem {
  const factory _ProductOrderItem({
    @JsonKey(name: "product_id") final int? productId,
    @JsonKey(name: "product_name") final String? productName,
    @JsonKey(name: "order_item_id") final int? orderItemId,
    @JsonKey(name: "product_code") final String? productCode,
    @JsonKey(name: "product_slug") final String? productSlug,
    @JsonKey(name: "product_barcode") final String? productBarcode,
    @JsonKey(name: "product_desc") final String? productDesc,
    @JsonKey(name: "product_arabic_name") final String? productArabicName,
    @JsonKey(name: "store_id") final int? storeId,
    @JsonKey(name: "sub_notification_status_id")
    final int? subNotificationStatusId,
    @JsonKey(name: "sub_notification_status_name")
    final String? subNotificationStatusName,
    @JsonKey(name: "store_product_id") final int? storeProductId,
    @JsonKey(name: "store_listing_id") final int? storeListingId,
    @JsonKey(name: "unit_id") final int? unitId,
    @JsonKey(name: "unit_name") final String? unitName,
    @JsonKey(name: "unit_arabic_name") final String? unitArabicName,
    @JsonKey(name: "tax_id") final int? taxId,
    @JsonKey(name: "itemsubstitute") final List<dynamic>? itemsubstitute,
    @JsonKey(name: "offer_price") final int? offerPrice,
    @JsonKey(name: "product_price") final double? productPrice,
    @JsonKey(name: "order_item_purchase_price")
    final int? orderItemPurchasePrice,
    @JsonKey(name: "order_item_price") final double? orderItemPrice,
    @JsonKey(name: "order_item_offer_price") final int? orderItemOfferPrice,
    @JsonKey(name: "order_item_disc") final int? orderItemDisc,
    @JsonKey(name: "order_item_net_amt") final int? orderItemNetAmt,
    @JsonKey(name: "order_item_note") final String? orderItemNote,
    @JsonKey(name: "order_item_total") final int? orderItemTotal,
    @JsonKey(name: "del_method_id") final int? delMethodId,
    @JsonKey(name: "del_method_charge") final String? delMethodCharge,
    @JsonKey(name: "printed") final int? printed,
    @JsonKey(name: "del_method_name") final String? delMethodName,
    @JsonKey(name: "main_category_id") final int? mainCategoryId,
    @JsonKey(name: "category_name") final String? categoryName,
    @JsonKey(name: "is_free") final int? isFree,
    @JsonKey(name: "service_price") final int? servicePrice,
    @JsonKey(name: "order_status_id") final int? orderStatusId,
    @JsonKey(name: "order_status_name") final String? orderStatusName,
    @JsonKey(name: "order_item_status_history")
    final List<dynamic>? orderItemStatusHistory,
    @JsonKey(name: "order_item_qty") final int? orderItemQty,
    @JsonKey(name: "coupon_id") final int? couponId,
    @JsonKey(name: "shipping_charge") final int? shippingCharge,
    @JsonKey(name: "is_taxable") final int? isTaxable,
    @JsonKey(name: "is_tax_inclusive") final int? isTaxInclusive,
    @JsonKey(name: "tax_amt") final dynamic taxAmt,
    @JsonKey(name: "order_tax_percentage") final dynamic orderTaxPercentage,
    @JsonKey(name: "min_order_qty") final int? minOrderQty,
    @JsonKey(name: "product_qty") final int? productQty,
    @JsonKey(name: "product_tax_amt") final int? productTaxAmt,
    @JsonKey(name: "product_tax_percentage") final int? productTaxPercentage,
    @JsonKey(name: "product_featured") final int? productFeatured,
    @JsonKey(name: "product_short_description")
    final String? productShortDescription,
    @JsonKey(name: "prod_ship_charge") final int? prodShipCharge,
    @JsonKey(name: "items_per_pack") final int? itemsPerPack,
    @JsonKey(name: "volume") final int? volume,
    @JsonKey(name: "product_sku") final String? productSku,
    @JsonKey(name: "prod_purchase_limit") final int? prodPurchaseLimit,
    @JsonKey(name: "kot_id") final int? kotId,
    @JsonKey(name: "kot_name") final String? kotName,
    @JsonKey(name: "prod_menu_order") final int? prodMenuOrder,
    @JsonKey(name: "prod_height") final int? prodHeight,
    @JsonKey(name: "prod_width") final int? prodWidth,
    @JsonKey(name: "prod_length") final int? prodLength,
    @JsonKey(name: "prod_weight") final int? prodWeight,
    @JsonKey(name: "reorder_qty") final int? reorderQty,
    @JsonKey(name: "prod_seo_title") final String? prodSeoTitle,
    @JsonKey(name: "prod_seo_keyword") final String? prodSeoKeyword,
    @JsonKey(name: "product_seo_url") final String? productSeoUrl,
    @JsonKey(name: "prod_seo_desc") final String? prodSeoDesc,
    @JsonKey(name: "maintain_stock") final int? maintainStock,
    @JsonKey(name: "ignore_discount") final int? ignoreDiscount,
    @JsonKey(name: "is_variant") final int? isVariant,
    @JsonKey(name: "is_cancelled") final int? isCancelled,
    @JsonKey(name: "cancelled_reason_date") final String? cancelledReasonDate,
    @JsonKey(name: "cancelled_reason_id") final int? cancelledReasonId,
    @JsonKey(name: "cancelled_reason") final String? cancelledReason,
    @JsonKey(name: "images") final List<dynamic>? images,
    @JsonKey(name: "variants") final List<Variant>? variants,
    @JsonKey(name: "service_id") final List<dynamic>? serviceId,
    @JsonKey(name: "services") final List<dynamic>? services,
    @JsonKey(name: "service_groups") final List<dynamic>? serviceGroups,
    @JsonKey(name: "product_categories")
    final List<ProductCategory>? productCategories,
    @JsonKey(name: "is_shop_only") final int? isShopOnly,
    @JsonKey(name: "add_to_cart") final bool? addToCart,
    @JsonKey(name: "wishlisted") final bool? wishlisted,
    @JsonKey(name: "quantity") final int? quantity,
    @JsonKey(name: "default_quantity") final int? defaultQuantity,
    @JsonKey(name: "prod_var_id") final int? prodVarId,
    @JsonKey(name: "prod_var_code", fromJson: parseInt) final int? prodVarCode,
    @JsonKey(name: "is_out_of_stock") final int? isOutOfStock,
    @JsonKey(name: "change_price") final int? changePrice,
    @JsonKey(name: "returnable_info") final ReturnableInfo? returnableInfo,
    @JsonKey(name: "is_pre_order") final int? isPreOrder,
    @JsonKey(name: "pre_order_fee") final int? preOrderFee,
    @JsonKey(name: "release_time") final int? releaseTime,
    @JsonKey(name: "pre_order_charging_option_id")
    final int? preOrderChargingOptionId,
    @JsonKey(name: "takeaway_addon_price") final int? takeawayAddonPrice,
    @JsonKey(name: "parcel_charge") final int? parcelCharge,
  }) = _$ProductOrderItemImpl;

  factory _ProductOrderItem.fromJson(Map<String, dynamic> json) =
      _$ProductOrderItemImpl.fromJson;

  @override
  @JsonKey(name: "product_id")
  int? get productId;
  @override
  @JsonKey(name: "product_name")
  String? get productName;
  @override
  @JsonKey(name: "order_item_id")
  int? get orderItemId;
  @override
  @JsonKey(name: "product_code")
  String? get productCode;
  @override
  @JsonKey(name: "product_slug")
  String? get productSlug;
  @override
  @JsonKey(name: "product_barcode")
  String? get productBarcode;
  @override
  @JsonKey(name: "product_desc")
  String? get productDesc;
  @override
  @JsonKey(name: "product_arabic_name")
  String? get productArabicName;
  @override
  @JsonKey(name: "store_id")
  int? get storeId;
  @override
  @JsonKey(name: "sub_notification_status_id")
  int? get subNotificationStatusId;
  @override
  @JsonKey(name: "sub_notification_status_name")
  String? get subNotificationStatusName;
  @override
  @JsonKey(name: "store_product_id")
  int? get storeProductId;
  @override
  @JsonKey(name: "store_listing_id")
  int? get storeListingId;
  @override
  @JsonKey(name: "unit_id")
  int? get unitId;
  @override
  @JsonKey(name: "unit_name")
  String? get unitName;
  @override
  @JsonKey(name: "unit_arabic_name")
  String? get unitArabicName;
  @override
  @JsonKey(name: "tax_id")
  int? get taxId;
  @override
  @JsonKey(name: "itemsubstitute")
  List<dynamic>? get itemsubstitute;
  @override
  @JsonKey(name: "offer_price")
  int? get offerPrice;
  @override
  @JsonKey(name: "product_price")
  double? get productPrice;
  @override
  @JsonKey(name: "order_item_purchase_price")
  int? get orderItemPurchasePrice;
  @override
  @JsonKey(name: "order_item_price")
  double? get orderItemPrice;
  @override
  @JsonKey(name: "order_item_offer_price")
  int? get orderItemOfferPrice;
  @override
  @JsonKey(name: "order_item_disc")
  int? get orderItemDisc;
  @override
  @JsonKey(name: "order_item_net_amt")
  int? get orderItemNetAmt;
  @override
  @JsonKey(name: "order_item_note")
  String? get orderItemNote;
  @override
  @JsonKey(name: "order_item_total")
  int? get orderItemTotal;
  @override
  @JsonKey(name: "del_method_id")
  int? get delMethodId;
  @override
  @JsonKey(name: "del_method_charge")
  String? get delMethodCharge;
  @override
  @JsonKey(name: "printed")
  int? get printed;
  @override
  @JsonKey(name: "del_method_name")
  String? get delMethodName;
  @override
  @JsonKey(name: "main_category_id")
  int? get mainCategoryId;
  @override
  @JsonKey(name: "category_name")
  String? get categoryName;
  @override
  @JsonKey(name: "is_free")
  int? get isFree;
  @override
  @JsonKey(name: "service_price")
  int? get servicePrice;
  @override
  @JsonKey(name: "order_status_id")
  int? get orderStatusId;
  @override
  @JsonKey(name: "order_status_name")
  String? get orderStatusName;
  @override
  @JsonKey(name: "order_item_status_history")
  List<dynamic>? get orderItemStatusHistory;
  @override
  @JsonKey(name: "order_item_qty")
  int? get orderItemQty;
  @override
  @JsonKey(name: "coupon_id")
  int? get couponId;
  @override
  @JsonKey(name: "shipping_charge")
  int? get shippingCharge;
  @override
  @JsonKey(name: "is_taxable")
  int? get isTaxable;
  @override
  @JsonKey(name: "is_tax_inclusive")
  int? get isTaxInclusive;
  @override
  @JsonKey(name: "tax_amt")
  dynamic get taxAmt;
  @override
  @JsonKey(name: "order_tax_percentage")
  dynamic get orderTaxPercentage;
  @override
  @JsonKey(name: "min_order_qty")
  int? get minOrderQty;
  @override
  @JsonKey(name: "product_qty")
  int? get productQty;
  @override
  @JsonKey(name: "product_tax_amt")
  int? get productTaxAmt;
  @override
  @JsonKey(name: "product_tax_percentage")
  int? get productTaxPercentage;
  @override
  @JsonKey(name: "product_featured")
  int? get productFeatured;
  @override
  @JsonKey(name: "product_short_description")
  String? get productShortDescription;
  @override
  @JsonKey(name: "prod_ship_charge")
  int? get prodShipCharge;
  @override
  @JsonKey(name: "items_per_pack")
  int? get itemsPerPack;
  @override
  @JsonKey(name: "volume")
  int? get volume;
  @override
  @JsonKey(name: "product_sku")
  String? get productSku;
  @override
  @JsonKey(name: "prod_purchase_limit")
  int? get prodPurchaseLimit;
  @override
  @JsonKey(name: "kot_id")
  int? get kotId;
  @override
  @JsonKey(name: "kot_name")
  String? get kotName;
  @override
  @JsonKey(name: "prod_menu_order")
  int? get prodMenuOrder;
  @override
  @JsonKey(name: "prod_height")
  int? get prodHeight;
  @override
  @JsonKey(name: "prod_width")
  int? get prodWidth;
  @override
  @JsonKey(name: "prod_length")
  int? get prodLength;
  @override
  @JsonKey(name: "prod_weight")
  int? get prodWeight;
  @override
  @JsonKey(name: "reorder_qty")
  int? get reorderQty;
  @override
  @JsonKey(name: "prod_seo_title")
  String? get prodSeoTitle;
  @override
  @JsonKey(name: "prod_seo_keyword")
  String? get prodSeoKeyword;
  @override
  @JsonKey(name: "product_seo_url")
  String? get productSeoUrl;
  @override
  @JsonKey(name: "prod_seo_desc")
  String? get prodSeoDesc;
  @override
  @JsonKey(name: "maintain_stock")
  int? get maintainStock;
  @override
  @JsonKey(name: "ignore_discount")
  int? get ignoreDiscount;
  @override
  @JsonKey(name: "is_variant")
  int? get isVariant;
  @override
  @JsonKey(name: "is_cancelled")
  int? get isCancelled;
  @override
  @JsonKey(name: "cancelled_reason_date")
  String? get cancelledReasonDate;
  @override
  @JsonKey(name: "cancelled_reason_id")
  int? get cancelledReasonId;
  @override
  @JsonKey(name: "cancelled_reason")
  String? get cancelledReason;
  @override
  @JsonKey(name: "images")
  List<dynamic>? get images;
  @override
  @JsonKey(name: "variants")
  List<Variant>? get variants;
  @override
  @JsonKey(name: "service_id")
  List<dynamic>? get serviceId;
  @override
  @JsonKey(name: "services")
  List<dynamic>? get services;
  @override
  @JsonKey(name: "service_groups")
  List<dynamic>? get serviceGroups;
  @override
  @JsonKey(name: "product_categories")
  List<ProductCategory>? get productCategories;
  @override
  @JsonKey(name: "is_shop_only")
  int? get isShopOnly;
  @override
  @JsonKey(name: "add_to_cart")
  bool? get addToCart;
  @override
  @JsonKey(name: "wishlisted")
  bool? get wishlisted;
  @override
  @JsonKey(name: "quantity")
  int? get quantity;
  @override
  @JsonKey(name: "default_quantity")
  int? get defaultQuantity;
  @override
  @JsonKey(name: "prod_var_id")
  int? get prodVarId;
  @override
  @JsonKey(name: "prod_var_code", fromJson: parseInt)
  int? get prodVarCode;
  @override
  @JsonKey(name: "is_out_of_stock")
  int? get isOutOfStock;
  @override
  @JsonKey(name: "change_price")
  int? get changePrice;
  @override
  @JsonKey(name: "returnable_info")
  ReturnableInfo? get returnableInfo;
  @override
  @JsonKey(name: "is_pre_order")
  int? get isPreOrder;
  @override
  @JsonKey(name: "pre_order_fee")
  int? get preOrderFee;
  @override
  @JsonKey(name: "release_time")
  int? get releaseTime;
  @override
  @JsonKey(name: "pre_order_charging_option_id")
  int? get preOrderChargingOptionId;
  @override
  @JsonKey(name: "takeaway_addon_price")
  int? get takeawayAddonPrice;
  @override
  @JsonKey(name: "parcel_charge")
  int? get parcelCharge;

  /// Create a copy of ProductOrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductOrderItemImplCopyWith<_$ProductOrderItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductCategory _$ProductCategoryFromJson(Map<String, dynamic> json) {
  return _ProductCategory.fromJson(json);
}

/// @nodoc
mixin _$ProductCategory {
  @JsonKey(name: "product_category_id")
  int? get productCategoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "product_id")
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "category_id")
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "category_name")
  String? get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: "category_slug")
  String? get categorySlug => throw _privateConstructorUsedError;
  @JsonKey(name: "category_arabic_name")
  String? get categoryArabicName => throw _privateConstructorUsedError;

  /// Serializes this ProductCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCategoryCopyWith<ProductCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryCopyWith<$Res> {
  factory $ProductCategoryCopyWith(
    ProductCategory value,
    $Res Function(ProductCategory) then,
  ) = _$ProductCategoryCopyWithImpl<$Res, ProductCategory>;
  @useResult
  $Res call({
    @JsonKey(name: "product_category_id") int? productCategoryId,
    @JsonKey(name: "product_id") int? productId,
    @JsonKey(name: "category_id") int? categoryId,
    @JsonKey(name: "category_name") String? categoryName,
    @JsonKey(name: "category_slug") String? categorySlug,
    @JsonKey(name: "category_arabic_name") String? categoryArabicName,
  });
}

/// @nodoc
class _$ProductCategoryCopyWithImpl<$Res, $Val extends ProductCategory>
    implements $ProductCategoryCopyWith<$Res> {
  _$ProductCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productCategoryId = freezed,
    Object? productId = freezed,
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? categorySlug = freezed,
    Object? categoryArabicName = freezed,
  }) {
    return _then(
      _value.copyWith(
            productCategoryId: freezed == productCategoryId
                ? _value.productCategoryId
                : productCategoryId // ignore: cast_nullable_to_non_nullable
                      as int?,
            productId: freezed == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as int?,
            categoryId: freezed == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                      as int?,
            categoryName: freezed == categoryName
                ? _value.categoryName
                : categoryName // ignore: cast_nullable_to_non_nullable
                      as String?,
            categorySlug: freezed == categorySlug
                ? _value.categorySlug
                : categorySlug // ignore: cast_nullable_to_non_nullable
                      as String?,
            categoryArabicName: freezed == categoryArabicName
                ? _value.categoryArabicName
                : categoryArabicName // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductCategoryImplCopyWith<$Res>
    implements $ProductCategoryCopyWith<$Res> {
  factory _$$ProductCategoryImplCopyWith(
    _$ProductCategoryImpl value,
    $Res Function(_$ProductCategoryImpl) then,
  ) = __$$ProductCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "product_category_id") int? productCategoryId,
    @JsonKey(name: "product_id") int? productId,
    @JsonKey(name: "category_id") int? categoryId,
    @JsonKey(name: "category_name") String? categoryName,
    @JsonKey(name: "category_slug") String? categorySlug,
    @JsonKey(name: "category_arabic_name") String? categoryArabicName,
  });
}

/// @nodoc
class __$$ProductCategoryImplCopyWithImpl<$Res>
    extends _$ProductCategoryCopyWithImpl<$Res, _$ProductCategoryImpl>
    implements _$$ProductCategoryImplCopyWith<$Res> {
  __$$ProductCategoryImplCopyWithImpl(
    _$ProductCategoryImpl _value,
    $Res Function(_$ProductCategoryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productCategoryId = freezed,
    Object? productId = freezed,
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? categorySlug = freezed,
    Object? categoryArabicName = freezed,
  }) {
    return _then(
      _$ProductCategoryImpl(
        productCategoryId: freezed == productCategoryId
            ? _value.productCategoryId
            : productCategoryId // ignore: cast_nullable_to_non_nullable
                  as int?,
        productId: freezed == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as int?,
        categoryId: freezed == categoryId
            ? _value.categoryId
            : categoryId // ignore: cast_nullable_to_non_nullable
                  as int?,
        categoryName: freezed == categoryName
            ? _value.categoryName
            : categoryName // ignore: cast_nullable_to_non_nullable
                  as String?,
        categorySlug: freezed == categorySlug
            ? _value.categorySlug
            : categorySlug // ignore: cast_nullable_to_non_nullable
                  as String?,
        categoryArabicName: freezed == categoryArabicName
            ? _value.categoryArabicName
            : categoryArabicName // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductCategoryImpl implements _ProductCategory {
  const _$ProductCategoryImpl({
    @JsonKey(name: "product_category_id") this.productCategoryId,
    @JsonKey(name: "product_id") this.productId,
    @JsonKey(name: "category_id") this.categoryId,
    @JsonKey(name: "category_name") this.categoryName,
    @JsonKey(name: "category_slug") this.categorySlug,
    @JsonKey(name: "category_arabic_name") this.categoryArabicName,
  });

  factory _$ProductCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductCategoryImplFromJson(json);

  @override
  @JsonKey(name: "product_category_id")
  final int? productCategoryId;
  @override
  @JsonKey(name: "product_id")
  final int? productId;
  @override
  @JsonKey(name: "category_id")
  final int? categoryId;
  @override
  @JsonKey(name: "category_name")
  final String? categoryName;
  @override
  @JsonKey(name: "category_slug")
  final String? categorySlug;
  @override
  @JsonKey(name: "category_arabic_name")
  final String? categoryArabicName;

  @override
  String toString() {
    return 'ProductCategory(productCategoryId: $productCategoryId, productId: $productId, categoryId: $categoryId, categoryName: $categoryName, categorySlug: $categorySlug, categoryArabicName: $categoryArabicName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductCategoryImpl &&
            (identical(other.productCategoryId, productCategoryId) ||
                other.productCategoryId == productCategoryId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.categorySlug, categorySlug) ||
                other.categorySlug == categorySlug) &&
            (identical(other.categoryArabicName, categoryArabicName) ||
                other.categoryArabicName == categoryArabicName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    productCategoryId,
    productId,
    categoryId,
    categoryName,
    categorySlug,
    categoryArabicName,
  );

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCategoryImplCopyWith<_$ProductCategoryImpl> get copyWith =>
      __$$ProductCategoryImplCopyWithImpl<_$ProductCategoryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductCategoryImplToJson(this);
  }
}

abstract class _ProductCategory implements ProductCategory {
  const factory _ProductCategory({
    @JsonKey(name: "product_category_id") final int? productCategoryId,
    @JsonKey(name: "product_id") final int? productId,
    @JsonKey(name: "category_id") final int? categoryId,
    @JsonKey(name: "category_name") final String? categoryName,
    @JsonKey(name: "category_slug") final String? categorySlug,
    @JsonKey(name: "category_arabic_name") final String? categoryArabicName,
  }) = _$ProductCategoryImpl;

  factory _ProductCategory.fromJson(Map<String, dynamic> json) =
      _$ProductCategoryImpl.fromJson;

  @override
  @JsonKey(name: "product_category_id")
  int? get productCategoryId;
  @override
  @JsonKey(name: "product_id")
  int? get productId;
  @override
  @JsonKey(name: "category_id")
  int? get categoryId;
  @override
  @JsonKey(name: "category_name")
  String? get categoryName;
  @override
  @JsonKey(name: "category_slug")
  String? get categorySlug;
  @override
  @JsonKey(name: "category_arabic_name")
  String? get categoryArabicName;

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductCategoryImplCopyWith<_$ProductCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReturnableInfo _$ReturnableInfoFromJson(Map<String, dynamic> json) {
  return _ReturnableInfo.fromJson(json);
}

/// @nodoc
mixin _$ReturnableInfo {
  @JsonKey(name: "returnable_period")
  int? get returnablePeriod => throw _privateConstructorUsedError;
  @JsonKey(name: "returnable_expired")
  int? get returnableExpired => throw _privateConstructorUsedError;
  @JsonKey(name: "total_returnable_qty")
  int? get totalReturnableQty => throw _privateConstructorUsedError;
  @JsonKey(name: "total_returned_qty")
  int? get totalReturnedQty => throw _privateConstructorUsedError;
  @JsonKey(name: "return_button_show")
  int? get returnButtonShow => throw _privateConstructorUsedError;
  @JsonKey(name: "return_button_content")
  String? get returnButtonContent => throw _privateConstructorUsedError;
  @JsonKey(name: "return_label")
  String? get returnLabel => throw _privateConstructorUsedError;

  /// Serializes this ReturnableInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReturnableInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReturnableInfoCopyWith<ReturnableInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnableInfoCopyWith<$Res> {
  factory $ReturnableInfoCopyWith(
    ReturnableInfo value,
    $Res Function(ReturnableInfo) then,
  ) = _$ReturnableInfoCopyWithImpl<$Res, ReturnableInfo>;
  @useResult
  $Res call({
    @JsonKey(name: "returnable_period") int? returnablePeriod,
    @JsonKey(name: "returnable_expired") int? returnableExpired,
    @JsonKey(name: "total_returnable_qty") int? totalReturnableQty,
    @JsonKey(name: "total_returned_qty") int? totalReturnedQty,
    @JsonKey(name: "return_button_show") int? returnButtonShow,
    @JsonKey(name: "return_button_content") String? returnButtonContent,
    @JsonKey(name: "return_label") String? returnLabel,
  });
}

/// @nodoc
class _$ReturnableInfoCopyWithImpl<$Res, $Val extends ReturnableInfo>
    implements $ReturnableInfoCopyWith<$Res> {
  _$ReturnableInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReturnableInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? returnablePeriod = freezed,
    Object? returnableExpired = freezed,
    Object? totalReturnableQty = freezed,
    Object? totalReturnedQty = freezed,
    Object? returnButtonShow = freezed,
    Object? returnButtonContent = freezed,
    Object? returnLabel = freezed,
  }) {
    return _then(
      _value.copyWith(
            returnablePeriod: freezed == returnablePeriod
                ? _value.returnablePeriod
                : returnablePeriod // ignore: cast_nullable_to_non_nullable
                      as int?,
            returnableExpired: freezed == returnableExpired
                ? _value.returnableExpired
                : returnableExpired // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalReturnableQty: freezed == totalReturnableQty
                ? _value.totalReturnableQty
                : totalReturnableQty // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalReturnedQty: freezed == totalReturnedQty
                ? _value.totalReturnedQty
                : totalReturnedQty // ignore: cast_nullable_to_non_nullable
                      as int?,
            returnButtonShow: freezed == returnButtonShow
                ? _value.returnButtonShow
                : returnButtonShow // ignore: cast_nullable_to_non_nullable
                      as int?,
            returnButtonContent: freezed == returnButtonContent
                ? _value.returnButtonContent
                : returnButtonContent // ignore: cast_nullable_to_non_nullable
                      as String?,
            returnLabel: freezed == returnLabel
                ? _value.returnLabel
                : returnLabel // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReturnableInfoImplCopyWith<$Res>
    implements $ReturnableInfoCopyWith<$Res> {
  factory _$$ReturnableInfoImplCopyWith(
    _$ReturnableInfoImpl value,
    $Res Function(_$ReturnableInfoImpl) then,
  ) = __$$ReturnableInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "returnable_period") int? returnablePeriod,
    @JsonKey(name: "returnable_expired") int? returnableExpired,
    @JsonKey(name: "total_returnable_qty") int? totalReturnableQty,
    @JsonKey(name: "total_returned_qty") int? totalReturnedQty,
    @JsonKey(name: "return_button_show") int? returnButtonShow,
    @JsonKey(name: "return_button_content") String? returnButtonContent,
    @JsonKey(name: "return_label") String? returnLabel,
  });
}

/// @nodoc
class __$$ReturnableInfoImplCopyWithImpl<$Res>
    extends _$ReturnableInfoCopyWithImpl<$Res, _$ReturnableInfoImpl>
    implements _$$ReturnableInfoImplCopyWith<$Res> {
  __$$ReturnableInfoImplCopyWithImpl(
    _$ReturnableInfoImpl _value,
    $Res Function(_$ReturnableInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReturnableInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? returnablePeriod = freezed,
    Object? returnableExpired = freezed,
    Object? totalReturnableQty = freezed,
    Object? totalReturnedQty = freezed,
    Object? returnButtonShow = freezed,
    Object? returnButtonContent = freezed,
    Object? returnLabel = freezed,
  }) {
    return _then(
      _$ReturnableInfoImpl(
        returnablePeriod: freezed == returnablePeriod
            ? _value.returnablePeriod
            : returnablePeriod // ignore: cast_nullable_to_non_nullable
                  as int?,
        returnableExpired: freezed == returnableExpired
            ? _value.returnableExpired
            : returnableExpired // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalReturnableQty: freezed == totalReturnableQty
            ? _value.totalReturnableQty
            : totalReturnableQty // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalReturnedQty: freezed == totalReturnedQty
            ? _value.totalReturnedQty
            : totalReturnedQty // ignore: cast_nullable_to_non_nullable
                  as int?,
        returnButtonShow: freezed == returnButtonShow
            ? _value.returnButtonShow
            : returnButtonShow // ignore: cast_nullable_to_non_nullable
                  as int?,
        returnButtonContent: freezed == returnButtonContent
            ? _value.returnButtonContent
            : returnButtonContent // ignore: cast_nullable_to_non_nullable
                  as String?,
        returnLabel: freezed == returnLabel
            ? _value.returnLabel
            : returnLabel // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReturnableInfoImpl implements _ReturnableInfo {
  const _$ReturnableInfoImpl({
    @JsonKey(name: "returnable_period") this.returnablePeriod,
    @JsonKey(name: "returnable_expired") this.returnableExpired,
    @JsonKey(name: "total_returnable_qty") this.totalReturnableQty,
    @JsonKey(name: "total_returned_qty") this.totalReturnedQty,
    @JsonKey(name: "return_button_show") this.returnButtonShow,
    @JsonKey(name: "return_button_content") this.returnButtonContent,
    @JsonKey(name: "return_label") this.returnLabel,
  });

  factory _$ReturnableInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReturnableInfoImplFromJson(json);

  @override
  @JsonKey(name: "returnable_period")
  final int? returnablePeriod;
  @override
  @JsonKey(name: "returnable_expired")
  final int? returnableExpired;
  @override
  @JsonKey(name: "total_returnable_qty")
  final int? totalReturnableQty;
  @override
  @JsonKey(name: "total_returned_qty")
  final int? totalReturnedQty;
  @override
  @JsonKey(name: "return_button_show")
  final int? returnButtonShow;
  @override
  @JsonKey(name: "return_button_content")
  final String? returnButtonContent;
  @override
  @JsonKey(name: "return_label")
  final String? returnLabel;

  @override
  String toString() {
    return 'ReturnableInfo(returnablePeriod: $returnablePeriod, returnableExpired: $returnableExpired, totalReturnableQty: $totalReturnableQty, totalReturnedQty: $totalReturnedQty, returnButtonShow: $returnButtonShow, returnButtonContent: $returnButtonContent, returnLabel: $returnLabel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReturnableInfoImpl &&
            (identical(other.returnablePeriod, returnablePeriod) ||
                other.returnablePeriod == returnablePeriod) &&
            (identical(other.returnableExpired, returnableExpired) ||
                other.returnableExpired == returnableExpired) &&
            (identical(other.totalReturnableQty, totalReturnableQty) ||
                other.totalReturnableQty == totalReturnableQty) &&
            (identical(other.totalReturnedQty, totalReturnedQty) ||
                other.totalReturnedQty == totalReturnedQty) &&
            (identical(other.returnButtonShow, returnButtonShow) ||
                other.returnButtonShow == returnButtonShow) &&
            (identical(other.returnButtonContent, returnButtonContent) ||
                other.returnButtonContent == returnButtonContent) &&
            (identical(other.returnLabel, returnLabel) ||
                other.returnLabel == returnLabel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    returnablePeriod,
    returnableExpired,
    totalReturnableQty,
    totalReturnedQty,
    returnButtonShow,
    returnButtonContent,
    returnLabel,
  );

  /// Create a copy of ReturnableInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReturnableInfoImplCopyWith<_$ReturnableInfoImpl> get copyWith =>
      __$$ReturnableInfoImplCopyWithImpl<_$ReturnableInfoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ReturnableInfoImplToJson(this);
  }
}

abstract class _ReturnableInfo implements ReturnableInfo {
  const factory _ReturnableInfo({
    @JsonKey(name: "returnable_period") final int? returnablePeriod,
    @JsonKey(name: "returnable_expired") final int? returnableExpired,
    @JsonKey(name: "total_returnable_qty") final int? totalReturnableQty,
    @JsonKey(name: "total_returned_qty") final int? totalReturnedQty,
    @JsonKey(name: "return_button_show") final int? returnButtonShow,
    @JsonKey(name: "return_button_content") final String? returnButtonContent,
    @JsonKey(name: "return_label") final String? returnLabel,
  }) = _$ReturnableInfoImpl;

  factory _ReturnableInfo.fromJson(Map<String, dynamic> json) =
      _$ReturnableInfoImpl.fromJson;

  @override
  @JsonKey(name: "returnable_period")
  int? get returnablePeriod;
  @override
  @JsonKey(name: "returnable_expired")
  int? get returnableExpired;
  @override
  @JsonKey(name: "total_returnable_qty")
  int? get totalReturnableQty;
  @override
  @JsonKey(name: "total_returned_qty")
  int? get totalReturnedQty;
  @override
  @JsonKey(name: "return_button_show")
  int? get returnButtonShow;
  @override
  @JsonKey(name: "return_button_content")
  String? get returnButtonContent;
  @override
  @JsonKey(name: "return_label")
  String? get returnLabel;

  /// Create a copy of ReturnableInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReturnableInfoImplCopyWith<_$ReturnableInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Variant _$VariantFromJson(Map<String, dynamic> json) {
  return _Variant.fromJson(json);
}

/// @nodoc
mixin _$Variant {
  @JsonKey(name: "attributes")
  List<Attribute>? get attributes => throw _privateConstructorUsedError;
  @JsonKey(name: "attributeValues")
  String? get attributeValues => throw _privateConstructorUsedError;
  @JsonKey(name: "product_id")
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_var_code", fromJson: parseInt)
  int? get prodVarCode => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_var_id")
  int? get prodVarId => throw _privateConstructorUsedError;
  @JsonKey(name: "var_name")
  String? get varName => throw _privateConstructorUsedError;
  @JsonKey(name: "var_arabic_name")
  String? get varArabicName => throw _privateConstructorUsedError;
  @JsonKey(name: "var_stock_qty")
  int? get varStockQty => throw _privateConstructorUsedError;
  @JsonKey(name: "var_tax_amt")
  dynamic get varTaxAmt => throw _privateConstructorUsedError;
  @JsonKey(name: "var_tax_inclusive")
  dynamic get varTaxInclusive => throw _privateConstructorUsedError;
  @JsonKey(name: "var_tax_percentage")
  dynamic get varTaxPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: "var_taxable")
  dynamic get varTaxable => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_price")
  int? get variantPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "var_offerPrice")
  int? get varOfferPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "v_offer_to_date")
  int? get vOfferToDate => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_price_percentage")
  String? get offerPricePercentage => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_images")
  List<dynamic>? get variantImages => throw _privateConstructorUsedError;
  @JsonKey(name: "v_add_to_cart")
  bool? get vAddToCart => throw _privateConstructorUsedError;
  @JsonKey(name: "v_qty")
  int? get vQty => throw _privateConstructorUsedError;
  @JsonKey(name: "w_cart_services")
  List<dynamic>? get wCartServices => throw _privateConstructorUsedError;

  /// Serializes this Variant to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Variant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VariantCopyWith<Variant> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantCopyWith<$Res> {
  factory $VariantCopyWith(Variant value, $Res Function(Variant) then) =
      _$VariantCopyWithImpl<$Res, Variant>;
  @useResult
  $Res call({
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
    @JsonKey(name: "v_offer_to_date") int? vOfferToDate,
    @JsonKey(name: "offer_price_percentage") String? offerPricePercentage,
    @JsonKey(name: "variant_images") List<dynamic>? variantImages,
    @JsonKey(name: "v_add_to_cart") bool? vAddToCart,
    @JsonKey(name: "v_qty") int? vQty,
    @JsonKey(name: "w_cart_services") List<dynamic>? wCartServices,
  });
}

/// @nodoc
class _$VariantCopyWithImpl<$Res, $Val extends Variant>
    implements $VariantCopyWith<$Res> {
  _$VariantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Variant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributes = freezed,
    Object? attributeValues = freezed,
    Object? productId = freezed,
    Object? prodVarCode = freezed,
    Object? prodVarId = freezed,
    Object? varName = freezed,
    Object? varArabicName = freezed,
    Object? varStockQty = freezed,
    Object? varTaxAmt = freezed,
    Object? varTaxInclusive = freezed,
    Object? varTaxPercentage = freezed,
    Object? varTaxable = freezed,
    Object? variantPrice = freezed,
    Object? varOfferPrice = freezed,
    Object? vOfferToDate = freezed,
    Object? offerPricePercentage = freezed,
    Object? variantImages = freezed,
    Object? vAddToCart = freezed,
    Object? vQty = freezed,
    Object? wCartServices = freezed,
  }) {
    return _then(
      _value.copyWith(
            attributes: freezed == attributes
                ? _value.attributes
                : attributes // ignore: cast_nullable_to_non_nullable
                      as List<Attribute>?,
            attributeValues: freezed == attributeValues
                ? _value.attributeValues
                : attributeValues // ignore: cast_nullable_to_non_nullable
                      as String?,
            productId: freezed == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as int?,
            prodVarCode: freezed == prodVarCode
                ? _value.prodVarCode
                : prodVarCode // ignore: cast_nullable_to_non_nullable
                      as int?,
            prodVarId: freezed == prodVarId
                ? _value.prodVarId
                : prodVarId // ignore: cast_nullable_to_non_nullable
                      as int?,
            varName: freezed == varName
                ? _value.varName
                : varName // ignore: cast_nullable_to_non_nullable
                      as String?,
            varArabicName: freezed == varArabicName
                ? _value.varArabicName
                : varArabicName // ignore: cast_nullable_to_non_nullable
                      as String?,
            varStockQty: freezed == varStockQty
                ? _value.varStockQty
                : varStockQty // ignore: cast_nullable_to_non_nullable
                      as int?,
            varTaxAmt: freezed == varTaxAmt
                ? _value.varTaxAmt
                : varTaxAmt // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            varTaxInclusive: freezed == varTaxInclusive
                ? _value.varTaxInclusive
                : varTaxInclusive // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            varTaxPercentage: freezed == varTaxPercentage
                ? _value.varTaxPercentage
                : varTaxPercentage // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            varTaxable: freezed == varTaxable
                ? _value.varTaxable
                : varTaxable // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            variantPrice: freezed == variantPrice
                ? _value.variantPrice
                : variantPrice // ignore: cast_nullable_to_non_nullable
                      as int?,
            varOfferPrice: freezed == varOfferPrice
                ? _value.varOfferPrice
                : varOfferPrice // ignore: cast_nullable_to_non_nullable
                      as int?,
            vOfferToDate: freezed == vOfferToDate
                ? _value.vOfferToDate
                : vOfferToDate // ignore: cast_nullable_to_non_nullable
                      as int?,
            offerPricePercentage: freezed == offerPricePercentage
                ? _value.offerPricePercentage
                : offerPricePercentage // ignore: cast_nullable_to_non_nullable
                      as String?,
            variantImages: freezed == variantImages
                ? _value.variantImages
                : variantImages // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            vAddToCart: freezed == vAddToCart
                ? _value.vAddToCart
                : vAddToCart // ignore: cast_nullable_to_non_nullable
                      as bool?,
            vQty: freezed == vQty
                ? _value.vQty
                : vQty // ignore: cast_nullable_to_non_nullable
                      as int?,
            wCartServices: freezed == wCartServices
                ? _value.wCartServices
                : wCartServices // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VariantImplCopyWith<$Res> implements $VariantCopyWith<$Res> {
  factory _$$VariantImplCopyWith(
    _$VariantImpl value,
    $Res Function(_$VariantImpl) then,
  ) = __$$VariantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
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
    @JsonKey(name: "v_offer_to_date") int? vOfferToDate,
    @JsonKey(name: "offer_price_percentage") String? offerPricePercentage,
    @JsonKey(name: "variant_images") List<dynamic>? variantImages,
    @JsonKey(name: "v_add_to_cart") bool? vAddToCart,
    @JsonKey(name: "v_qty") int? vQty,
    @JsonKey(name: "w_cart_services") List<dynamic>? wCartServices,
  });
}

/// @nodoc
class __$$VariantImplCopyWithImpl<$Res>
    extends _$VariantCopyWithImpl<$Res, _$VariantImpl>
    implements _$$VariantImplCopyWith<$Res> {
  __$$VariantImplCopyWithImpl(
    _$VariantImpl _value,
    $Res Function(_$VariantImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Variant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributes = freezed,
    Object? attributeValues = freezed,
    Object? productId = freezed,
    Object? prodVarCode = freezed,
    Object? prodVarId = freezed,
    Object? varName = freezed,
    Object? varArabicName = freezed,
    Object? varStockQty = freezed,
    Object? varTaxAmt = freezed,
    Object? varTaxInclusive = freezed,
    Object? varTaxPercentage = freezed,
    Object? varTaxable = freezed,
    Object? variantPrice = freezed,
    Object? varOfferPrice = freezed,
    Object? vOfferToDate = freezed,
    Object? offerPricePercentage = freezed,
    Object? variantImages = freezed,
    Object? vAddToCart = freezed,
    Object? vQty = freezed,
    Object? wCartServices = freezed,
  }) {
    return _then(
      _$VariantImpl(
        attributes: freezed == attributes
            ? _value._attributes
            : attributes // ignore: cast_nullable_to_non_nullable
                  as List<Attribute>?,
        attributeValues: freezed == attributeValues
            ? _value.attributeValues
            : attributeValues // ignore: cast_nullable_to_non_nullable
                  as String?,
        productId: freezed == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as int?,
        prodVarCode: freezed == prodVarCode
            ? _value.prodVarCode
            : prodVarCode // ignore: cast_nullable_to_non_nullable
                  as int?,
        prodVarId: freezed == prodVarId
            ? _value.prodVarId
            : prodVarId // ignore: cast_nullable_to_non_nullable
                  as int?,
        varName: freezed == varName
            ? _value.varName
            : varName // ignore: cast_nullable_to_non_nullable
                  as String?,
        varArabicName: freezed == varArabicName
            ? _value.varArabicName
            : varArabicName // ignore: cast_nullable_to_non_nullable
                  as String?,
        varStockQty: freezed == varStockQty
            ? _value.varStockQty
            : varStockQty // ignore: cast_nullable_to_non_nullable
                  as int?,
        varTaxAmt: freezed == varTaxAmt
            ? _value.varTaxAmt
            : varTaxAmt // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        varTaxInclusive: freezed == varTaxInclusive
            ? _value.varTaxInclusive
            : varTaxInclusive // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        varTaxPercentage: freezed == varTaxPercentage
            ? _value.varTaxPercentage
            : varTaxPercentage // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        varTaxable: freezed == varTaxable
            ? _value.varTaxable
            : varTaxable // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        variantPrice: freezed == variantPrice
            ? _value.variantPrice
            : variantPrice // ignore: cast_nullable_to_non_nullable
                  as int?,
        varOfferPrice: freezed == varOfferPrice
            ? _value.varOfferPrice
            : varOfferPrice // ignore: cast_nullable_to_non_nullable
                  as int?,
        vOfferToDate: freezed == vOfferToDate
            ? _value.vOfferToDate
            : vOfferToDate // ignore: cast_nullable_to_non_nullable
                  as int?,
        offerPricePercentage: freezed == offerPricePercentage
            ? _value.offerPricePercentage
            : offerPricePercentage // ignore: cast_nullable_to_non_nullable
                  as String?,
        variantImages: freezed == variantImages
            ? _value._variantImages
            : variantImages // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        vAddToCart: freezed == vAddToCart
            ? _value.vAddToCart
            : vAddToCart // ignore: cast_nullable_to_non_nullable
                  as bool?,
        vQty: freezed == vQty
            ? _value.vQty
            : vQty // ignore: cast_nullable_to_non_nullable
                  as int?,
        wCartServices: freezed == wCartServices
            ? _value._wCartServices
            : wCartServices // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VariantImpl implements _Variant {
  const _$VariantImpl({
    @JsonKey(name: "attributes") final List<Attribute>? attributes,
    @JsonKey(name: "attributeValues") this.attributeValues,
    @JsonKey(name: "product_id") this.productId,
    @JsonKey(name: "prod_var_code", fromJson: parseInt) this.prodVarCode,
    @JsonKey(name: "prod_var_id") this.prodVarId,
    @JsonKey(name: "var_name") this.varName,
    @JsonKey(name: "var_arabic_name") this.varArabicName,
    @JsonKey(name: "var_stock_qty") this.varStockQty,
    @JsonKey(name: "var_tax_amt") this.varTaxAmt,
    @JsonKey(name: "var_tax_inclusive") this.varTaxInclusive,
    @JsonKey(name: "var_tax_percentage") this.varTaxPercentage,
    @JsonKey(name: "var_taxable") this.varTaxable,
    @JsonKey(name: "variant_price") this.variantPrice,
    @JsonKey(name: "var_offerPrice") this.varOfferPrice,
    @JsonKey(name: "v_offer_to_date") this.vOfferToDate,
    @JsonKey(name: "offer_price_percentage") this.offerPricePercentage,
    @JsonKey(name: "variant_images") final List<dynamic>? variantImages,
    @JsonKey(name: "v_add_to_cart") this.vAddToCart,
    @JsonKey(name: "v_qty") this.vQty,
    @JsonKey(name: "w_cart_services") final List<dynamic>? wCartServices,
  }) : _attributes = attributes,
       _variantImages = variantImages,
       _wCartServices = wCartServices;

  factory _$VariantImpl.fromJson(Map<String, dynamic> json) =>
      _$$VariantImplFromJson(json);

  final List<Attribute>? _attributes;
  @override
  @JsonKey(name: "attributes")
  List<Attribute>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "attributeValues")
  final String? attributeValues;
  @override
  @JsonKey(name: "product_id")
  final int? productId;
  @override
  @JsonKey(name: "prod_var_code", fromJson: parseInt)
  final int? prodVarCode;
  @override
  @JsonKey(name: "prod_var_id")
  final int? prodVarId;
  @override
  @JsonKey(name: "var_name")
  final String? varName;
  @override
  @JsonKey(name: "var_arabic_name")
  final String? varArabicName;
  @override
  @JsonKey(name: "var_stock_qty")
  final int? varStockQty;
  @override
  @JsonKey(name: "var_tax_amt")
  final dynamic varTaxAmt;
  @override
  @JsonKey(name: "var_tax_inclusive")
  final dynamic varTaxInclusive;
  @override
  @JsonKey(name: "var_tax_percentage")
  final dynamic varTaxPercentage;
  @override
  @JsonKey(name: "var_taxable")
  final dynamic varTaxable;
  @override
  @JsonKey(name: "variant_price")
  final int? variantPrice;
  @override
  @JsonKey(name: "var_offerPrice")
  final int? varOfferPrice;
  @override
  @JsonKey(name: "v_offer_to_date")
  final int? vOfferToDate;
  @override
  @JsonKey(name: "offer_price_percentage")
  final String? offerPricePercentage;
  final List<dynamic>? _variantImages;
  @override
  @JsonKey(name: "variant_images")
  List<dynamic>? get variantImages {
    final value = _variantImages;
    if (value == null) return null;
    if (_variantImages is EqualUnmodifiableListView) return _variantImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "v_add_to_cart")
  final bool? vAddToCart;
  @override
  @JsonKey(name: "v_qty")
  final int? vQty;
  final List<dynamic>? _wCartServices;
  @override
  @JsonKey(name: "w_cart_services")
  List<dynamic>? get wCartServices {
    final value = _wCartServices;
    if (value == null) return null;
    if (_wCartServices is EqualUnmodifiableListView) return _wCartServices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Variant(attributes: $attributes, attributeValues: $attributeValues, productId: $productId, prodVarCode: $prodVarCode, prodVarId: $prodVarId, varName: $varName, varArabicName: $varArabicName, varStockQty: $varStockQty, varTaxAmt: $varTaxAmt, varTaxInclusive: $varTaxInclusive, varTaxPercentage: $varTaxPercentage, varTaxable: $varTaxable, variantPrice: $variantPrice, varOfferPrice: $varOfferPrice, vOfferToDate: $vOfferToDate, offerPricePercentage: $offerPricePercentage, variantImages: $variantImages, vAddToCart: $vAddToCart, vQty: $vQty, wCartServices: $wCartServices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariantImpl &&
            const DeepCollectionEquality().equals(
              other._attributes,
              _attributes,
            ) &&
            (identical(other.attributeValues, attributeValues) ||
                other.attributeValues == attributeValues) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.prodVarCode, prodVarCode) ||
                other.prodVarCode == prodVarCode) &&
            (identical(other.prodVarId, prodVarId) ||
                other.prodVarId == prodVarId) &&
            (identical(other.varName, varName) || other.varName == varName) &&
            (identical(other.varArabicName, varArabicName) ||
                other.varArabicName == varArabicName) &&
            (identical(other.varStockQty, varStockQty) ||
                other.varStockQty == varStockQty) &&
            const DeepCollectionEquality().equals(other.varTaxAmt, varTaxAmt) &&
            const DeepCollectionEquality().equals(
              other.varTaxInclusive,
              varTaxInclusive,
            ) &&
            const DeepCollectionEquality().equals(
              other.varTaxPercentage,
              varTaxPercentage,
            ) &&
            const DeepCollectionEquality().equals(
              other.varTaxable,
              varTaxable,
            ) &&
            (identical(other.variantPrice, variantPrice) ||
                other.variantPrice == variantPrice) &&
            (identical(other.varOfferPrice, varOfferPrice) ||
                other.varOfferPrice == varOfferPrice) &&
            (identical(other.vOfferToDate, vOfferToDate) ||
                other.vOfferToDate == vOfferToDate) &&
            (identical(other.offerPricePercentage, offerPricePercentage) ||
                other.offerPricePercentage == offerPricePercentage) &&
            const DeepCollectionEquality().equals(
              other._variantImages,
              _variantImages,
            ) &&
            (identical(other.vAddToCart, vAddToCart) ||
                other.vAddToCart == vAddToCart) &&
            (identical(other.vQty, vQty) || other.vQty == vQty) &&
            const DeepCollectionEquality().equals(
              other._wCartServices,
              _wCartServices,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    const DeepCollectionEquality().hash(_attributes),
    attributeValues,
    productId,
    prodVarCode,
    prodVarId,
    varName,
    varArabicName,
    varStockQty,
    const DeepCollectionEquality().hash(varTaxAmt),
    const DeepCollectionEquality().hash(varTaxInclusive),
    const DeepCollectionEquality().hash(varTaxPercentage),
    const DeepCollectionEquality().hash(varTaxable),
    variantPrice,
    varOfferPrice,
    vOfferToDate,
    offerPricePercentage,
    const DeepCollectionEquality().hash(_variantImages),
    vAddToCart,
    vQty,
    const DeepCollectionEquality().hash(_wCartServices),
  ]);

  /// Create a copy of Variant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VariantImplCopyWith<_$VariantImpl> get copyWith =>
      __$$VariantImplCopyWithImpl<_$VariantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VariantImplToJson(this);
  }
}

abstract class _Variant implements Variant {
  const factory _Variant({
    @JsonKey(name: "attributes") final List<Attribute>? attributes,
    @JsonKey(name: "attributeValues") final String? attributeValues,
    @JsonKey(name: "product_id") final int? productId,
    @JsonKey(name: "prod_var_code", fromJson: parseInt) final int? prodVarCode,
    @JsonKey(name: "prod_var_id") final int? prodVarId,
    @JsonKey(name: "var_name") final String? varName,
    @JsonKey(name: "var_arabic_name") final String? varArabicName,
    @JsonKey(name: "var_stock_qty") final int? varStockQty,
    @JsonKey(name: "var_tax_amt") final dynamic varTaxAmt,
    @JsonKey(name: "var_tax_inclusive") final dynamic varTaxInclusive,
    @JsonKey(name: "var_tax_percentage") final dynamic varTaxPercentage,
    @JsonKey(name: "var_taxable") final dynamic varTaxable,
    @JsonKey(name: "variant_price") final int? variantPrice,
    @JsonKey(name: "var_offerPrice") final int? varOfferPrice,
    @JsonKey(name: "v_offer_to_date") final int? vOfferToDate,
    @JsonKey(name: "offer_price_percentage") final String? offerPricePercentage,
    @JsonKey(name: "variant_images") final List<dynamic>? variantImages,
    @JsonKey(name: "v_add_to_cart") final bool? vAddToCart,
    @JsonKey(name: "v_qty") final int? vQty,
    @JsonKey(name: "w_cart_services") final List<dynamic>? wCartServices,
  }) = _$VariantImpl;

  factory _Variant.fromJson(Map<String, dynamic> json) = _$VariantImpl.fromJson;

  @override
  @JsonKey(name: "attributes")
  List<Attribute>? get attributes;
  @override
  @JsonKey(name: "attributeValues")
  String? get attributeValues;
  @override
  @JsonKey(name: "product_id")
  int? get productId;
  @override
  @JsonKey(name: "prod_var_code", fromJson: parseInt)
  int? get prodVarCode;
  @override
  @JsonKey(name: "prod_var_id")
  int? get prodVarId;
  @override
  @JsonKey(name: "var_name")
  String? get varName;
  @override
  @JsonKey(name: "var_arabic_name")
  String? get varArabicName;
  @override
  @JsonKey(name: "var_stock_qty")
  int? get varStockQty;
  @override
  @JsonKey(name: "var_tax_amt")
  dynamic get varTaxAmt;
  @override
  @JsonKey(name: "var_tax_inclusive")
  dynamic get varTaxInclusive;
  @override
  @JsonKey(name: "var_tax_percentage")
  dynamic get varTaxPercentage;
  @override
  @JsonKey(name: "var_taxable")
  dynamic get varTaxable;
  @override
  @JsonKey(name: "variant_price")
  int? get variantPrice;
  @override
  @JsonKey(name: "var_offerPrice")
  int? get varOfferPrice;
  @override
  @JsonKey(name: "v_offer_to_date")
  int? get vOfferToDate;
  @override
  @JsonKey(name: "offer_price_percentage")
  String? get offerPricePercentage;
  @override
  @JsonKey(name: "variant_images")
  List<dynamic>? get variantImages;
  @override
  @JsonKey(name: "v_add_to_cart")
  bool? get vAddToCart;
  @override
  @JsonKey(name: "v_qty")
  int? get vQty;
  @override
  @JsonKey(name: "w_cart_services")
  List<dynamic>? get wCartServices;

  /// Create a copy of Variant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VariantImplCopyWith<_$VariantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Attribute _$AttributeFromJson(Map<String, dynamic> json) {
  return _Attribute.fromJson(json);
}

/// @nodoc
mixin _$Attribute {
  @JsonKey(name: "att_id")
  int? get attId => throw _privateConstructorUsedError;
  @JsonKey(name: "att_name")
  String? get attName => throw _privateConstructorUsedError;
  @JsonKey(name: "atr_value_id")
  int? get atrValueId => throw _privateConstructorUsedError;
  @JsonKey(name: "att_value")
  String? get attValue => throw _privateConstructorUsedError;
  @JsonKey(name: "checked")
  int? get checked => throw _privateConstructorUsedError;

  /// Serializes this Attribute to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Attribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttributeCopyWith<Attribute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeCopyWith<$Res> {
  factory $AttributeCopyWith(Attribute value, $Res Function(Attribute) then) =
      _$AttributeCopyWithImpl<$Res, Attribute>;
  @useResult
  $Res call({
    @JsonKey(name: "att_id") int? attId,
    @JsonKey(name: "att_name") String? attName,
    @JsonKey(name: "atr_value_id") int? atrValueId,
    @JsonKey(name: "att_value") String? attValue,
    @JsonKey(name: "checked") int? checked,
  });
}

/// @nodoc
class _$AttributeCopyWithImpl<$Res, $Val extends Attribute>
    implements $AttributeCopyWith<$Res> {
  _$AttributeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Attribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attId = freezed,
    Object? attName = freezed,
    Object? atrValueId = freezed,
    Object? attValue = freezed,
    Object? checked = freezed,
  }) {
    return _then(
      _value.copyWith(
            attId: freezed == attId
                ? _value.attId
                : attId // ignore: cast_nullable_to_non_nullable
                      as int?,
            attName: freezed == attName
                ? _value.attName
                : attName // ignore: cast_nullable_to_non_nullable
                      as String?,
            atrValueId: freezed == atrValueId
                ? _value.atrValueId
                : atrValueId // ignore: cast_nullable_to_non_nullable
                      as int?,
            attValue: freezed == attValue
                ? _value.attValue
                : attValue // ignore: cast_nullable_to_non_nullable
                      as String?,
            checked: freezed == checked
                ? _value.checked
                : checked // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AttributeImplCopyWith<$Res>
    implements $AttributeCopyWith<$Res> {
  factory _$$AttributeImplCopyWith(
    _$AttributeImpl value,
    $Res Function(_$AttributeImpl) then,
  ) = __$$AttributeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "att_id") int? attId,
    @JsonKey(name: "att_name") String? attName,
    @JsonKey(name: "atr_value_id") int? atrValueId,
    @JsonKey(name: "att_value") String? attValue,
    @JsonKey(name: "checked") int? checked,
  });
}

/// @nodoc
class __$$AttributeImplCopyWithImpl<$Res>
    extends _$AttributeCopyWithImpl<$Res, _$AttributeImpl>
    implements _$$AttributeImplCopyWith<$Res> {
  __$$AttributeImplCopyWithImpl(
    _$AttributeImpl _value,
    $Res Function(_$AttributeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Attribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attId = freezed,
    Object? attName = freezed,
    Object? atrValueId = freezed,
    Object? attValue = freezed,
    Object? checked = freezed,
  }) {
    return _then(
      _$AttributeImpl(
        attId: freezed == attId
            ? _value.attId
            : attId // ignore: cast_nullable_to_non_nullable
                  as int?,
        attName: freezed == attName
            ? _value.attName
            : attName // ignore: cast_nullable_to_non_nullable
                  as String?,
        atrValueId: freezed == atrValueId
            ? _value.atrValueId
            : atrValueId // ignore: cast_nullable_to_non_nullable
                  as int?,
        attValue: freezed == attValue
            ? _value.attValue
            : attValue // ignore: cast_nullable_to_non_nullable
                  as String?,
        checked: freezed == checked
            ? _value.checked
            : checked // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AttributeImpl implements _Attribute {
  const _$AttributeImpl({
    @JsonKey(name: "att_id") this.attId,
    @JsonKey(name: "att_name") this.attName,
    @JsonKey(name: "atr_value_id") this.atrValueId,
    @JsonKey(name: "att_value") this.attValue,
    @JsonKey(name: "checked") this.checked,
  });

  factory _$AttributeImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributeImplFromJson(json);

  @override
  @JsonKey(name: "att_id")
  final int? attId;
  @override
  @JsonKey(name: "att_name")
  final String? attName;
  @override
  @JsonKey(name: "atr_value_id")
  final int? atrValueId;
  @override
  @JsonKey(name: "att_value")
  final String? attValue;
  @override
  @JsonKey(name: "checked")
  final int? checked;

  @override
  String toString() {
    return 'Attribute(attId: $attId, attName: $attName, atrValueId: $atrValueId, attValue: $attValue, checked: $checked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributeImpl &&
            (identical(other.attId, attId) || other.attId == attId) &&
            (identical(other.attName, attName) || other.attName == attName) &&
            (identical(other.atrValueId, atrValueId) ||
                other.atrValueId == atrValueId) &&
            (identical(other.attValue, attValue) ||
                other.attValue == attValue) &&
            (identical(other.checked, checked) || other.checked == checked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, attId, attName, atrValueId, attValue, checked);

  /// Create a copy of Attribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributeImplCopyWith<_$AttributeImpl> get copyWith =>
      __$$AttributeImplCopyWithImpl<_$AttributeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttributeImplToJson(this);
  }
}

abstract class _Attribute implements Attribute {
  const factory _Attribute({
    @JsonKey(name: "att_id") final int? attId,
    @JsonKey(name: "att_name") final String? attName,
    @JsonKey(name: "atr_value_id") final int? atrValueId,
    @JsonKey(name: "att_value") final String? attValue,
    @JsonKey(name: "checked") final int? checked,
  }) = _$AttributeImpl;

  factory _Attribute.fromJson(Map<String, dynamic> json) =
      _$AttributeImpl.fromJson;

  @override
  @JsonKey(name: "att_id")
  int? get attId;
  @override
  @JsonKey(name: "att_name")
  String? get attName;
  @override
  @JsonKey(name: "atr_value_id")
  int? get atrValueId;
  @override
  @JsonKey(name: "att_value")
  String? get attValue;
  @override
  @JsonKey(name: "checked")
  int? get checked;

  /// Create a copy of Attribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttributeImplCopyWith<_$AttributeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Store _$StoreFromJson(Map<String, dynamic> json) {
  return _Store.fromJson(json);
}

/// @nodoc
mixin _$Store {
  @JsonKey(name: "store_name")
  String? get storeName => throw _privateConstructorUsedError;
  @JsonKey(name: "store_address")
  String? get storeAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "ui_design_id")
  int? get uiDesignId => throw _privateConstructorUsedError;
  @JsonKey(name: "item_wise_cancel")
  int? get itemWiseCancel => throw _privateConstructorUsedError;
  @JsonKey(name: "item_wise_add")
  int? get itemWiseAdd => throw _privateConstructorUsedError;

  /// Serializes this Store to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreCopyWith<Store> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreCopyWith<$Res> {
  factory $StoreCopyWith(Store value, $Res Function(Store) then) =
      _$StoreCopyWithImpl<$Res, Store>;
  @useResult
  $Res call({
    @JsonKey(name: "store_name") String? storeName,
    @JsonKey(name: "store_address") String? storeAddress,
    @JsonKey(name: "ui_design_id") int? uiDesignId,
    @JsonKey(name: "item_wise_cancel") int? itemWiseCancel,
    @JsonKey(name: "item_wise_add") int? itemWiseAdd,
  });
}

/// @nodoc
class _$StoreCopyWithImpl<$Res, $Val extends Store>
    implements $StoreCopyWith<$Res> {
  _$StoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeName = freezed,
    Object? storeAddress = freezed,
    Object? uiDesignId = freezed,
    Object? itemWiseCancel = freezed,
    Object? itemWiseAdd = freezed,
  }) {
    return _then(
      _value.copyWith(
            storeName: freezed == storeName
                ? _value.storeName
                : storeName // ignore: cast_nullable_to_non_nullable
                      as String?,
            storeAddress: freezed == storeAddress
                ? _value.storeAddress
                : storeAddress // ignore: cast_nullable_to_non_nullable
                      as String?,
            uiDesignId: freezed == uiDesignId
                ? _value.uiDesignId
                : uiDesignId // ignore: cast_nullable_to_non_nullable
                      as int?,
            itemWiseCancel: freezed == itemWiseCancel
                ? _value.itemWiseCancel
                : itemWiseCancel // ignore: cast_nullable_to_non_nullable
                      as int?,
            itemWiseAdd: freezed == itemWiseAdd
                ? _value.itemWiseAdd
                : itemWiseAdd // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StoreImplCopyWith<$Res> implements $StoreCopyWith<$Res> {
  factory _$$StoreImplCopyWith(
    _$StoreImpl value,
    $Res Function(_$StoreImpl) then,
  ) = __$$StoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "store_name") String? storeName,
    @JsonKey(name: "store_address") String? storeAddress,
    @JsonKey(name: "ui_design_id") int? uiDesignId,
    @JsonKey(name: "item_wise_cancel") int? itemWiseCancel,
    @JsonKey(name: "item_wise_add") int? itemWiseAdd,
  });
}

/// @nodoc
class __$$StoreImplCopyWithImpl<$Res>
    extends _$StoreCopyWithImpl<$Res, _$StoreImpl>
    implements _$$StoreImplCopyWith<$Res> {
  __$$StoreImplCopyWithImpl(
    _$StoreImpl _value,
    $Res Function(_$StoreImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeName = freezed,
    Object? storeAddress = freezed,
    Object? uiDesignId = freezed,
    Object? itemWiseCancel = freezed,
    Object? itemWiseAdd = freezed,
  }) {
    return _then(
      _$StoreImpl(
        storeName: freezed == storeName
            ? _value.storeName
            : storeName // ignore: cast_nullable_to_non_nullable
                  as String?,
        storeAddress: freezed == storeAddress
            ? _value.storeAddress
            : storeAddress // ignore: cast_nullable_to_non_nullable
                  as String?,
        uiDesignId: freezed == uiDesignId
            ? _value.uiDesignId
            : uiDesignId // ignore: cast_nullable_to_non_nullable
                  as int?,
        itemWiseCancel: freezed == itemWiseCancel
            ? _value.itemWiseCancel
            : itemWiseCancel // ignore: cast_nullable_to_non_nullable
                  as int?,
        itemWiseAdd: freezed == itemWiseAdd
            ? _value.itemWiseAdd
            : itemWiseAdd // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreImpl implements _Store {
  const _$StoreImpl({
    @JsonKey(name: "store_name") this.storeName,
    @JsonKey(name: "store_address") this.storeAddress,
    @JsonKey(name: "ui_design_id") this.uiDesignId,
    @JsonKey(name: "item_wise_cancel") this.itemWiseCancel,
    @JsonKey(name: "item_wise_add") this.itemWiseAdd,
  });

  factory _$StoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreImplFromJson(json);

  @override
  @JsonKey(name: "store_name")
  final String? storeName;
  @override
  @JsonKey(name: "store_address")
  final String? storeAddress;
  @override
  @JsonKey(name: "ui_design_id")
  final int? uiDesignId;
  @override
  @JsonKey(name: "item_wise_cancel")
  final int? itemWiseCancel;
  @override
  @JsonKey(name: "item_wise_add")
  final int? itemWiseAdd;

  @override
  String toString() {
    return 'Store(storeName: $storeName, storeAddress: $storeAddress, uiDesignId: $uiDesignId, itemWiseCancel: $itemWiseCancel, itemWiseAdd: $itemWiseAdd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreImpl &&
            (identical(other.storeName, storeName) ||
                other.storeName == storeName) &&
            (identical(other.storeAddress, storeAddress) ||
                other.storeAddress == storeAddress) &&
            (identical(other.uiDesignId, uiDesignId) ||
                other.uiDesignId == uiDesignId) &&
            (identical(other.itemWiseCancel, itemWiseCancel) ||
                other.itemWiseCancel == itemWiseCancel) &&
            (identical(other.itemWiseAdd, itemWiseAdd) ||
                other.itemWiseAdd == itemWiseAdd));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    storeName,
    storeAddress,
    uiDesignId,
    itemWiseCancel,
    itemWiseAdd,
  );

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreImplCopyWith<_$StoreImpl> get copyWith =>
      __$$StoreImplCopyWithImpl<_$StoreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreImplToJson(this);
  }
}

abstract class _Store implements Store {
  const factory _Store({
    @JsonKey(name: "store_name") final String? storeName,
    @JsonKey(name: "store_address") final String? storeAddress,
    @JsonKey(name: "ui_design_id") final int? uiDesignId,
    @JsonKey(name: "item_wise_cancel") final int? itemWiseCancel,
    @JsonKey(name: "item_wise_add") final int? itemWiseAdd,
  }) = _$StoreImpl;

  factory _Store.fromJson(Map<String, dynamic> json) = _$StoreImpl.fromJson;

  @override
  @JsonKey(name: "store_name")
  String? get storeName;
  @override
  @JsonKey(name: "store_address")
  String? get storeAddress;
  @override
  @JsonKey(name: "ui_design_id")
  int? get uiDesignId;
  @override
  @JsonKey(name: "item_wise_cancel")
  int? get itemWiseCancel;
  @override
  @JsonKey(name: "item_wise_add")
  int? get itemWiseAdd;

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreImplCopyWith<_$StoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
