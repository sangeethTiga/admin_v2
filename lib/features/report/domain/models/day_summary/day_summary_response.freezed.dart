// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_summary_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DaySummaryResponse _$DaySummaryResponseFromJson(Map<String, dynamic> json) {
  return _DaySummaryResponse.fromJson(json);
}

/// @nodoc
mixin _$DaySummaryResponse {
  //     @JsonKey(name: "mode_of_payments")
  // ModeOfPayments? modeOfPayments,
  @JsonKey(name: "mode_of_payments")
  List<ModeOfPayments>? get modeOfPayments =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "is_day_close_enabled")
  int? get isDayCloseEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_type_details")
  List<BillTypeDetail>? get billTypeDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "bill_type_total_order_count")
  int? get billTypeTotalOrderCount => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_type_grand_total")
  int? get billTypeGrandTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "disc_bill_type_details")
  List<DiscBillTypeDetail>? get discBillTypeDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "disc_bill_type_details_count")
  int? get discBillTypeDetailsCount => throw _privateConstructorUsedError;
  @JsonKey(name: "disc_bill_type_details_total")
  int? get discBillTypeDetailsTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_by_cashier")
  List<dynamic>? get amountByCashier => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_by_cashier_total")
  int? get amountByCashierTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_by_cashier_count")
  int? get amountByCashierCount => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_by_cashier_cash_total")
  int? get amountByCashierCashTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_by_cashier_card_total")
  int? get amountByCashierCardTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_by_kiosk")
  List<dynamic>? get amountByKiosk => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_by_kiosk_total")
  int? get amountByKioskTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_by_kiosk_count")
  int? get amountByKioskCount => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_by_delivertBoy")
  List<AmountByDelivertBoy>? get amountByDelivertBoy =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "amount_by_deliveryBoy_total")
  int? get amountByDeliveryBoyTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_by_deliveryBoy_count")
  int? get amountByDeliveryBoyCount => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_by_waiter")
  List<dynamic>? get amountByWaiter => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_by_waiter_total")
  int? get amountByWaiterTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_by_waiter_count")
  int? get amountByWaiterCount => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_partners")
  List<DeliveryPartner>? get deliveryPartners =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_partners_total")
  int? get deliveryPartnersTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_partners_count")
  int? get deliveryPartnersCount => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_by_device")
  List<AmountByDevice>? get amountByDevice =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "amount_by_device_count")
  int? get amountByDeviceCount => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_by_device_total")
  int? get amountByDeviceTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_by_category")
  List<dynamic>? get amountByCategory => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_by_category_total")
  int? get amountByCategoryTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_by_main_category")
  List<dynamic>? get amountByMainCategory => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_by_main_category_total")
  int? get amountByMainCategoryTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "cancelled_orders")
  List<dynamic>? get cancelledOrders => throw _privateConstructorUsedError;
  @JsonKey(name: "cancelled_orders_total")
  int? get cancelledOrdersTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "cancelled_bills")
  List<dynamic>? get cancelledBills => throw _privateConstructorUsedError;
  @JsonKey(name: "cancelled_bills_total")
  int? get cancelledBillsTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "cancelled_items")
  List<dynamic>? get cancelledItems => throw _privateConstructorUsedError;
  @JsonKey(name: "order_counts")
  List<OrderCount>? get orderCounts => throw _privateConstructorUsedError;
  @JsonKey(name: "starting_bill")
  int? get startingBill => throw _privateConstructorUsedError;
  @JsonKey(name: "ending_bill")
  int? get endingBill => throw _privateConstructorUsedError;
  @JsonKey(name: "total_bills")
  int? get totalBills => throw _privateConstructorUsedError;
  @JsonKey(name: "total_sales")
  int? get totalSales => throw _privateConstructorUsedError;
  @JsonKey(name: "receipts_data")
  List<Datum>? get receiptsData => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_data")
  List<Datum>? get paymentData => throw _privateConstructorUsedError;
  @JsonKey(name: "total_receipts")
  int? get totalReceipts => throw _privateConstructorUsedError;
  @JsonKey(name: "total_payment")
  int? get totalPayment => throw _privateConstructorUsedError;
  @JsonKey(name: "total_tax_collected")
  int? get totalTaxCollected => throw _privateConstructorUsedError;
  @JsonKey(name: "total_tax_paid")
  int? get totalTaxPaid => throw _privateConstructorUsedError;
  @JsonKey(name: "total_parcel_charge")
  int? get totalParcelCharge => throw _privateConstructorUsedError;
  @JsonKey(name: "pax_details")
  List<PaxDetail>? get paxDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "opening_balance")
  int? get openingBalance => throw _privateConstructorUsedError;
  @JsonKey(name: "closing_balance")
  int? get closingBalance => throw _privateConstructorUsedError;
  @JsonKey(name: "shiftArray")
  List<dynamic>? get shiftArray => throw _privateConstructorUsedError;
  @JsonKey(name: "day_close_date")
  String? get dayCloseDate => throw _privateConstructorUsedError;
  @JsonKey(name: "last_close_date")
  String? get lastCloseDate => throw _privateConstructorUsedError;
  @JsonKey(name: "last_day_close_time")
  String? get lastDayCloseTime => throw _privateConstructorUsedError;

  /// Serializes this DaySummaryResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DaySummaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DaySummaryResponseCopyWith<DaySummaryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DaySummaryResponseCopyWith<$Res> {
  factory $DaySummaryResponseCopyWith(
    DaySummaryResponse value,
    $Res Function(DaySummaryResponse) then,
  ) = _$DaySummaryResponseCopyWithImpl<$Res, DaySummaryResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "mode_of_payments") List<ModeOfPayments>? modeOfPayments,
    @JsonKey(name: "is_day_close_enabled") int? isDayCloseEnabled,
    @JsonKey(name: "bill_type_details") List<BillTypeDetail>? billTypeDetails,
    @JsonKey(name: "bill_type_total_order_count") int? billTypeTotalOrderCount,
    @JsonKey(name: "bill_type_grand_total") int? billTypeGrandTotal,
    @JsonKey(name: "disc_bill_type_details")
    List<DiscBillTypeDetail>? discBillTypeDetails,
    @JsonKey(name: "disc_bill_type_details_count")
    int? discBillTypeDetailsCount,
    @JsonKey(name: "disc_bill_type_details_total")
    int? discBillTypeDetailsTotal,
    @JsonKey(name: "amount_by_cashier") List<dynamic>? amountByCashier,
    @JsonKey(name: "amount_by_cashier_total") int? amountByCashierTotal,
    @JsonKey(name: "amount_by_cashier_count") int? amountByCashierCount,
    @JsonKey(name: "amount_by_cashier_cash_total")
    int? amountByCashierCashTotal,
    @JsonKey(name: "amount_by_cashier_card_total")
    int? amountByCashierCardTotal,
    @JsonKey(name: "amount_by_kiosk") List<dynamic>? amountByKiosk,
    @JsonKey(name: "amount_by_kiosk_total") int? amountByKioskTotal,
    @JsonKey(name: "amount_by_kiosk_count") int? amountByKioskCount,
    @JsonKey(name: "amount_by_delivertBoy")
    List<AmountByDelivertBoy>? amountByDelivertBoy,
    @JsonKey(name: "amount_by_deliveryBoy_total") int? amountByDeliveryBoyTotal,
    @JsonKey(name: "amount_by_deliveryBoy_count") int? amountByDeliveryBoyCount,
    @JsonKey(name: "amount_by_waiter") List<dynamic>? amountByWaiter,
    @JsonKey(name: "amount_by_waiter_total") int? amountByWaiterTotal,
    @JsonKey(name: "amount_by_waiter_count") int? amountByWaiterCount,
    @JsonKey(name: "delivery_partners") List<DeliveryPartner>? deliveryPartners,
    @JsonKey(name: "delivery_partners_total") int? deliveryPartnersTotal,
    @JsonKey(name: "delivery_partners_count") int? deliveryPartnersCount,
    @JsonKey(name: "amount_by_device") List<AmountByDevice>? amountByDevice,
    @JsonKey(name: "amount_by_device_count") int? amountByDeviceCount,
    @JsonKey(name: "amount_by_device_total") int? amountByDeviceTotal,
    @JsonKey(name: "amount_by_category") List<dynamic>? amountByCategory,
    @JsonKey(name: "amount_by_category_total") int? amountByCategoryTotal,
    @JsonKey(name: "amount_by_main_category")
    List<dynamic>? amountByMainCategory,
    @JsonKey(name: "amount_by_main_category_total")
    int? amountByMainCategoryTotal,
    @JsonKey(name: "cancelled_orders") List<dynamic>? cancelledOrders,
    @JsonKey(name: "cancelled_orders_total") int? cancelledOrdersTotal,
    @JsonKey(name: "cancelled_bills") List<dynamic>? cancelledBills,
    @JsonKey(name: "cancelled_bills_total") int? cancelledBillsTotal,
    @JsonKey(name: "cancelled_items") List<dynamic>? cancelledItems,
    @JsonKey(name: "order_counts") List<OrderCount>? orderCounts,
    @JsonKey(name: "starting_bill") int? startingBill,
    @JsonKey(name: "ending_bill") int? endingBill,
    @JsonKey(name: "total_bills") int? totalBills,
    @JsonKey(name: "total_sales") int? totalSales,
    @JsonKey(name: "receipts_data") List<Datum>? receiptsData,
    @JsonKey(name: "payment_data") List<Datum>? paymentData,
    @JsonKey(name: "total_receipts") int? totalReceipts,
    @JsonKey(name: "total_payment") int? totalPayment,
    @JsonKey(name: "total_tax_collected") int? totalTaxCollected,
    @JsonKey(name: "total_tax_paid") int? totalTaxPaid,
    @JsonKey(name: "total_parcel_charge") int? totalParcelCharge,
    @JsonKey(name: "pax_details") List<PaxDetail>? paxDetails,
    @JsonKey(name: "opening_balance") int? openingBalance,
    @JsonKey(name: "closing_balance") int? closingBalance,
    @JsonKey(name: "shiftArray") List<dynamic>? shiftArray,
    @JsonKey(name: "day_close_date") String? dayCloseDate,
    @JsonKey(name: "last_close_date") String? lastCloseDate,
    @JsonKey(name: "last_day_close_time") String? lastDayCloseTime,
  });
}

/// @nodoc
class _$DaySummaryResponseCopyWithImpl<$Res, $Val extends DaySummaryResponse>
    implements $DaySummaryResponseCopyWith<$Res> {
  _$DaySummaryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DaySummaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modeOfPayments = freezed,
    Object? isDayCloseEnabled = freezed,
    Object? billTypeDetails = freezed,
    Object? billTypeTotalOrderCount = freezed,
    Object? billTypeGrandTotal = freezed,
    Object? discBillTypeDetails = freezed,
    Object? discBillTypeDetailsCount = freezed,
    Object? discBillTypeDetailsTotal = freezed,
    Object? amountByCashier = freezed,
    Object? amountByCashierTotal = freezed,
    Object? amountByCashierCount = freezed,
    Object? amountByCashierCashTotal = freezed,
    Object? amountByCashierCardTotal = freezed,
    Object? amountByKiosk = freezed,
    Object? amountByKioskTotal = freezed,
    Object? amountByKioskCount = freezed,
    Object? amountByDelivertBoy = freezed,
    Object? amountByDeliveryBoyTotal = freezed,
    Object? amountByDeliveryBoyCount = freezed,
    Object? amountByWaiter = freezed,
    Object? amountByWaiterTotal = freezed,
    Object? amountByWaiterCount = freezed,
    Object? deliveryPartners = freezed,
    Object? deliveryPartnersTotal = freezed,
    Object? deliveryPartnersCount = freezed,
    Object? amountByDevice = freezed,
    Object? amountByDeviceCount = freezed,
    Object? amountByDeviceTotal = freezed,
    Object? amountByCategory = freezed,
    Object? amountByCategoryTotal = freezed,
    Object? amountByMainCategory = freezed,
    Object? amountByMainCategoryTotal = freezed,
    Object? cancelledOrders = freezed,
    Object? cancelledOrdersTotal = freezed,
    Object? cancelledBills = freezed,
    Object? cancelledBillsTotal = freezed,
    Object? cancelledItems = freezed,
    Object? orderCounts = freezed,
    Object? startingBill = freezed,
    Object? endingBill = freezed,
    Object? totalBills = freezed,
    Object? totalSales = freezed,
    Object? receiptsData = freezed,
    Object? paymentData = freezed,
    Object? totalReceipts = freezed,
    Object? totalPayment = freezed,
    Object? totalTaxCollected = freezed,
    Object? totalTaxPaid = freezed,
    Object? totalParcelCharge = freezed,
    Object? paxDetails = freezed,
    Object? openingBalance = freezed,
    Object? closingBalance = freezed,
    Object? shiftArray = freezed,
    Object? dayCloseDate = freezed,
    Object? lastCloseDate = freezed,
    Object? lastDayCloseTime = freezed,
  }) {
    return _then(
      _value.copyWith(
            modeOfPayments: freezed == modeOfPayments
                ? _value.modeOfPayments
                : modeOfPayments // ignore: cast_nullable_to_non_nullable
                      as List<ModeOfPayments>?,
            isDayCloseEnabled: freezed == isDayCloseEnabled
                ? _value.isDayCloseEnabled
                : isDayCloseEnabled // ignore: cast_nullable_to_non_nullable
                      as int?,
            billTypeDetails: freezed == billTypeDetails
                ? _value.billTypeDetails
                : billTypeDetails // ignore: cast_nullable_to_non_nullable
                      as List<BillTypeDetail>?,
            billTypeTotalOrderCount: freezed == billTypeTotalOrderCount
                ? _value.billTypeTotalOrderCount
                : billTypeTotalOrderCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            billTypeGrandTotal: freezed == billTypeGrandTotal
                ? _value.billTypeGrandTotal
                : billTypeGrandTotal // ignore: cast_nullable_to_non_nullable
                      as int?,
            discBillTypeDetails: freezed == discBillTypeDetails
                ? _value.discBillTypeDetails
                : discBillTypeDetails // ignore: cast_nullable_to_non_nullable
                      as List<DiscBillTypeDetail>?,
            discBillTypeDetailsCount: freezed == discBillTypeDetailsCount
                ? _value.discBillTypeDetailsCount
                : discBillTypeDetailsCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            discBillTypeDetailsTotal: freezed == discBillTypeDetailsTotal
                ? _value.discBillTypeDetailsTotal
                : discBillTypeDetailsTotal // ignore: cast_nullable_to_non_nullable
                      as int?,
            amountByCashier: freezed == amountByCashier
                ? _value.amountByCashier
                : amountByCashier // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            amountByCashierTotal: freezed == amountByCashierTotal
                ? _value.amountByCashierTotal
                : amountByCashierTotal // ignore: cast_nullable_to_non_nullable
                      as int?,
            amountByCashierCount: freezed == amountByCashierCount
                ? _value.amountByCashierCount
                : amountByCashierCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            amountByCashierCashTotal: freezed == amountByCashierCashTotal
                ? _value.amountByCashierCashTotal
                : amountByCashierCashTotal // ignore: cast_nullable_to_non_nullable
                      as int?,
            amountByCashierCardTotal: freezed == amountByCashierCardTotal
                ? _value.amountByCashierCardTotal
                : amountByCashierCardTotal // ignore: cast_nullable_to_non_nullable
                      as int?,
            amountByKiosk: freezed == amountByKiosk
                ? _value.amountByKiosk
                : amountByKiosk // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            amountByKioskTotal: freezed == amountByKioskTotal
                ? _value.amountByKioskTotal
                : amountByKioskTotal // ignore: cast_nullable_to_non_nullable
                      as int?,
            amountByKioskCount: freezed == amountByKioskCount
                ? _value.amountByKioskCount
                : amountByKioskCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            amountByDelivertBoy: freezed == amountByDelivertBoy
                ? _value.amountByDelivertBoy
                : amountByDelivertBoy // ignore: cast_nullable_to_non_nullable
                      as List<AmountByDelivertBoy>?,
            amountByDeliveryBoyTotal: freezed == amountByDeliveryBoyTotal
                ? _value.amountByDeliveryBoyTotal
                : amountByDeliveryBoyTotal // ignore: cast_nullable_to_non_nullable
                      as int?,
            amountByDeliveryBoyCount: freezed == amountByDeliveryBoyCount
                ? _value.amountByDeliveryBoyCount
                : amountByDeliveryBoyCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            amountByWaiter: freezed == amountByWaiter
                ? _value.amountByWaiter
                : amountByWaiter // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            amountByWaiterTotal: freezed == amountByWaiterTotal
                ? _value.amountByWaiterTotal
                : amountByWaiterTotal // ignore: cast_nullable_to_non_nullable
                      as int?,
            amountByWaiterCount: freezed == amountByWaiterCount
                ? _value.amountByWaiterCount
                : amountByWaiterCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            deliveryPartners: freezed == deliveryPartners
                ? _value.deliveryPartners
                : deliveryPartners // ignore: cast_nullable_to_non_nullable
                      as List<DeliveryPartner>?,
            deliveryPartnersTotal: freezed == deliveryPartnersTotal
                ? _value.deliveryPartnersTotal
                : deliveryPartnersTotal // ignore: cast_nullable_to_non_nullable
                      as int?,
            deliveryPartnersCount: freezed == deliveryPartnersCount
                ? _value.deliveryPartnersCount
                : deliveryPartnersCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            amountByDevice: freezed == amountByDevice
                ? _value.amountByDevice
                : amountByDevice // ignore: cast_nullable_to_non_nullable
                      as List<AmountByDevice>?,
            amountByDeviceCount: freezed == amountByDeviceCount
                ? _value.amountByDeviceCount
                : amountByDeviceCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            amountByDeviceTotal: freezed == amountByDeviceTotal
                ? _value.amountByDeviceTotal
                : amountByDeviceTotal // ignore: cast_nullable_to_non_nullable
                      as int?,
            amountByCategory: freezed == amountByCategory
                ? _value.amountByCategory
                : amountByCategory // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            amountByCategoryTotal: freezed == amountByCategoryTotal
                ? _value.amountByCategoryTotal
                : amountByCategoryTotal // ignore: cast_nullable_to_non_nullable
                      as int?,
            amountByMainCategory: freezed == amountByMainCategory
                ? _value.amountByMainCategory
                : amountByMainCategory // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            amountByMainCategoryTotal: freezed == amountByMainCategoryTotal
                ? _value.amountByMainCategoryTotal
                : amountByMainCategoryTotal // ignore: cast_nullable_to_non_nullable
                      as int?,
            cancelledOrders: freezed == cancelledOrders
                ? _value.cancelledOrders
                : cancelledOrders // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            cancelledOrdersTotal: freezed == cancelledOrdersTotal
                ? _value.cancelledOrdersTotal
                : cancelledOrdersTotal // ignore: cast_nullable_to_non_nullable
                      as int?,
            cancelledBills: freezed == cancelledBills
                ? _value.cancelledBills
                : cancelledBills // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            cancelledBillsTotal: freezed == cancelledBillsTotal
                ? _value.cancelledBillsTotal
                : cancelledBillsTotal // ignore: cast_nullable_to_non_nullable
                      as int?,
            cancelledItems: freezed == cancelledItems
                ? _value.cancelledItems
                : cancelledItems // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            orderCounts: freezed == orderCounts
                ? _value.orderCounts
                : orderCounts // ignore: cast_nullable_to_non_nullable
                      as List<OrderCount>?,
            startingBill: freezed == startingBill
                ? _value.startingBill
                : startingBill // ignore: cast_nullable_to_non_nullable
                      as int?,
            endingBill: freezed == endingBill
                ? _value.endingBill
                : endingBill // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalBills: freezed == totalBills
                ? _value.totalBills
                : totalBills // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalSales: freezed == totalSales
                ? _value.totalSales
                : totalSales // ignore: cast_nullable_to_non_nullable
                      as int?,
            receiptsData: freezed == receiptsData
                ? _value.receiptsData
                : receiptsData // ignore: cast_nullable_to_non_nullable
                      as List<Datum>?,
            paymentData: freezed == paymentData
                ? _value.paymentData
                : paymentData // ignore: cast_nullable_to_non_nullable
                      as List<Datum>?,
            totalReceipts: freezed == totalReceipts
                ? _value.totalReceipts
                : totalReceipts // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalPayment: freezed == totalPayment
                ? _value.totalPayment
                : totalPayment // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalTaxCollected: freezed == totalTaxCollected
                ? _value.totalTaxCollected
                : totalTaxCollected // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalTaxPaid: freezed == totalTaxPaid
                ? _value.totalTaxPaid
                : totalTaxPaid // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalParcelCharge: freezed == totalParcelCharge
                ? _value.totalParcelCharge
                : totalParcelCharge // ignore: cast_nullable_to_non_nullable
                      as int?,
            paxDetails: freezed == paxDetails
                ? _value.paxDetails
                : paxDetails // ignore: cast_nullable_to_non_nullable
                      as List<PaxDetail>?,
            openingBalance: freezed == openingBalance
                ? _value.openingBalance
                : openingBalance // ignore: cast_nullable_to_non_nullable
                      as int?,
            closingBalance: freezed == closingBalance
                ? _value.closingBalance
                : closingBalance // ignore: cast_nullable_to_non_nullable
                      as int?,
            shiftArray: freezed == shiftArray
                ? _value.shiftArray
                : shiftArray // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            dayCloseDate: freezed == dayCloseDate
                ? _value.dayCloseDate
                : dayCloseDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastCloseDate: freezed == lastCloseDate
                ? _value.lastCloseDate
                : lastCloseDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastDayCloseTime: freezed == lastDayCloseTime
                ? _value.lastDayCloseTime
                : lastDayCloseTime // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DaySummaryResponseImplCopyWith<$Res>
    implements $DaySummaryResponseCopyWith<$Res> {
  factory _$$DaySummaryResponseImplCopyWith(
    _$DaySummaryResponseImpl value,
    $Res Function(_$DaySummaryResponseImpl) then,
  ) = __$$DaySummaryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "mode_of_payments") List<ModeOfPayments>? modeOfPayments,
    @JsonKey(name: "is_day_close_enabled") int? isDayCloseEnabled,
    @JsonKey(name: "bill_type_details") List<BillTypeDetail>? billTypeDetails,
    @JsonKey(name: "bill_type_total_order_count") int? billTypeTotalOrderCount,
    @JsonKey(name: "bill_type_grand_total") int? billTypeGrandTotal,
    @JsonKey(name: "disc_bill_type_details")
    List<DiscBillTypeDetail>? discBillTypeDetails,
    @JsonKey(name: "disc_bill_type_details_count")
    int? discBillTypeDetailsCount,
    @JsonKey(name: "disc_bill_type_details_total")
    int? discBillTypeDetailsTotal,
    @JsonKey(name: "amount_by_cashier") List<dynamic>? amountByCashier,
    @JsonKey(name: "amount_by_cashier_total") int? amountByCashierTotal,
    @JsonKey(name: "amount_by_cashier_count") int? amountByCashierCount,
    @JsonKey(name: "amount_by_cashier_cash_total")
    int? amountByCashierCashTotal,
    @JsonKey(name: "amount_by_cashier_card_total")
    int? amountByCashierCardTotal,
    @JsonKey(name: "amount_by_kiosk") List<dynamic>? amountByKiosk,
    @JsonKey(name: "amount_by_kiosk_total") int? amountByKioskTotal,
    @JsonKey(name: "amount_by_kiosk_count") int? amountByKioskCount,
    @JsonKey(name: "amount_by_delivertBoy")
    List<AmountByDelivertBoy>? amountByDelivertBoy,
    @JsonKey(name: "amount_by_deliveryBoy_total") int? amountByDeliveryBoyTotal,
    @JsonKey(name: "amount_by_deliveryBoy_count") int? amountByDeliveryBoyCount,
    @JsonKey(name: "amount_by_waiter") List<dynamic>? amountByWaiter,
    @JsonKey(name: "amount_by_waiter_total") int? amountByWaiterTotal,
    @JsonKey(name: "amount_by_waiter_count") int? amountByWaiterCount,
    @JsonKey(name: "delivery_partners") List<DeliveryPartner>? deliveryPartners,
    @JsonKey(name: "delivery_partners_total") int? deliveryPartnersTotal,
    @JsonKey(name: "delivery_partners_count") int? deliveryPartnersCount,
    @JsonKey(name: "amount_by_device") List<AmountByDevice>? amountByDevice,
    @JsonKey(name: "amount_by_device_count") int? amountByDeviceCount,
    @JsonKey(name: "amount_by_device_total") int? amountByDeviceTotal,
    @JsonKey(name: "amount_by_category") List<dynamic>? amountByCategory,
    @JsonKey(name: "amount_by_category_total") int? amountByCategoryTotal,
    @JsonKey(name: "amount_by_main_category")
    List<dynamic>? amountByMainCategory,
    @JsonKey(name: "amount_by_main_category_total")
    int? amountByMainCategoryTotal,
    @JsonKey(name: "cancelled_orders") List<dynamic>? cancelledOrders,
    @JsonKey(name: "cancelled_orders_total") int? cancelledOrdersTotal,
    @JsonKey(name: "cancelled_bills") List<dynamic>? cancelledBills,
    @JsonKey(name: "cancelled_bills_total") int? cancelledBillsTotal,
    @JsonKey(name: "cancelled_items") List<dynamic>? cancelledItems,
    @JsonKey(name: "order_counts") List<OrderCount>? orderCounts,
    @JsonKey(name: "starting_bill") int? startingBill,
    @JsonKey(name: "ending_bill") int? endingBill,
    @JsonKey(name: "total_bills") int? totalBills,
    @JsonKey(name: "total_sales") int? totalSales,
    @JsonKey(name: "receipts_data") List<Datum>? receiptsData,
    @JsonKey(name: "payment_data") List<Datum>? paymentData,
    @JsonKey(name: "total_receipts") int? totalReceipts,
    @JsonKey(name: "total_payment") int? totalPayment,
    @JsonKey(name: "total_tax_collected") int? totalTaxCollected,
    @JsonKey(name: "total_tax_paid") int? totalTaxPaid,
    @JsonKey(name: "total_parcel_charge") int? totalParcelCharge,
    @JsonKey(name: "pax_details") List<PaxDetail>? paxDetails,
    @JsonKey(name: "opening_balance") int? openingBalance,
    @JsonKey(name: "closing_balance") int? closingBalance,
    @JsonKey(name: "shiftArray") List<dynamic>? shiftArray,
    @JsonKey(name: "day_close_date") String? dayCloseDate,
    @JsonKey(name: "last_close_date") String? lastCloseDate,
    @JsonKey(name: "last_day_close_time") String? lastDayCloseTime,
  });
}

/// @nodoc
class __$$DaySummaryResponseImplCopyWithImpl<$Res>
    extends _$DaySummaryResponseCopyWithImpl<$Res, _$DaySummaryResponseImpl>
    implements _$$DaySummaryResponseImplCopyWith<$Res> {
  __$$DaySummaryResponseImplCopyWithImpl(
    _$DaySummaryResponseImpl _value,
    $Res Function(_$DaySummaryResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DaySummaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modeOfPayments = freezed,
    Object? isDayCloseEnabled = freezed,
    Object? billTypeDetails = freezed,
    Object? billTypeTotalOrderCount = freezed,
    Object? billTypeGrandTotal = freezed,
    Object? discBillTypeDetails = freezed,
    Object? discBillTypeDetailsCount = freezed,
    Object? discBillTypeDetailsTotal = freezed,
    Object? amountByCashier = freezed,
    Object? amountByCashierTotal = freezed,
    Object? amountByCashierCount = freezed,
    Object? amountByCashierCashTotal = freezed,
    Object? amountByCashierCardTotal = freezed,
    Object? amountByKiosk = freezed,
    Object? amountByKioskTotal = freezed,
    Object? amountByKioskCount = freezed,
    Object? amountByDelivertBoy = freezed,
    Object? amountByDeliveryBoyTotal = freezed,
    Object? amountByDeliveryBoyCount = freezed,
    Object? amountByWaiter = freezed,
    Object? amountByWaiterTotal = freezed,
    Object? amountByWaiterCount = freezed,
    Object? deliveryPartners = freezed,
    Object? deliveryPartnersTotal = freezed,
    Object? deliveryPartnersCount = freezed,
    Object? amountByDevice = freezed,
    Object? amountByDeviceCount = freezed,
    Object? amountByDeviceTotal = freezed,
    Object? amountByCategory = freezed,
    Object? amountByCategoryTotal = freezed,
    Object? amountByMainCategory = freezed,
    Object? amountByMainCategoryTotal = freezed,
    Object? cancelledOrders = freezed,
    Object? cancelledOrdersTotal = freezed,
    Object? cancelledBills = freezed,
    Object? cancelledBillsTotal = freezed,
    Object? cancelledItems = freezed,
    Object? orderCounts = freezed,
    Object? startingBill = freezed,
    Object? endingBill = freezed,
    Object? totalBills = freezed,
    Object? totalSales = freezed,
    Object? receiptsData = freezed,
    Object? paymentData = freezed,
    Object? totalReceipts = freezed,
    Object? totalPayment = freezed,
    Object? totalTaxCollected = freezed,
    Object? totalTaxPaid = freezed,
    Object? totalParcelCharge = freezed,
    Object? paxDetails = freezed,
    Object? openingBalance = freezed,
    Object? closingBalance = freezed,
    Object? shiftArray = freezed,
    Object? dayCloseDate = freezed,
    Object? lastCloseDate = freezed,
    Object? lastDayCloseTime = freezed,
  }) {
    return _then(
      _$DaySummaryResponseImpl(
        modeOfPayments: freezed == modeOfPayments
            ? _value._modeOfPayments
            : modeOfPayments // ignore: cast_nullable_to_non_nullable
                  as List<ModeOfPayments>?,
        isDayCloseEnabled: freezed == isDayCloseEnabled
            ? _value.isDayCloseEnabled
            : isDayCloseEnabled // ignore: cast_nullable_to_non_nullable
                  as int?,
        billTypeDetails: freezed == billTypeDetails
            ? _value._billTypeDetails
            : billTypeDetails // ignore: cast_nullable_to_non_nullable
                  as List<BillTypeDetail>?,
        billTypeTotalOrderCount: freezed == billTypeTotalOrderCount
            ? _value.billTypeTotalOrderCount
            : billTypeTotalOrderCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        billTypeGrandTotal: freezed == billTypeGrandTotal
            ? _value.billTypeGrandTotal
            : billTypeGrandTotal // ignore: cast_nullable_to_non_nullable
                  as int?,
        discBillTypeDetails: freezed == discBillTypeDetails
            ? _value._discBillTypeDetails
            : discBillTypeDetails // ignore: cast_nullable_to_non_nullable
                  as List<DiscBillTypeDetail>?,
        discBillTypeDetailsCount: freezed == discBillTypeDetailsCount
            ? _value.discBillTypeDetailsCount
            : discBillTypeDetailsCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        discBillTypeDetailsTotal: freezed == discBillTypeDetailsTotal
            ? _value.discBillTypeDetailsTotal
            : discBillTypeDetailsTotal // ignore: cast_nullable_to_non_nullable
                  as int?,
        amountByCashier: freezed == amountByCashier
            ? _value._amountByCashier
            : amountByCashier // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        amountByCashierTotal: freezed == amountByCashierTotal
            ? _value.amountByCashierTotal
            : amountByCashierTotal // ignore: cast_nullable_to_non_nullable
                  as int?,
        amountByCashierCount: freezed == amountByCashierCount
            ? _value.amountByCashierCount
            : amountByCashierCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        amountByCashierCashTotal: freezed == amountByCashierCashTotal
            ? _value.amountByCashierCashTotal
            : amountByCashierCashTotal // ignore: cast_nullable_to_non_nullable
                  as int?,
        amountByCashierCardTotal: freezed == amountByCashierCardTotal
            ? _value.amountByCashierCardTotal
            : amountByCashierCardTotal // ignore: cast_nullable_to_non_nullable
                  as int?,
        amountByKiosk: freezed == amountByKiosk
            ? _value._amountByKiosk
            : amountByKiosk // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        amountByKioskTotal: freezed == amountByKioskTotal
            ? _value.amountByKioskTotal
            : amountByKioskTotal // ignore: cast_nullable_to_non_nullable
                  as int?,
        amountByKioskCount: freezed == amountByKioskCount
            ? _value.amountByKioskCount
            : amountByKioskCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        amountByDelivertBoy: freezed == amountByDelivertBoy
            ? _value._amountByDelivertBoy
            : amountByDelivertBoy // ignore: cast_nullable_to_non_nullable
                  as List<AmountByDelivertBoy>?,
        amountByDeliveryBoyTotal: freezed == amountByDeliveryBoyTotal
            ? _value.amountByDeliveryBoyTotal
            : amountByDeliveryBoyTotal // ignore: cast_nullable_to_non_nullable
                  as int?,
        amountByDeliveryBoyCount: freezed == amountByDeliveryBoyCount
            ? _value.amountByDeliveryBoyCount
            : amountByDeliveryBoyCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        amountByWaiter: freezed == amountByWaiter
            ? _value._amountByWaiter
            : amountByWaiter // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        amountByWaiterTotal: freezed == amountByWaiterTotal
            ? _value.amountByWaiterTotal
            : amountByWaiterTotal // ignore: cast_nullable_to_non_nullable
                  as int?,
        amountByWaiterCount: freezed == amountByWaiterCount
            ? _value.amountByWaiterCount
            : amountByWaiterCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        deliveryPartners: freezed == deliveryPartners
            ? _value._deliveryPartners
            : deliveryPartners // ignore: cast_nullable_to_non_nullable
                  as List<DeliveryPartner>?,
        deliveryPartnersTotal: freezed == deliveryPartnersTotal
            ? _value.deliveryPartnersTotal
            : deliveryPartnersTotal // ignore: cast_nullable_to_non_nullable
                  as int?,
        deliveryPartnersCount: freezed == deliveryPartnersCount
            ? _value.deliveryPartnersCount
            : deliveryPartnersCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        amountByDevice: freezed == amountByDevice
            ? _value._amountByDevice
            : amountByDevice // ignore: cast_nullable_to_non_nullable
                  as List<AmountByDevice>?,
        amountByDeviceCount: freezed == amountByDeviceCount
            ? _value.amountByDeviceCount
            : amountByDeviceCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        amountByDeviceTotal: freezed == amountByDeviceTotal
            ? _value.amountByDeviceTotal
            : amountByDeviceTotal // ignore: cast_nullable_to_non_nullable
                  as int?,
        amountByCategory: freezed == amountByCategory
            ? _value._amountByCategory
            : amountByCategory // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        amountByCategoryTotal: freezed == amountByCategoryTotal
            ? _value.amountByCategoryTotal
            : amountByCategoryTotal // ignore: cast_nullable_to_non_nullable
                  as int?,
        amountByMainCategory: freezed == amountByMainCategory
            ? _value._amountByMainCategory
            : amountByMainCategory // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        amountByMainCategoryTotal: freezed == amountByMainCategoryTotal
            ? _value.amountByMainCategoryTotal
            : amountByMainCategoryTotal // ignore: cast_nullable_to_non_nullable
                  as int?,
        cancelledOrders: freezed == cancelledOrders
            ? _value._cancelledOrders
            : cancelledOrders // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        cancelledOrdersTotal: freezed == cancelledOrdersTotal
            ? _value.cancelledOrdersTotal
            : cancelledOrdersTotal // ignore: cast_nullable_to_non_nullable
                  as int?,
        cancelledBills: freezed == cancelledBills
            ? _value._cancelledBills
            : cancelledBills // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        cancelledBillsTotal: freezed == cancelledBillsTotal
            ? _value.cancelledBillsTotal
            : cancelledBillsTotal // ignore: cast_nullable_to_non_nullable
                  as int?,
        cancelledItems: freezed == cancelledItems
            ? _value._cancelledItems
            : cancelledItems // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        orderCounts: freezed == orderCounts
            ? _value._orderCounts
            : orderCounts // ignore: cast_nullable_to_non_nullable
                  as List<OrderCount>?,
        startingBill: freezed == startingBill
            ? _value.startingBill
            : startingBill // ignore: cast_nullable_to_non_nullable
                  as int?,
        endingBill: freezed == endingBill
            ? _value.endingBill
            : endingBill // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalBills: freezed == totalBills
            ? _value.totalBills
            : totalBills // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalSales: freezed == totalSales
            ? _value.totalSales
            : totalSales // ignore: cast_nullable_to_non_nullable
                  as int?,
        receiptsData: freezed == receiptsData
            ? _value._receiptsData
            : receiptsData // ignore: cast_nullable_to_non_nullable
                  as List<Datum>?,
        paymentData: freezed == paymentData
            ? _value._paymentData
            : paymentData // ignore: cast_nullable_to_non_nullable
                  as List<Datum>?,
        totalReceipts: freezed == totalReceipts
            ? _value.totalReceipts
            : totalReceipts // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalPayment: freezed == totalPayment
            ? _value.totalPayment
            : totalPayment // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalTaxCollected: freezed == totalTaxCollected
            ? _value.totalTaxCollected
            : totalTaxCollected // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalTaxPaid: freezed == totalTaxPaid
            ? _value.totalTaxPaid
            : totalTaxPaid // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalParcelCharge: freezed == totalParcelCharge
            ? _value.totalParcelCharge
            : totalParcelCharge // ignore: cast_nullable_to_non_nullable
                  as int?,
        paxDetails: freezed == paxDetails
            ? _value._paxDetails
            : paxDetails // ignore: cast_nullable_to_non_nullable
                  as List<PaxDetail>?,
        openingBalance: freezed == openingBalance
            ? _value.openingBalance
            : openingBalance // ignore: cast_nullable_to_non_nullable
                  as int?,
        closingBalance: freezed == closingBalance
            ? _value.closingBalance
            : closingBalance // ignore: cast_nullable_to_non_nullable
                  as int?,
        shiftArray: freezed == shiftArray
            ? _value._shiftArray
            : shiftArray // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        dayCloseDate: freezed == dayCloseDate
            ? _value.dayCloseDate
            : dayCloseDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastCloseDate: freezed == lastCloseDate
            ? _value.lastCloseDate
            : lastCloseDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastDayCloseTime: freezed == lastDayCloseTime
            ? _value.lastDayCloseTime
            : lastDayCloseTime // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DaySummaryResponseImpl implements _DaySummaryResponse {
  const _$DaySummaryResponseImpl({
    @JsonKey(name: "mode_of_payments")
    final List<ModeOfPayments>? modeOfPayments,
    @JsonKey(name: "is_day_close_enabled") this.isDayCloseEnabled,
    @JsonKey(name: "bill_type_details")
    final List<BillTypeDetail>? billTypeDetails,
    @JsonKey(name: "bill_type_total_order_count") this.billTypeTotalOrderCount,
    @JsonKey(name: "bill_type_grand_total") this.billTypeGrandTotal,
    @JsonKey(name: "disc_bill_type_details")
    final List<DiscBillTypeDetail>? discBillTypeDetails,
    @JsonKey(name: "disc_bill_type_details_count")
    this.discBillTypeDetailsCount,
    @JsonKey(name: "disc_bill_type_details_total")
    this.discBillTypeDetailsTotal,
    @JsonKey(name: "amount_by_cashier") final List<dynamic>? amountByCashier,
    @JsonKey(name: "amount_by_cashier_total") this.amountByCashierTotal,
    @JsonKey(name: "amount_by_cashier_count") this.amountByCashierCount,
    @JsonKey(name: "amount_by_cashier_cash_total")
    this.amountByCashierCashTotal,
    @JsonKey(name: "amount_by_cashier_card_total")
    this.amountByCashierCardTotal,
    @JsonKey(name: "amount_by_kiosk") final List<dynamic>? amountByKiosk,
    @JsonKey(name: "amount_by_kiosk_total") this.amountByKioskTotal,
    @JsonKey(name: "amount_by_kiosk_count") this.amountByKioskCount,
    @JsonKey(name: "amount_by_delivertBoy")
    final List<AmountByDelivertBoy>? amountByDelivertBoy,
    @JsonKey(name: "amount_by_deliveryBoy_total") this.amountByDeliveryBoyTotal,
    @JsonKey(name: "amount_by_deliveryBoy_count") this.amountByDeliveryBoyCount,
    @JsonKey(name: "amount_by_waiter") final List<dynamic>? amountByWaiter,
    @JsonKey(name: "amount_by_waiter_total") this.amountByWaiterTotal,
    @JsonKey(name: "amount_by_waiter_count") this.amountByWaiterCount,
    @JsonKey(name: "delivery_partners")
    final List<DeliveryPartner>? deliveryPartners,
    @JsonKey(name: "delivery_partners_total") this.deliveryPartnersTotal,
    @JsonKey(name: "delivery_partners_count") this.deliveryPartnersCount,
    @JsonKey(name: "amount_by_device")
    final List<AmountByDevice>? amountByDevice,
    @JsonKey(name: "amount_by_device_count") this.amountByDeviceCount,
    @JsonKey(name: "amount_by_device_total") this.amountByDeviceTotal,
    @JsonKey(name: "amount_by_category") final List<dynamic>? amountByCategory,
    @JsonKey(name: "amount_by_category_total") this.amountByCategoryTotal,
    @JsonKey(name: "amount_by_main_category")
    final List<dynamic>? amountByMainCategory,
    @JsonKey(name: "amount_by_main_category_total")
    this.amountByMainCategoryTotal,
    @JsonKey(name: "cancelled_orders") final List<dynamic>? cancelledOrders,
    @JsonKey(name: "cancelled_orders_total") this.cancelledOrdersTotal,
    @JsonKey(name: "cancelled_bills") final List<dynamic>? cancelledBills,
    @JsonKey(name: "cancelled_bills_total") this.cancelledBillsTotal,
    @JsonKey(name: "cancelled_items") final List<dynamic>? cancelledItems,
    @JsonKey(name: "order_counts") final List<OrderCount>? orderCounts,
    @JsonKey(name: "starting_bill") this.startingBill,
    @JsonKey(name: "ending_bill") this.endingBill,
    @JsonKey(name: "total_bills") this.totalBills,
    @JsonKey(name: "total_sales") this.totalSales,
    @JsonKey(name: "receipts_data") final List<Datum>? receiptsData,
    @JsonKey(name: "payment_data") final List<Datum>? paymentData,
    @JsonKey(name: "total_receipts") this.totalReceipts,
    @JsonKey(name: "total_payment") this.totalPayment,
    @JsonKey(name: "total_tax_collected") this.totalTaxCollected,
    @JsonKey(name: "total_tax_paid") this.totalTaxPaid,
    @JsonKey(name: "total_parcel_charge") this.totalParcelCharge,
    @JsonKey(name: "pax_details") final List<PaxDetail>? paxDetails,
    @JsonKey(name: "opening_balance") this.openingBalance,
    @JsonKey(name: "closing_balance") this.closingBalance,
    @JsonKey(name: "shiftArray") final List<dynamic>? shiftArray,
    @JsonKey(name: "day_close_date") this.dayCloseDate,
    @JsonKey(name: "last_close_date") this.lastCloseDate,
    @JsonKey(name: "last_day_close_time") this.lastDayCloseTime,
  }) : _modeOfPayments = modeOfPayments,
       _billTypeDetails = billTypeDetails,
       _discBillTypeDetails = discBillTypeDetails,
       _amountByCashier = amountByCashier,
       _amountByKiosk = amountByKiosk,
       _amountByDelivertBoy = amountByDelivertBoy,
       _amountByWaiter = amountByWaiter,
       _deliveryPartners = deliveryPartners,
       _amountByDevice = amountByDevice,
       _amountByCategory = amountByCategory,
       _amountByMainCategory = amountByMainCategory,
       _cancelledOrders = cancelledOrders,
       _cancelledBills = cancelledBills,
       _cancelledItems = cancelledItems,
       _orderCounts = orderCounts,
       _receiptsData = receiptsData,
       _paymentData = paymentData,
       _paxDetails = paxDetails,
       _shiftArray = shiftArray;

  factory _$DaySummaryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DaySummaryResponseImplFromJson(json);

  //     @JsonKey(name: "mode_of_payments")
  // ModeOfPayments? modeOfPayments,
  final List<ModeOfPayments>? _modeOfPayments;
  //     @JsonKey(name: "mode_of_payments")
  // ModeOfPayments? modeOfPayments,
  @override
  @JsonKey(name: "mode_of_payments")
  List<ModeOfPayments>? get modeOfPayments {
    final value = _modeOfPayments;
    if (value == null) return null;
    if (_modeOfPayments is EqualUnmodifiableListView) return _modeOfPayments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "is_day_close_enabled")
  final int? isDayCloseEnabled;
  final List<BillTypeDetail>? _billTypeDetails;
  @override
  @JsonKey(name: "bill_type_details")
  List<BillTypeDetail>? get billTypeDetails {
    final value = _billTypeDetails;
    if (value == null) return null;
    if (_billTypeDetails is EqualUnmodifiableListView) return _billTypeDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "bill_type_total_order_count")
  final int? billTypeTotalOrderCount;
  @override
  @JsonKey(name: "bill_type_grand_total")
  final int? billTypeGrandTotal;
  final List<DiscBillTypeDetail>? _discBillTypeDetails;
  @override
  @JsonKey(name: "disc_bill_type_details")
  List<DiscBillTypeDetail>? get discBillTypeDetails {
    final value = _discBillTypeDetails;
    if (value == null) return null;
    if (_discBillTypeDetails is EqualUnmodifiableListView)
      return _discBillTypeDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "disc_bill_type_details_count")
  final int? discBillTypeDetailsCount;
  @override
  @JsonKey(name: "disc_bill_type_details_total")
  final int? discBillTypeDetailsTotal;
  final List<dynamic>? _amountByCashier;
  @override
  @JsonKey(name: "amount_by_cashier")
  List<dynamic>? get amountByCashier {
    final value = _amountByCashier;
    if (value == null) return null;
    if (_amountByCashier is EqualUnmodifiableListView) return _amountByCashier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "amount_by_cashier_total")
  final int? amountByCashierTotal;
  @override
  @JsonKey(name: "amount_by_cashier_count")
  final int? amountByCashierCount;
  @override
  @JsonKey(name: "amount_by_cashier_cash_total")
  final int? amountByCashierCashTotal;
  @override
  @JsonKey(name: "amount_by_cashier_card_total")
  final int? amountByCashierCardTotal;
  final List<dynamic>? _amountByKiosk;
  @override
  @JsonKey(name: "amount_by_kiosk")
  List<dynamic>? get amountByKiosk {
    final value = _amountByKiosk;
    if (value == null) return null;
    if (_amountByKiosk is EqualUnmodifiableListView) return _amountByKiosk;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "amount_by_kiosk_total")
  final int? amountByKioskTotal;
  @override
  @JsonKey(name: "amount_by_kiosk_count")
  final int? amountByKioskCount;
  final List<AmountByDelivertBoy>? _amountByDelivertBoy;
  @override
  @JsonKey(name: "amount_by_delivertBoy")
  List<AmountByDelivertBoy>? get amountByDelivertBoy {
    final value = _amountByDelivertBoy;
    if (value == null) return null;
    if (_amountByDelivertBoy is EqualUnmodifiableListView)
      return _amountByDelivertBoy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "amount_by_deliveryBoy_total")
  final int? amountByDeliveryBoyTotal;
  @override
  @JsonKey(name: "amount_by_deliveryBoy_count")
  final int? amountByDeliveryBoyCount;
  final List<dynamic>? _amountByWaiter;
  @override
  @JsonKey(name: "amount_by_waiter")
  List<dynamic>? get amountByWaiter {
    final value = _amountByWaiter;
    if (value == null) return null;
    if (_amountByWaiter is EqualUnmodifiableListView) return _amountByWaiter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "amount_by_waiter_total")
  final int? amountByWaiterTotal;
  @override
  @JsonKey(name: "amount_by_waiter_count")
  final int? amountByWaiterCount;
  final List<DeliveryPartner>? _deliveryPartners;
  @override
  @JsonKey(name: "delivery_partners")
  List<DeliveryPartner>? get deliveryPartners {
    final value = _deliveryPartners;
    if (value == null) return null;
    if (_deliveryPartners is EqualUnmodifiableListView)
      return _deliveryPartners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "delivery_partners_total")
  final int? deliveryPartnersTotal;
  @override
  @JsonKey(name: "delivery_partners_count")
  final int? deliveryPartnersCount;
  final List<AmountByDevice>? _amountByDevice;
  @override
  @JsonKey(name: "amount_by_device")
  List<AmountByDevice>? get amountByDevice {
    final value = _amountByDevice;
    if (value == null) return null;
    if (_amountByDevice is EqualUnmodifiableListView) return _amountByDevice;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "amount_by_device_count")
  final int? amountByDeviceCount;
  @override
  @JsonKey(name: "amount_by_device_total")
  final int? amountByDeviceTotal;
  final List<dynamic>? _amountByCategory;
  @override
  @JsonKey(name: "amount_by_category")
  List<dynamic>? get amountByCategory {
    final value = _amountByCategory;
    if (value == null) return null;
    if (_amountByCategory is EqualUnmodifiableListView)
      return _amountByCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "amount_by_category_total")
  final int? amountByCategoryTotal;
  final List<dynamic>? _amountByMainCategory;
  @override
  @JsonKey(name: "amount_by_main_category")
  List<dynamic>? get amountByMainCategory {
    final value = _amountByMainCategory;
    if (value == null) return null;
    if (_amountByMainCategory is EqualUnmodifiableListView)
      return _amountByMainCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "amount_by_main_category_total")
  final int? amountByMainCategoryTotal;
  final List<dynamic>? _cancelledOrders;
  @override
  @JsonKey(name: "cancelled_orders")
  List<dynamic>? get cancelledOrders {
    final value = _cancelledOrders;
    if (value == null) return null;
    if (_cancelledOrders is EqualUnmodifiableListView) return _cancelledOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "cancelled_orders_total")
  final int? cancelledOrdersTotal;
  final List<dynamic>? _cancelledBills;
  @override
  @JsonKey(name: "cancelled_bills")
  List<dynamic>? get cancelledBills {
    final value = _cancelledBills;
    if (value == null) return null;
    if (_cancelledBills is EqualUnmodifiableListView) return _cancelledBills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "cancelled_bills_total")
  final int? cancelledBillsTotal;
  final List<dynamic>? _cancelledItems;
  @override
  @JsonKey(name: "cancelled_items")
  List<dynamic>? get cancelledItems {
    final value = _cancelledItems;
    if (value == null) return null;
    if (_cancelledItems is EqualUnmodifiableListView) return _cancelledItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<OrderCount>? _orderCounts;
  @override
  @JsonKey(name: "order_counts")
  List<OrderCount>? get orderCounts {
    final value = _orderCounts;
    if (value == null) return null;
    if (_orderCounts is EqualUnmodifiableListView) return _orderCounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "starting_bill")
  final int? startingBill;
  @override
  @JsonKey(name: "ending_bill")
  final int? endingBill;
  @override
  @JsonKey(name: "total_bills")
  final int? totalBills;
  @override
  @JsonKey(name: "total_sales")
  final int? totalSales;
  final List<Datum>? _receiptsData;
  @override
  @JsonKey(name: "receipts_data")
  List<Datum>? get receiptsData {
    final value = _receiptsData;
    if (value == null) return null;
    if (_receiptsData is EqualUnmodifiableListView) return _receiptsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Datum>? _paymentData;
  @override
  @JsonKey(name: "payment_data")
  List<Datum>? get paymentData {
    final value = _paymentData;
    if (value == null) return null;
    if (_paymentData is EqualUnmodifiableListView) return _paymentData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "total_receipts")
  final int? totalReceipts;
  @override
  @JsonKey(name: "total_payment")
  final int? totalPayment;
  @override
  @JsonKey(name: "total_tax_collected")
  final int? totalTaxCollected;
  @override
  @JsonKey(name: "total_tax_paid")
  final int? totalTaxPaid;
  @override
  @JsonKey(name: "total_parcel_charge")
  final int? totalParcelCharge;
  final List<PaxDetail>? _paxDetails;
  @override
  @JsonKey(name: "pax_details")
  List<PaxDetail>? get paxDetails {
    final value = _paxDetails;
    if (value == null) return null;
    if (_paxDetails is EqualUnmodifiableListView) return _paxDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "opening_balance")
  final int? openingBalance;
  @override
  @JsonKey(name: "closing_balance")
  final int? closingBalance;
  final List<dynamic>? _shiftArray;
  @override
  @JsonKey(name: "shiftArray")
  List<dynamic>? get shiftArray {
    final value = _shiftArray;
    if (value == null) return null;
    if (_shiftArray is EqualUnmodifiableListView) return _shiftArray;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "day_close_date")
  final String? dayCloseDate;
  @override
  @JsonKey(name: "last_close_date")
  final String? lastCloseDate;
  @override
  @JsonKey(name: "last_day_close_time")
  final String? lastDayCloseTime;

  @override
  String toString() {
    return 'DaySummaryResponse(modeOfPayments: $modeOfPayments, isDayCloseEnabled: $isDayCloseEnabled, billTypeDetails: $billTypeDetails, billTypeTotalOrderCount: $billTypeTotalOrderCount, billTypeGrandTotal: $billTypeGrandTotal, discBillTypeDetails: $discBillTypeDetails, discBillTypeDetailsCount: $discBillTypeDetailsCount, discBillTypeDetailsTotal: $discBillTypeDetailsTotal, amountByCashier: $amountByCashier, amountByCashierTotal: $amountByCashierTotal, amountByCashierCount: $amountByCashierCount, amountByCashierCashTotal: $amountByCashierCashTotal, amountByCashierCardTotal: $amountByCashierCardTotal, amountByKiosk: $amountByKiosk, amountByKioskTotal: $amountByKioskTotal, amountByKioskCount: $amountByKioskCount, amountByDelivertBoy: $amountByDelivertBoy, amountByDeliveryBoyTotal: $amountByDeliveryBoyTotal, amountByDeliveryBoyCount: $amountByDeliveryBoyCount, amountByWaiter: $amountByWaiter, amountByWaiterTotal: $amountByWaiterTotal, amountByWaiterCount: $amountByWaiterCount, deliveryPartners: $deliveryPartners, deliveryPartnersTotal: $deliveryPartnersTotal, deliveryPartnersCount: $deliveryPartnersCount, amountByDevice: $amountByDevice, amountByDeviceCount: $amountByDeviceCount, amountByDeviceTotal: $amountByDeviceTotal, amountByCategory: $amountByCategory, amountByCategoryTotal: $amountByCategoryTotal, amountByMainCategory: $amountByMainCategory, amountByMainCategoryTotal: $amountByMainCategoryTotal, cancelledOrders: $cancelledOrders, cancelledOrdersTotal: $cancelledOrdersTotal, cancelledBills: $cancelledBills, cancelledBillsTotal: $cancelledBillsTotal, cancelledItems: $cancelledItems, orderCounts: $orderCounts, startingBill: $startingBill, endingBill: $endingBill, totalBills: $totalBills, totalSales: $totalSales, receiptsData: $receiptsData, paymentData: $paymentData, totalReceipts: $totalReceipts, totalPayment: $totalPayment, totalTaxCollected: $totalTaxCollected, totalTaxPaid: $totalTaxPaid, totalParcelCharge: $totalParcelCharge, paxDetails: $paxDetails, openingBalance: $openingBalance, closingBalance: $closingBalance, shiftArray: $shiftArray, dayCloseDate: $dayCloseDate, lastCloseDate: $lastCloseDate, lastDayCloseTime: $lastDayCloseTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DaySummaryResponseImpl &&
            const DeepCollectionEquality().equals(
              other._modeOfPayments,
              _modeOfPayments,
            ) &&
            (identical(other.isDayCloseEnabled, isDayCloseEnabled) ||
                other.isDayCloseEnabled == isDayCloseEnabled) &&
            const DeepCollectionEquality().equals(
              other._billTypeDetails,
              _billTypeDetails,
            ) &&
            (identical(
                  other.billTypeTotalOrderCount,
                  billTypeTotalOrderCount,
                ) ||
                other.billTypeTotalOrderCount == billTypeTotalOrderCount) &&
            (identical(other.billTypeGrandTotal, billTypeGrandTotal) ||
                other.billTypeGrandTotal == billTypeGrandTotal) &&
            const DeepCollectionEquality().equals(
              other._discBillTypeDetails,
              _discBillTypeDetails,
            ) &&
            (identical(
                  other.discBillTypeDetailsCount,
                  discBillTypeDetailsCount,
                ) ||
                other.discBillTypeDetailsCount == discBillTypeDetailsCount) &&
            (identical(
                  other.discBillTypeDetailsTotal,
                  discBillTypeDetailsTotal,
                ) ||
                other.discBillTypeDetailsTotal == discBillTypeDetailsTotal) &&
            const DeepCollectionEquality().equals(
              other._amountByCashier,
              _amountByCashier,
            ) &&
            (identical(other.amountByCashierTotal, amountByCashierTotal) ||
                other.amountByCashierTotal == amountByCashierTotal) &&
            (identical(other.amountByCashierCount, amountByCashierCount) ||
                other.amountByCashierCount == amountByCashierCount) &&
            (identical(
                  other.amountByCashierCashTotal,
                  amountByCashierCashTotal,
                ) ||
                other.amountByCashierCashTotal == amountByCashierCashTotal) &&
            (identical(
                  other.amountByCashierCardTotal,
                  amountByCashierCardTotal,
                ) ||
                other.amountByCashierCardTotal == amountByCashierCardTotal) &&
            const DeepCollectionEquality().equals(
              other._amountByKiosk,
              _amountByKiosk,
            ) &&
            (identical(other.amountByKioskTotal, amountByKioskTotal) ||
                other.amountByKioskTotal == amountByKioskTotal) &&
            (identical(other.amountByKioskCount, amountByKioskCount) ||
                other.amountByKioskCount == amountByKioskCount) &&
            const DeepCollectionEquality().equals(
              other._amountByDelivertBoy,
              _amountByDelivertBoy,
            ) &&
            (identical(
                  other.amountByDeliveryBoyTotal,
                  amountByDeliveryBoyTotal,
                ) ||
                other.amountByDeliveryBoyTotal == amountByDeliveryBoyTotal) &&
            (identical(
                  other.amountByDeliveryBoyCount,
                  amountByDeliveryBoyCount,
                ) ||
                other.amountByDeliveryBoyCount == amountByDeliveryBoyCount) &&
            const DeepCollectionEquality().equals(
              other._amountByWaiter,
              _amountByWaiter,
            ) &&
            (identical(other.amountByWaiterTotal, amountByWaiterTotal) ||
                other.amountByWaiterTotal == amountByWaiterTotal) &&
            (identical(other.amountByWaiterCount, amountByWaiterCount) ||
                other.amountByWaiterCount == amountByWaiterCount) &&
            const DeepCollectionEquality().equals(
              other._deliveryPartners,
              _deliveryPartners,
            ) &&
            (identical(other.deliveryPartnersTotal, deliveryPartnersTotal) ||
                other.deliveryPartnersTotal == deliveryPartnersTotal) &&
            (identical(other.deliveryPartnersCount, deliveryPartnersCount) ||
                other.deliveryPartnersCount == deliveryPartnersCount) &&
            const DeepCollectionEquality().equals(
              other._amountByDevice,
              _amountByDevice,
            ) &&
            (identical(other.amountByDeviceCount, amountByDeviceCount) ||
                other.amountByDeviceCount == amountByDeviceCount) &&
            (identical(other.amountByDeviceTotal, amountByDeviceTotal) ||
                other.amountByDeviceTotal == amountByDeviceTotal) &&
            const DeepCollectionEquality().equals(
              other._amountByCategory,
              _amountByCategory,
            ) &&
            (identical(other.amountByCategoryTotal, amountByCategoryTotal) ||
                other.amountByCategoryTotal == amountByCategoryTotal) &&
            const DeepCollectionEquality().equals(
              other._amountByMainCategory,
              _amountByMainCategory,
            ) &&
            (identical(
                  other.amountByMainCategoryTotal,
                  amountByMainCategoryTotal,
                ) ||
                other.amountByMainCategoryTotal == amountByMainCategoryTotal) &&
            const DeepCollectionEquality().equals(
              other._cancelledOrders,
              _cancelledOrders,
            ) &&
            (identical(other.cancelledOrdersTotal, cancelledOrdersTotal) ||
                other.cancelledOrdersTotal == cancelledOrdersTotal) &&
            const DeepCollectionEquality().equals(
              other._cancelledBills,
              _cancelledBills,
            ) &&
            (identical(other.cancelledBillsTotal, cancelledBillsTotal) ||
                other.cancelledBillsTotal == cancelledBillsTotal) &&
            const DeepCollectionEquality().equals(
              other._cancelledItems,
              _cancelledItems,
            ) &&
            const DeepCollectionEquality().equals(
              other._orderCounts,
              _orderCounts,
            ) &&
            (identical(other.startingBill, startingBill) ||
                other.startingBill == startingBill) &&
            (identical(other.endingBill, endingBill) ||
                other.endingBill == endingBill) &&
            (identical(other.totalBills, totalBills) ||
                other.totalBills == totalBills) &&
            (identical(other.totalSales, totalSales) ||
                other.totalSales == totalSales) &&
            const DeepCollectionEquality().equals(
              other._receiptsData,
              _receiptsData,
            ) &&
            const DeepCollectionEquality().equals(
              other._paymentData,
              _paymentData,
            ) &&
            (identical(other.totalReceipts, totalReceipts) ||
                other.totalReceipts == totalReceipts) &&
            (identical(other.totalPayment, totalPayment) ||
                other.totalPayment == totalPayment) &&
            (identical(other.totalTaxCollected, totalTaxCollected) ||
                other.totalTaxCollected == totalTaxCollected) &&
            (identical(other.totalTaxPaid, totalTaxPaid) ||
                other.totalTaxPaid == totalTaxPaid) &&
            (identical(other.totalParcelCharge, totalParcelCharge) ||
                other.totalParcelCharge == totalParcelCharge) &&
            const DeepCollectionEquality().equals(
              other._paxDetails,
              _paxDetails,
            ) &&
            (identical(other.openingBalance, openingBalance) ||
                other.openingBalance == openingBalance) &&
            (identical(other.closingBalance, closingBalance) ||
                other.closingBalance == closingBalance) &&
            const DeepCollectionEquality().equals(
              other._shiftArray,
              _shiftArray,
            ) &&
            (identical(other.dayCloseDate, dayCloseDate) ||
                other.dayCloseDate == dayCloseDate) &&
            (identical(other.lastCloseDate, lastCloseDate) ||
                other.lastCloseDate == lastCloseDate) &&
            (identical(other.lastDayCloseTime, lastDayCloseTime) ||
                other.lastDayCloseTime == lastDayCloseTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    const DeepCollectionEquality().hash(_modeOfPayments),
    isDayCloseEnabled,
    const DeepCollectionEquality().hash(_billTypeDetails),
    billTypeTotalOrderCount,
    billTypeGrandTotal,
    const DeepCollectionEquality().hash(_discBillTypeDetails),
    discBillTypeDetailsCount,
    discBillTypeDetailsTotal,
    const DeepCollectionEquality().hash(_amountByCashier),
    amountByCashierTotal,
    amountByCashierCount,
    amountByCashierCashTotal,
    amountByCashierCardTotal,
    const DeepCollectionEquality().hash(_amountByKiosk),
    amountByKioskTotal,
    amountByKioskCount,
    const DeepCollectionEquality().hash(_amountByDelivertBoy),
    amountByDeliveryBoyTotal,
    amountByDeliveryBoyCount,
    const DeepCollectionEquality().hash(_amountByWaiter),
    amountByWaiterTotal,
    amountByWaiterCount,
    const DeepCollectionEquality().hash(_deliveryPartners),
    deliveryPartnersTotal,
    deliveryPartnersCount,
    const DeepCollectionEquality().hash(_amountByDevice),
    amountByDeviceCount,
    amountByDeviceTotal,
    const DeepCollectionEquality().hash(_amountByCategory),
    amountByCategoryTotal,
    const DeepCollectionEquality().hash(_amountByMainCategory),
    amountByMainCategoryTotal,
    const DeepCollectionEquality().hash(_cancelledOrders),
    cancelledOrdersTotal,
    const DeepCollectionEquality().hash(_cancelledBills),
    cancelledBillsTotal,
    const DeepCollectionEquality().hash(_cancelledItems),
    const DeepCollectionEquality().hash(_orderCounts),
    startingBill,
    endingBill,
    totalBills,
    totalSales,
    const DeepCollectionEquality().hash(_receiptsData),
    const DeepCollectionEquality().hash(_paymentData),
    totalReceipts,
    totalPayment,
    totalTaxCollected,
    totalTaxPaid,
    totalParcelCharge,
    const DeepCollectionEquality().hash(_paxDetails),
    openingBalance,
    closingBalance,
    const DeepCollectionEquality().hash(_shiftArray),
    dayCloseDate,
    lastCloseDate,
    lastDayCloseTime,
  ]);

  /// Create a copy of DaySummaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DaySummaryResponseImplCopyWith<_$DaySummaryResponseImpl> get copyWith =>
      __$$DaySummaryResponseImplCopyWithImpl<_$DaySummaryResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DaySummaryResponseImplToJson(this);
  }
}

abstract class _DaySummaryResponse implements DaySummaryResponse {
  const factory _DaySummaryResponse({
    @JsonKey(name: "mode_of_payments")
    final List<ModeOfPayments>? modeOfPayments,
    @JsonKey(name: "is_day_close_enabled") final int? isDayCloseEnabled,
    @JsonKey(name: "bill_type_details")
    final List<BillTypeDetail>? billTypeDetails,
    @JsonKey(name: "bill_type_total_order_count")
    final int? billTypeTotalOrderCount,
    @JsonKey(name: "bill_type_grand_total") final int? billTypeGrandTotal,
    @JsonKey(name: "disc_bill_type_details")
    final List<DiscBillTypeDetail>? discBillTypeDetails,
    @JsonKey(name: "disc_bill_type_details_count")
    final int? discBillTypeDetailsCount,
    @JsonKey(name: "disc_bill_type_details_total")
    final int? discBillTypeDetailsTotal,
    @JsonKey(name: "amount_by_cashier") final List<dynamic>? amountByCashier,
    @JsonKey(name: "amount_by_cashier_total") final int? amountByCashierTotal,
    @JsonKey(name: "amount_by_cashier_count") final int? amountByCashierCount,
    @JsonKey(name: "amount_by_cashier_cash_total")
    final int? amountByCashierCashTotal,
    @JsonKey(name: "amount_by_cashier_card_total")
    final int? amountByCashierCardTotal,
    @JsonKey(name: "amount_by_kiosk") final List<dynamic>? amountByKiosk,
    @JsonKey(name: "amount_by_kiosk_total") final int? amountByKioskTotal,
    @JsonKey(name: "amount_by_kiosk_count") final int? amountByKioskCount,
    @JsonKey(name: "amount_by_delivertBoy")
    final List<AmountByDelivertBoy>? amountByDelivertBoy,
    @JsonKey(name: "amount_by_deliveryBoy_total")
    final int? amountByDeliveryBoyTotal,
    @JsonKey(name: "amount_by_deliveryBoy_count")
    final int? amountByDeliveryBoyCount,
    @JsonKey(name: "amount_by_waiter") final List<dynamic>? amountByWaiter,
    @JsonKey(name: "amount_by_waiter_total") final int? amountByWaiterTotal,
    @JsonKey(name: "amount_by_waiter_count") final int? amountByWaiterCount,
    @JsonKey(name: "delivery_partners")
    final List<DeliveryPartner>? deliveryPartners,
    @JsonKey(name: "delivery_partners_total") final int? deliveryPartnersTotal,
    @JsonKey(name: "delivery_partners_count") final int? deliveryPartnersCount,
    @JsonKey(name: "amount_by_device")
    final List<AmountByDevice>? amountByDevice,
    @JsonKey(name: "amount_by_device_count") final int? amountByDeviceCount,
    @JsonKey(name: "amount_by_device_total") final int? amountByDeviceTotal,
    @JsonKey(name: "amount_by_category") final List<dynamic>? amountByCategory,
    @JsonKey(name: "amount_by_category_total") final int? amountByCategoryTotal,
    @JsonKey(name: "amount_by_main_category")
    final List<dynamic>? amountByMainCategory,
    @JsonKey(name: "amount_by_main_category_total")
    final int? amountByMainCategoryTotal,
    @JsonKey(name: "cancelled_orders") final List<dynamic>? cancelledOrders,
    @JsonKey(name: "cancelled_orders_total") final int? cancelledOrdersTotal,
    @JsonKey(name: "cancelled_bills") final List<dynamic>? cancelledBills,
    @JsonKey(name: "cancelled_bills_total") final int? cancelledBillsTotal,
    @JsonKey(name: "cancelled_items") final List<dynamic>? cancelledItems,
    @JsonKey(name: "order_counts") final List<OrderCount>? orderCounts,
    @JsonKey(name: "starting_bill") final int? startingBill,
    @JsonKey(name: "ending_bill") final int? endingBill,
    @JsonKey(name: "total_bills") final int? totalBills,
    @JsonKey(name: "total_sales") final int? totalSales,
    @JsonKey(name: "receipts_data") final List<Datum>? receiptsData,
    @JsonKey(name: "payment_data") final List<Datum>? paymentData,
    @JsonKey(name: "total_receipts") final int? totalReceipts,
    @JsonKey(name: "total_payment") final int? totalPayment,
    @JsonKey(name: "total_tax_collected") final int? totalTaxCollected,
    @JsonKey(name: "total_tax_paid") final int? totalTaxPaid,
    @JsonKey(name: "total_parcel_charge") final int? totalParcelCharge,
    @JsonKey(name: "pax_details") final List<PaxDetail>? paxDetails,
    @JsonKey(name: "opening_balance") final int? openingBalance,
    @JsonKey(name: "closing_balance") final int? closingBalance,
    @JsonKey(name: "shiftArray") final List<dynamic>? shiftArray,
    @JsonKey(name: "day_close_date") final String? dayCloseDate,
    @JsonKey(name: "last_close_date") final String? lastCloseDate,
    @JsonKey(name: "last_day_close_time") final String? lastDayCloseTime,
  }) = _$DaySummaryResponseImpl;

  factory _DaySummaryResponse.fromJson(Map<String, dynamic> json) =
      _$DaySummaryResponseImpl.fromJson;

  //     @JsonKey(name: "mode_of_payments")
  // ModeOfPayments? modeOfPayments,
  @override
  @JsonKey(name: "mode_of_payments")
  List<ModeOfPayments>? get modeOfPayments;
  @override
  @JsonKey(name: "is_day_close_enabled")
  int? get isDayCloseEnabled;
  @override
  @JsonKey(name: "bill_type_details")
  List<BillTypeDetail>? get billTypeDetails;
  @override
  @JsonKey(name: "bill_type_total_order_count")
  int? get billTypeTotalOrderCount;
  @override
  @JsonKey(name: "bill_type_grand_total")
  int? get billTypeGrandTotal;
  @override
  @JsonKey(name: "disc_bill_type_details")
  List<DiscBillTypeDetail>? get discBillTypeDetails;
  @override
  @JsonKey(name: "disc_bill_type_details_count")
  int? get discBillTypeDetailsCount;
  @override
  @JsonKey(name: "disc_bill_type_details_total")
  int? get discBillTypeDetailsTotal;
  @override
  @JsonKey(name: "amount_by_cashier")
  List<dynamic>? get amountByCashier;
  @override
  @JsonKey(name: "amount_by_cashier_total")
  int? get amountByCashierTotal;
  @override
  @JsonKey(name: "amount_by_cashier_count")
  int? get amountByCashierCount;
  @override
  @JsonKey(name: "amount_by_cashier_cash_total")
  int? get amountByCashierCashTotal;
  @override
  @JsonKey(name: "amount_by_cashier_card_total")
  int? get amountByCashierCardTotal;
  @override
  @JsonKey(name: "amount_by_kiosk")
  List<dynamic>? get amountByKiosk;
  @override
  @JsonKey(name: "amount_by_kiosk_total")
  int? get amountByKioskTotal;
  @override
  @JsonKey(name: "amount_by_kiosk_count")
  int? get amountByKioskCount;
  @override
  @JsonKey(name: "amount_by_delivertBoy")
  List<AmountByDelivertBoy>? get amountByDelivertBoy;
  @override
  @JsonKey(name: "amount_by_deliveryBoy_total")
  int? get amountByDeliveryBoyTotal;
  @override
  @JsonKey(name: "amount_by_deliveryBoy_count")
  int? get amountByDeliveryBoyCount;
  @override
  @JsonKey(name: "amount_by_waiter")
  List<dynamic>? get amountByWaiter;
  @override
  @JsonKey(name: "amount_by_waiter_total")
  int? get amountByWaiterTotal;
  @override
  @JsonKey(name: "amount_by_waiter_count")
  int? get amountByWaiterCount;
  @override
  @JsonKey(name: "delivery_partners")
  List<DeliveryPartner>? get deliveryPartners;
  @override
  @JsonKey(name: "delivery_partners_total")
  int? get deliveryPartnersTotal;
  @override
  @JsonKey(name: "delivery_partners_count")
  int? get deliveryPartnersCount;
  @override
  @JsonKey(name: "amount_by_device")
  List<AmountByDevice>? get amountByDevice;
  @override
  @JsonKey(name: "amount_by_device_count")
  int? get amountByDeviceCount;
  @override
  @JsonKey(name: "amount_by_device_total")
  int? get amountByDeviceTotal;
  @override
  @JsonKey(name: "amount_by_category")
  List<dynamic>? get amountByCategory;
  @override
  @JsonKey(name: "amount_by_category_total")
  int? get amountByCategoryTotal;
  @override
  @JsonKey(name: "amount_by_main_category")
  List<dynamic>? get amountByMainCategory;
  @override
  @JsonKey(name: "amount_by_main_category_total")
  int? get amountByMainCategoryTotal;
  @override
  @JsonKey(name: "cancelled_orders")
  List<dynamic>? get cancelledOrders;
  @override
  @JsonKey(name: "cancelled_orders_total")
  int? get cancelledOrdersTotal;
  @override
  @JsonKey(name: "cancelled_bills")
  List<dynamic>? get cancelledBills;
  @override
  @JsonKey(name: "cancelled_bills_total")
  int? get cancelledBillsTotal;
  @override
  @JsonKey(name: "cancelled_items")
  List<dynamic>? get cancelledItems;
  @override
  @JsonKey(name: "order_counts")
  List<OrderCount>? get orderCounts;
  @override
  @JsonKey(name: "starting_bill")
  int? get startingBill;
  @override
  @JsonKey(name: "ending_bill")
  int? get endingBill;
  @override
  @JsonKey(name: "total_bills")
  int? get totalBills;
  @override
  @JsonKey(name: "total_sales")
  int? get totalSales;
  @override
  @JsonKey(name: "receipts_data")
  List<Datum>? get receiptsData;
  @override
  @JsonKey(name: "payment_data")
  List<Datum>? get paymentData;
  @override
  @JsonKey(name: "total_receipts")
  int? get totalReceipts;
  @override
  @JsonKey(name: "total_payment")
  int? get totalPayment;
  @override
  @JsonKey(name: "total_tax_collected")
  int? get totalTaxCollected;
  @override
  @JsonKey(name: "total_tax_paid")
  int? get totalTaxPaid;
  @override
  @JsonKey(name: "total_parcel_charge")
  int? get totalParcelCharge;
  @override
  @JsonKey(name: "pax_details")
  List<PaxDetail>? get paxDetails;
  @override
  @JsonKey(name: "opening_balance")
  int? get openingBalance;
  @override
  @JsonKey(name: "closing_balance")
  int? get closingBalance;
  @override
  @JsonKey(name: "shiftArray")
  List<dynamic>? get shiftArray;
  @override
  @JsonKey(name: "day_close_date")
  String? get dayCloseDate;
  @override
  @JsonKey(name: "last_close_date")
  String? get lastCloseDate;
  @override
  @JsonKey(name: "last_day_close_time")
  String? get lastDayCloseTime;

  /// Create a copy of DaySummaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DaySummaryResponseImplCopyWith<_$DaySummaryResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AmountByDelivertBoy _$AmountByDelivertBoyFromJson(Map<String, dynamic> json) {
  return _AmountByDelivertBoy.fromJson(json);
}

/// @nodoc
mixin _$AmountByDelivertBoy {
  @JsonKey(name: "user_name")
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: "ordercount")
  int? get ordercount => throw _privateConstructorUsedError;
  @JsonKey(name: "totalamount")
  int? get totalamount => throw _privateConstructorUsedError;
  @JsonKey(name: "user_role_id")
  int? get userRoleId => throw _privateConstructorUsedError;
  @JsonKey(name: "company_users_id")
  int? get companyUsersId => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_numbers")
  List<dynamic>? get invoiceNumbers => throw _privateConstructorUsedError;
  @JsonKey(name: "cash_amount")
  int? get cashAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "card_amount")
  int? get cardAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "shifts")
  List<dynamic>? get shifts => throw _privateConstructorUsedError;

  /// Serializes this AmountByDelivertBoy to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AmountByDelivertBoy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AmountByDelivertBoyCopyWith<AmountByDelivertBoy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmountByDelivertBoyCopyWith<$Res> {
  factory $AmountByDelivertBoyCopyWith(
    AmountByDelivertBoy value,
    $Res Function(AmountByDelivertBoy) then,
  ) = _$AmountByDelivertBoyCopyWithImpl<$Res, AmountByDelivertBoy>;
  @useResult
  $Res call({
    @JsonKey(name: "user_name") String? userName,
    @JsonKey(name: "ordercount") int? ordercount,
    @JsonKey(name: "totalamount") int? totalamount,
    @JsonKey(name: "user_role_id") int? userRoleId,
    @JsonKey(name: "company_users_id") int? companyUsersId,
    @JsonKey(name: "invoice_numbers") List<dynamic>? invoiceNumbers,
    @JsonKey(name: "cash_amount") int? cashAmount,
    @JsonKey(name: "card_amount") int? cardAmount,
    @JsonKey(name: "shifts") List<dynamic>? shifts,
  });
}

/// @nodoc
class _$AmountByDelivertBoyCopyWithImpl<$Res, $Val extends AmountByDelivertBoy>
    implements $AmountByDelivertBoyCopyWith<$Res> {
  _$AmountByDelivertBoyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AmountByDelivertBoy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? ordercount = freezed,
    Object? totalamount = freezed,
    Object? userRoleId = freezed,
    Object? companyUsersId = freezed,
    Object? invoiceNumbers = freezed,
    Object? cashAmount = freezed,
    Object? cardAmount = freezed,
    Object? shifts = freezed,
  }) {
    return _then(
      _value.copyWith(
            userName: freezed == userName
                ? _value.userName
                : userName // ignore: cast_nullable_to_non_nullable
                      as String?,
            ordercount: freezed == ordercount
                ? _value.ordercount
                : ordercount // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalamount: freezed == totalamount
                ? _value.totalamount
                : totalamount // ignore: cast_nullable_to_non_nullable
                      as int?,
            userRoleId: freezed == userRoleId
                ? _value.userRoleId
                : userRoleId // ignore: cast_nullable_to_non_nullable
                      as int?,
            companyUsersId: freezed == companyUsersId
                ? _value.companyUsersId
                : companyUsersId // ignore: cast_nullable_to_non_nullable
                      as int?,
            invoiceNumbers: freezed == invoiceNumbers
                ? _value.invoiceNumbers
                : invoiceNumbers // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            cashAmount: freezed == cashAmount
                ? _value.cashAmount
                : cashAmount // ignore: cast_nullable_to_non_nullable
                      as int?,
            cardAmount: freezed == cardAmount
                ? _value.cardAmount
                : cardAmount // ignore: cast_nullable_to_non_nullable
                      as int?,
            shifts: freezed == shifts
                ? _value.shifts
                : shifts // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AmountByDelivertBoyImplCopyWith<$Res>
    implements $AmountByDelivertBoyCopyWith<$Res> {
  factory _$$AmountByDelivertBoyImplCopyWith(
    _$AmountByDelivertBoyImpl value,
    $Res Function(_$AmountByDelivertBoyImpl) then,
  ) = __$$AmountByDelivertBoyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "user_name") String? userName,
    @JsonKey(name: "ordercount") int? ordercount,
    @JsonKey(name: "totalamount") int? totalamount,
    @JsonKey(name: "user_role_id") int? userRoleId,
    @JsonKey(name: "company_users_id") int? companyUsersId,
    @JsonKey(name: "invoice_numbers") List<dynamic>? invoiceNumbers,
    @JsonKey(name: "cash_amount") int? cashAmount,
    @JsonKey(name: "card_amount") int? cardAmount,
    @JsonKey(name: "shifts") List<dynamic>? shifts,
  });
}

/// @nodoc
class __$$AmountByDelivertBoyImplCopyWithImpl<$Res>
    extends _$AmountByDelivertBoyCopyWithImpl<$Res, _$AmountByDelivertBoyImpl>
    implements _$$AmountByDelivertBoyImplCopyWith<$Res> {
  __$$AmountByDelivertBoyImplCopyWithImpl(
    _$AmountByDelivertBoyImpl _value,
    $Res Function(_$AmountByDelivertBoyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AmountByDelivertBoy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? ordercount = freezed,
    Object? totalamount = freezed,
    Object? userRoleId = freezed,
    Object? companyUsersId = freezed,
    Object? invoiceNumbers = freezed,
    Object? cashAmount = freezed,
    Object? cardAmount = freezed,
    Object? shifts = freezed,
  }) {
    return _then(
      _$AmountByDelivertBoyImpl(
        userName: freezed == userName
            ? _value.userName
            : userName // ignore: cast_nullable_to_non_nullable
                  as String?,
        ordercount: freezed == ordercount
            ? _value.ordercount
            : ordercount // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalamount: freezed == totalamount
            ? _value.totalamount
            : totalamount // ignore: cast_nullable_to_non_nullable
                  as int?,
        userRoleId: freezed == userRoleId
            ? _value.userRoleId
            : userRoleId // ignore: cast_nullable_to_non_nullable
                  as int?,
        companyUsersId: freezed == companyUsersId
            ? _value.companyUsersId
            : companyUsersId // ignore: cast_nullable_to_non_nullable
                  as int?,
        invoiceNumbers: freezed == invoiceNumbers
            ? _value._invoiceNumbers
            : invoiceNumbers // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        cashAmount: freezed == cashAmount
            ? _value.cashAmount
            : cashAmount // ignore: cast_nullable_to_non_nullable
                  as int?,
        cardAmount: freezed == cardAmount
            ? _value.cardAmount
            : cardAmount // ignore: cast_nullable_to_non_nullable
                  as int?,
        shifts: freezed == shifts
            ? _value._shifts
            : shifts // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AmountByDelivertBoyImpl implements _AmountByDelivertBoy {
  const _$AmountByDelivertBoyImpl({
    @JsonKey(name: "user_name") this.userName,
    @JsonKey(name: "ordercount") this.ordercount,
    @JsonKey(name: "totalamount") this.totalamount,
    @JsonKey(name: "user_role_id") this.userRoleId,
    @JsonKey(name: "company_users_id") this.companyUsersId,
    @JsonKey(name: "invoice_numbers") final List<dynamic>? invoiceNumbers,
    @JsonKey(name: "cash_amount") this.cashAmount,
    @JsonKey(name: "card_amount") this.cardAmount,
    @JsonKey(name: "shifts") final List<dynamic>? shifts,
  }) : _invoiceNumbers = invoiceNumbers,
       _shifts = shifts;

  factory _$AmountByDelivertBoyImpl.fromJson(Map<String, dynamic> json) =>
      _$$AmountByDelivertBoyImplFromJson(json);

  @override
  @JsonKey(name: "user_name")
  final String? userName;
  @override
  @JsonKey(name: "ordercount")
  final int? ordercount;
  @override
  @JsonKey(name: "totalamount")
  final int? totalamount;
  @override
  @JsonKey(name: "user_role_id")
  final int? userRoleId;
  @override
  @JsonKey(name: "company_users_id")
  final int? companyUsersId;
  final List<dynamic>? _invoiceNumbers;
  @override
  @JsonKey(name: "invoice_numbers")
  List<dynamic>? get invoiceNumbers {
    final value = _invoiceNumbers;
    if (value == null) return null;
    if (_invoiceNumbers is EqualUnmodifiableListView) return _invoiceNumbers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "cash_amount")
  final int? cashAmount;
  @override
  @JsonKey(name: "card_amount")
  final int? cardAmount;
  final List<dynamic>? _shifts;
  @override
  @JsonKey(name: "shifts")
  List<dynamic>? get shifts {
    final value = _shifts;
    if (value == null) return null;
    if (_shifts is EqualUnmodifiableListView) return _shifts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AmountByDelivertBoy(userName: $userName, ordercount: $ordercount, totalamount: $totalamount, userRoleId: $userRoleId, companyUsersId: $companyUsersId, invoiceNumbers: $invoiceNumbers, cashAmount: $cashAmount, cardAmount: $cardAmount, shifts: $shifts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmountByDelivertBoyImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.ordercount, ordercount) ||
                other.ordercount == ordercount) &&
            (identical(other.totalamount, totalamount) ||
                other.totalamount == totalamount) &&
            (identical(other.userRoleId, userRoleId) ||
                other.userRoleId == userRoleId) &&
            (identical(other.companyUsersId, companyUsersId) ||
                other.companyUsersId == companyUsersId) &&
            const DeepCollectionEquality().equals(
              other._invoiceNumbers,
              _invoiceNumbers,
            ) &&
            (identical(other.cashAmount, cashAmount) ||
                other.cashAmount == cashAmount) &&
            (identical(other.cardAmount, cardAmount) ||
                other.cardAmount == cardAmount) &&
            const DeepCollectionEquality().equals(other._shifts, _shifts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userName,
    ordercount,
    totalamount,
    userRoleId,
    companyUsersId,
    const DeepCollectionEquality().hash(_invoiceNumbers),
    cashAmount,
    cardAmount,
    const DeepCollectionEquality().hash(_shifts),
  );

  /// Create a copy of AmountByDelivertBoy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AmountByDelivertBoyImplCopyWith<_$AmountByDelivertBoyImpl> get copyWith =>
      __$$AmountByDelivertBoyImplCopyWithImpl<_$AmountByDelivertBoyImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AmountByDelivertBoyImplToJson(this);
  }
}

abstract class _AmountByDelivertBoy implements AmountByDelivertBoy {
  const factory _AmountByDelivertBoy({
    @JsonKey(name: "user_name") final String? userName,
    @JsonKey(name: "ordercount") final int? ordercount,
    @JsonKey(name: "totalamount") final int? totalamount,
    @JsonKey(name: "user_role_id") final int? userRoleId,
    @JsonKey(name: "company_users_id") final int? companyUsersId,
    @JsonKey(name: "invoice_numbers") final List<dynamic>? invoiceNumbers,
    @JsonKey(name: "cash_amount") final int? cashAmount,
    @JsonKey(name: "card_amount") final int? cardAmount,
    @JsonKey(name: "shifts") final List<dynamic>? shifts,
  }) = _$AmountByDelivertBoyImpl;

  factory _AmountByDelivertBoy.fromJson(Map<String, dynamic> json) =
      _$AmountByDelivertBoyImpl.fromJson;

  @override
  @JsonKey(name: "user_name")
  String? get userName;
  @override
  @JsonKey(name: "ordercount")
  int? get ordercount;
  @override
  @JsonKey(name: "totalamount")
  int? get totalamount;
  @override
  @JsonKey(name: "user_role_id")
  int? get userRoleId;
  @override
  @JsonKey(name: "company_users_id")
  int? get companyUsersId;
  @override
  @JsonKey(name: "invoice_numbers")
  List<dynamic>? get invoiceNumbers;
  @override
  @JsonKey(name: "cash_amount")
  int? get cashAmount;
  @override
  @JsonKey(name: "card_amount")
  int? get cardAmount;
  @override
  @JsonKey(name: "shifts")
  List<dynamic>? get shifts;

  /// Create a copy of AmountByDelivertBoy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AmountByDelivertBoyImplCopyWith<_$AmountByDelivertBoyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AmountByDevice _$AmountByDeviceFromJson(Map<String, dynamic> json) {
  return _AmountByDevice.fromJson(json);
}

/// @nodoc
mixin _$AmountByDevice {
  @JsonKey(name: "device_name")
  String? get deviceName => throw _privateConstructorUsedError;
  @JsonKey(name: "ordercount")
  int? get ordercount => throw _privateConstructorUsedError;
  @JsonKey(name: "totalamount")
  int? get totalamount => throw _privateConstructorUsedError;

  /// Serializes this AmountByDevice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AmountByDevice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AmountByDeviceCopyWith<AmountByDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmountByDeviceCopyWith<$Res> {
  factory $AmountByDeviceCopyWith(
    AmountByDevice value,
    $Res Function(AmountByDevice) then,
  ) = _$AmountByDeviceCopyWithImpl<$Res, AmountByDevice>;
  @useResult
  $Res call({
    @JsonKey(name: "device_name") String? deviceName,
    @JsonKey(name: "ordercount") int? ordercount,
    @JsonKey(name: "totalamount") int? totalamount,
  });
}

/// @nodoc
class _$AmountByDeviceCopyWithImpl<$Res, $Val extends AmountByDevice>
    implements $AmountByDeviceCopyWith<$Res> {
  _$AmountByDeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AmountByDevice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceName = freezed,
    Object? ordercount = freezed,
    Object? totalamount = freezed,
  }) {
    return _then(
      _value.copyWith(
            deviceName: freezed == deviceName
                ? _value.deviceName
                : deviceName // ignore: cast_nullable_to_non_nullable
                      as String?,
            ordercount: freezed == ordercount
                ? _value.ordercount
                : ordercount // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalamount: freezed == totalamount
                ? _value.totalamount
                : totalamount // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AmountByDeviceImplCopyWith<$Res>
    implements $AmountByDeviceCopyWith<$Res> {
  factory _$$AmountByDeviceImplCopyWith(
    _$AmountByDeviceImpl value,
    $Res Function(_$AmountByDeviceImpl) then,
  ) = __$$AmountByDeviceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "device_name") String? deviceName,
    @JsonKey(name: "ordercount") int? ordercount,
    @JsonKey(name: "totalamount") int? totalamount,
  });
}

/// @nodoc
class __$$AmountByDeviceImplCopyWithImpl<$Res>
    extends _$AmountByDeviceCopyWithImpl<$Res, _$AmountByDeviceImpl>
    implements _$$AmountByDeviceImplCopyWith<$Res> {
  __$$AmountByDeviceImplCopyWithImpl(
    _$AmountByDeviceImpl _value,
    $Res Function(_$AmountByDeviceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AmountByDevice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceName = freezed,
    Object? ordercount = freezed,
    Object? totalamount = freezed,
  }) {
    return _then(
      _$AmountByDeviceImpl(
        deviceName: freezed == deviceName
            ? _value.deviceName
            : deviceName // ignore: cast_nullable_to_non_nullable
                  as String?,
        ordercount: freezed == ordercount
            ? _value.ordercount
            : ordercount // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalamount: freezed == totalamount
            ? _value.totalamount
            : totalamount // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AmountByDeviceImpl implements _AmountByDevice {
  const _$AmountByDeviceImpl({
    @JsonKey(name: "device_name") this.deviceName,
    @JsonKey(name: "ordercount") this.ordercount,
    @JsonKey(name: "totalamount") this.totalamount,
  });

  factory _$AmountByDeviceImpl.fromJson(Map<String, dynamic> json) =>
      _$$AmountByDeviceImplFromJson(json);

  @override
  @JsonKey(name: "device_name")
  final String? deviceName;
  @override
  @JsonKey(name: "ordercount")
  final int? ordercount;
  @override
  @JsonKey(name: "totalamount")
  final int? totalamount;

  @override
  String toString() {
    return 'AmountByDevice(deviceName: $deviceName, ordercount: $ordercount, totalamount: $totalamount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmountByDeviceImpl &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.ordercount, ordercount) ||
                other.ordercount == ordercount) &&
            (identical(other.totalamount, totalamount) ||
                other.totalamount == totalamount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, deviceName, ordercount, totalamount);

  /// Create a copy of AmountByDevice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AmountByDeviceImplCopyWith<_$AmountByDeviceImpl> get copyWith =>
      __$$AmountByDeviceImplCopyWithImpl<_$AmountByDeviceImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AmountByDeviceImplToJson(this);
  }
}

abstract class _AmountByDevice implements AmountByDevice {
  const factory _AmountByDevice({
    @JsonKey(name: "device_name") final String? deviceName,
    @JsonKey(name: "ordercount") final int? ordercount,
    @JsonKey(name: "totalamount") final int? totalamount,
  }) = _$AmountByDeviceImpl;

  factory _AmountByDevice.fromJson(Map<String, dynamic> json) =
      _$AmountByDeviceImpl.fromJson;

  @override
  @JsonKey(name: "device_name")
  String? get deviceName;
  @override
  @JsonKey(name: "ordercount")
  int? get ordercount;
  @override
  @JsonKey(name: "totalamount")
  int? get totalamount;

  /// Create a copy of AmountByDevice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AmountByDeviceImplCopyWith<_$AmountByDeviceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BillTypeDetail _$BillTypeDetailFromJson(Map<String, dynamic> json) {
  return _BillTypeDetail.fromJson(json);
}

/// @nodoc
mixin _$BillTypeDetail {
  @JsonKey(name: "order_option_name")
  String? get orderOptionName => throw _privateConstructorUsedError;
  @JsonKey(name: "totalamount")
  int? get totalamount => throw _privateConstructorUsedError;
  @JsonKey(name: "ordercount")
  int? get ordercount => throw _privateConstructorUsedError;

  /// Serializes this BillTypeDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BillTypeDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BillTypeDetailCopyWith<BillTypeDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillTypeDetailCopyWith<$Res> {
  factory $BillTypeDetailCopyWith(
    BillTypeDetail value,
    $Res Function(BillTypeDetail) then,
  ) = _$BillTypeDetailCopyWithImpl<$Res, BillTypeDetail>;
  @useResult
  $Res call({
    @JsonKey(name: "order_option_name") String? orderOptionName,
    @JsonKey(name: "totalamount") int? totalamount,
    @JsonKey(name: "ordercount") int? ordercount,
  });
}

/// @nodoc
class _$BillTypeDetailCopyWithImpl<$Res, $Val extends BillTypeDetail>
    implements $BillTypeDetailCopyWith<$Res> {
  _$BillTypeDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BillTypeDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderOptionName = freezed,
    Object? totalamount = freezed,
    Object? ordercount = freezed,
  }) {
    return _then(
      _value.copyWith(
            orderOptionName: freezed == orderOptionName
                ? _value.orderOptionName
                : orderOptionName // ignore: cast_nullable_to_non_nullable
                      as String?,
            totalamount: freezed == totalamount
                ? _value.totalamount
                : totalamount // ignore: cast_nullable_to_non_nullable
                      as int?,
            ordercount: freezed == ordercount
                ? _value.ordercount
                : ordercount // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BillTypeDetailImplCopyWith<$Res>
    implements $BillTypeDetailCopyWith<$Res> {
  factory _$$BillTypeDetailImplCopyWith(
    _$BillTypeDetailImpl value,
    $Res Function(_$BillTypeDetailImpl) then,
  ) = __$$BillTypeDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "order_option_name") String? orderOptionName,
    @JsonKey(name: "totalamount") int? totalamount,
    @JsonKey(name: "ordercount") int? ordercount,
  });
}

/// @nodoc
class __$$BillTypeDetailImplCopyWithImpl<$Res>
    extends _$BillTypeDetailCopyWithImpl<$Res, _$BillTypeDetailImpl>
    implements _$$BillTypeDetailImplCopyWith<$Res> {
  __$$BillTypeDetailImplCopyWithImpl(
    _$BillTypeDetailImpl _value,
    $Res Function(_$BillTypeDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BillTypeDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderOptionName = freezed,
    Object? totalamount = freezed,
    Object? ordercount = freezed,
  }) {
    return _then(
      _$BillTypeDetailImpl(
        orderOptionName: freezed == orderOptionName
            ? _value.orderOptionName
            : orderOptionName // ignore: cast_nullable_to_non_nullable
                  as String?,
        totalamount: freezed == totalamount
            ? _value.totalamount
            : totalamount // ignore: cast_nullable_to_non_nullable
                  as int?,
        ordercount: freezed == ordercount
            ? _value.ordercount
            : ordercount // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BillTypeDetailImpl implements _BillTypeDetail {
  const _$BillTypeDetailImpl({
    @JsonKey(name: "order_option_name") this.orderOptionName,
    @JsonKey(name: "totalamount") this.totalamount,
    @JsonKey(name: "ordercount") this.ordercount,
  });

  factory _$BillTypeDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillTypeDetailImplFromJson(json);

  @override
  @JsonKey(name: "order_option_name")
  final String? orderOptionName;
  @override
  @JsonKey(name: "totalamount")
  final int? totalamount;
  @override
  @JsonKey(name: "ordercount")
  final int? ordercount;

  @override
  String toString() {
    return 'BillTypeDetail(orderOptionName: $orderOptionName, totalamount: $totalamount, ordercount: $ordercount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillTypeDetailImpl &&
            (identical(other.orderOptionName, orderOptionName) ||
                other.orderOptionName == orderOptionName) &&
            (identical(other.totalamount, totalamount) ||
                other.totalamount == totalamount) &&
            (identical(other.ordercount, ordercount) ||
                other.ordercount == ordercount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, orderOptionName, totalamount, ordercount);

  /// Create a copy of BillTypeDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BillTypeDetailImplCopyWith<_$BillTypeDetailImpl> get copyWith =>
      __$$BillTypeDetailImplCopyWithImpl<_$BillTypeDetailImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BillTypeDetailImplToJson(this);
  }
}

abstract class _BillTypeDetail implements BillTypeDetail {
  const factory _BillTypeDetail({
    @JsonKey(name: "order_option_name") final String? orderOptionName,
    @JsonKey(name: "totalamount") final int? totalamount,
    @JsonKey(name: "ordercount") final int? ordercount,
  }) = _$BillTypeDetailImpl;

  factory _BillTypeDetail.fromJson(Map<String, dynamic> json) =
      _$BillTypeDetailImpl.fromJson;

  @override
  @JsonKey(name: "order_option_name")
  String? get orderOptionName;
  @override
  @JsonKey(name: "totalamount")
  int? get totalamount;
  @override
  @JsonKey(name: "ordercount")
  int? get ordercount;

  /// Create a copy of BillTypeDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BillTypeDetailImplCopyWith<_$BillTypeDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryPartner _$DeliveryPartnerFromJson(Map<String, dynamic> json) {
  return _DeliveryPartner.fromJson(json);
}

/// @nodoc
mixin _$DeliveryPartner {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "ordercount")
  int? get ordercount => throw _privateConstructorUsedError;
  @JsonKey(name: "totalamount")
  int? get totalamount => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_partner_id")
  int? get deliveryPartnerId => throw _privateConstructorUsedError;

  /// Serializes this DeliveryPartner to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryPartner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryPartnerCopyWith<DeliveryPartner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryPartnerCopyWith<$Res> {
  factory $DeliveryPartnerCopyWith(
    DeliveryPartner value,
    $Res Function(DeliveryPartner) then,
  ) = _$DeliveryPartnerCopyWithImpl<$Res, DeliveryPartner>;
  @useResult
  $Res call({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "ordercount") int? ordercount,
    @JsonKey(name: "totalamount") int? totalamount,
    @JsonKey(name: "delivery_partner_id") int? deliveryPartnerId,
  });
}

/// @nodoc
class _$DeliveryPartnerCopyWithImpl<$Res, $Val extends DeliveryPartner>
    implements $DeliveryPartnerCopyWith<$Res> {
  _$DeliveryPartnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryPartner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? ordercount = freezed,
    Object? totalamount = freezed,
    Object? deliveryPartnerId = freezed,
  }) {
    return _then(
      _value.copyWith(
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            ordercount: freezed == ordercount
                ? _value.ordercount
                : ordercount // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalamount: freezed == totalamount
                ? _value.totalamount
                : totalamount // ignore: cast_nullable_to_non_nullable
                      as int?,
            deliveryPartnerId: freezed == deliveryPartnerId
                ? _value.deliveryPartnerId
                : deliveryPartnerId // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeliveryPartnerImplCopyWith<$Res>
    implements $DeliveryPartnerCopyWith<$Res> {
  factory _$$DeliveryPartnerImplCopyWith(
    _$DeliveryPartnerImpl value,
    $Res Function(_$DeliveryPartnerImpl) then,
  ) = __$$DeliveryPartnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "ordercount") int? ordercount,
    @JsonKey(name: "totalamount") int? totalamount,
    @JsonKey(name: "delivery_partner_id") int? deliveryPartnerId,
  });
}

/// @nodoc
class __$$DeliveryPartnerImplCopyWithImpl<$Res>
    extends _$DeliveryPartnerCopyWithImpl<$Res, _$DeliveryPartnerImpl>
    implements _$$DeliveryPartnerImplCopyWith<$Res> {
  __$$DeliveryPartnerImplCopyWithImpl(
    _$DeliveryPartnerImpl _value,
    $Res Function(_$DeliveryPartnerImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeliveryPartner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? ordercount = freezed,
    Object? totalamount = freezed,
    Object? deliveryPartnerId = freezed,
  }) {
    return _then(
      _$DeliveryPartnerImpl(
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        ordercount: freezed == ordercount
            ? _value.ordercount
            : ordercount // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalamount: freezed == totalamount
            ? _value.totalamount
            : totalamount // ignore: cast_nullable_to_non_nullable
                  as int?,
        deliveryPartnerId: freezed == deliveryPartnerId
            ? _value.deliveryPartnerId
            : deliveryPartnerId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryPartnerImpl implements _DeliveryPartner {
  const _$DeliveryPartnerImpl({
    @JsonKey(name: "name") this.name,
    @JsonKey(name: "ordercount") this.ordercount,
    @JsonKey(name: "totalamount") this.totalamount,
    @JsonKey(name: "delivery_partner_id") this.deliveryPartnerId,
  });

  factory _$DeliveryPartnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryPartnerImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "ordercount")
  final int? ordercount;
  @override
  @JsonKey(name: "totalamount")
  final int? totalamount;
  @override
  @JsonKey(name: "delivery_partner_id")
  final int? deliveryPartnerId;

  @override
  String toString() {
    return 'DeliveryPartner(name: $name, ordercount: $ordercount, totalamount: $totalamount, deliveryPartnerId: $deliveryPartnerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryPartnerImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.ordercount, ordercount) ||
                other.ordercount == ordercount) &&
            (identical(other.totalamount, totalamount) ||
                other.totalamount == totalamount) &&
            (identical(other.deliveryPartnerId, deliveryPartnerId) ||
                other.deliveryPartnerId == deliveryPartnerId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    ordercount,
    totalamount,
    deliveryPartnerId,
  );

  /// Create a copy of DeliveryPartner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryPartnerImplCopyWith<_$DeliveryPartnerImpl> get copyWith =>
      __$$DeliveryPartnerImplCopyWithImpl<_$DeliveryPartnerImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryPartnerImplToJson(this);
  }
}

abstract class _DeliveryPartner implements DeliveryPartner {
  const factory _DeliveryPartner({
    @JsonKey(name: "name") final String? name,
    @JsonKey(name: "ordercount") final int? ordercount,
    @JsonKey(name: "totalamount") final int? totalamount,
    @JsonKey(name: "delivery_partner_id") final int? deliveryPartnerId,
  }) = _$DeliveryPartnerImpl;

  factory _DeliveryPartner.fromJson(Map<String, dynamic> json) =
      _$DeliveryPartnerImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "ordercount")
  int? get ordercount;
  @override
  @JsonKey(name: "totalamount")
  int? get totalamount;
  @override
  @JsonKey(name: "delivery_partner_id")
  int? get deliveryPartnerId;

  /// Create a copy of DeliveryPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryPartnerImplCopyWith<_$DeliveryPartnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DiscBillTypeDetail _$DiscBillTypeDetailFromJson(Map<String, dynamic> json) {
  return _DiscBillTypeDetail.fromJson(json);
}

/// @nodoc
mixin _$DiscBillTypeDetail {
  @JsonKey(name: "order_option_name")
  String? get orderOptionName => throw _privateConstructorUsedError;
  @JsonKey(name: "ordercount")
  int? get ordercount => throw _privateConstructorUsedError;
  @JsonKey(name: "disc_amount")
  int? get discAmount => throw _privateConstructorUsedError;

  /// Serializes this DiscBillTypeDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiscBillTypeDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscBillTypeDetailCopyWith<DiscBillTypeDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscBillTypeDetailCopyWith<$Res> {
  factory $DiscBillTypeDetailCopyWith(
    DiscBillTypeDetail value,
    $Res Function(DiscBillTypeDetail) then,
  ) = _$DiscBillTypeDetailCopyWithImpl<$Res, DiscBillTypeDetail>;
  @useResult
  $Res call({
    @JsonKey(name: "order_option_name") String? orderOptionName,
    @JsonKey(name: "ordercount") int? ordercount,
    @JsonKey(name: "disc_amount") int? discAmount,
  });
}

/// @nodoc
class _$DiscBillTypeDetailCopyWithImpl<$Res, $Val extends DiscBillTypeDetail>
    implements $DiscBillTypeDetailCopyWith<$Res> {
  _$DiscBillTypeDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscBillTypeDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderOptionName = freezed,
    Object? ordercount = freezed,
    Object? discAmount = freezed,
  }) {
    return _then(
      _value.copyWith(
            orderOptionName: freezed == orderOptionName
                ? _value.orderOptionName
                : orderOptionName // ignore: cast_nullable_to_non_nullable
                      as String?,
            ordercount: freezed == ordercount
                ? _value.ordercount
                : ordercount // ignore: cast_nullable_to_non_nullable
                      as int?,
            discAmount: freezed == discAmount
                ? _value.discAmount
                : discAmount // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DiscBillTypeDetailImplCopyWith<$Res>
    implements $DiscBillTypeDetailCopyWith<$Res> {
  factory _$$DiscBillTypeDetailImplCopyWith(
    _$DiscBillTypeDetailImpl value,
    $Res Function(_$DiscBillTypeDetailImpl) then,
  ) = __$$DiscBillTypeDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "order_option_name") String? orderOptionName,
    @JsonKey(name: "ordercount") int? ordercount,
    @JsonKey(name: "disc_amount") int? discAmount,
  });
}

/// @nodoc
class __$$DiscBillTypeDetailImplCopyWithImpl<$Res>
    extends _$DiscBillTypeDetailCopyWithImpl<$Res, _$DiscBillTypeDetailImpl>
    implements _$$DiscBillTypeDetailImplCopyWith<$Res> {
  __$$DiscBillTypeDetailImplCopyWithImpl(
    _$DiscBillTypeDetailImpl _value,
    $Res Function(_$DiscBillTypeDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DiscBillTypeDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderOptionName = freezed,
    Object? ordercount = freezed,
    Object? discAmount = freezed,
  }) {
    return _then(
      _$DiscBillTypeDetailImpl(
        orderOptionName: freezed == orderOptionName
            ? _value.orderOptionName
            : orderOptionName // ignore: cast_nullable_to_non_nullable
                  as String?,
        ordercount: freezed == ordercount
            ? _value.ordercount
            : ordercount // ignore: cast_nullable_to_non_nullable
                  as int?,
        discAmount: freezed == discAmount
            ? _value.discAmount
            : discAmount // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscBillTypeDetailImpl implements _DiscBillTypeDetail {
  const _$DiscBillTypeDetailImpl({
    @JsonKey(name: "order_option_name") this.orderOptionName,
    @JsonKey(name: "ordercount") this.ordercount,
    @JsonKey(name: "disc_amount") this.discAmount,
  });

  factory _$DiscBillTypeDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscBillTypeDetailImplFromJson(json);

  @override
  @JsonKey(name: "order_option_name")
  final String? orderOptionName;
  @override
  @JsonKey(name: "ordercount")
  final int? ordercount;
  @override
  @JsonKey(name: "disc_amount")
  final int? discAmount;

  @override
  String toString() {
    return 'DiscBillTypeDetail(orderOptionName: $orderOptionName, ordercount: $ordercount, discAmount: $discAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscBillTypeDetailImpl &&
            (identical(other.orderOptionName, orderOptionName) ||
                other.orderOptionName == orderOptionName) &&
            (identical(other.ordercount, ordercount) ||
                other.ordercount == ordercount) &&
            (identical(other.discAmount, discAmount) ||
                other.discAmount == discAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, orderOptionName, ordercount, discAmount);

  /// Create a copy of DiscBillTypeDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscBillTypeDetailImplCopyWith<_$DiscBillTypeDetailImpl> get copyWith =>
      __$$DiscBillTypeDetailImplCopyWithImpl<_$DiscBillTypeDetailImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscBillTypeDetailImplToJson(this);
  }
}

abstract class _DiscBillTypeDetail implements DiscBillTypeDetail {
  const factory _DiscBillTypeDetail({
    @JsonKey(name: "order_option_name") final String? orderOptionName,
    @JsonKey(name: "ordercount") final int? ordercount,
    @JsonKey(name: "disc_amount") final int? discAmount,
  }) = _$DiscBillTypeDetailImpl;

  factory _DiscBillTypeDetail.fromJson(Map<String, dynamic> json) =
      _$DiscBillTypeDetailImpl.fromJson;

  @override
  @JsonKey(name: "order_option_name")
  String? get orderOptionName;
  @override
  @JsonKey(name: "ordercount")
  int? get ordercount;
  @override
  @JsonKey(name: "disc_amount")
  int? get discAmount;

  /// Create a copy of DiscBillTypeDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscBillTypeDetailImplCopyWith<_$DiscBillTypeDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ModeOfPayments _$ModeOfPaymentsFromJson(Map<String, dynamic> json) {
  return _ModeOfPayments.fromJson(json);
}

/// @nodoc
mixin _$ModeOfPayments {
  @JsonKey(name: "Cash")
  int? get cash => throw _privateConstructorUsedError;
  @JsonKey(name: "Card")
  int? get card => throw _privateConstructorUsedError;
  @JsonKey(name: "Online")
  int? get online => throw _privateConstructorUsedError;
  @JsonKey(name: "Credit")
  int? get credit => throw _privateConstructorUsedError;

  /// Serializes this ModeOfPayments to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModeOfPayments
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModeOfPaymentsCopyWith<ModeOfPayments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModeOfPaymentsCopyWith<$Res> {
  factory $ModeOfPaymentsCopyWith(
    ModeOfPayments value,
    $Res Function(ModeOfPayments) then,
  ) = _$ModeOfPaymentsCopyWithImpl<$Res, ModeOfPayments>;
  @useResult
  $Res call({
    @JsonKey(name: "Cash") int? cash,
    @JsonKey(name: "Card") int? card,
    @JsonKey(name: "Online") int? online,
    @JsonKey(name: "Credit") int? credit,
  });
}

/// @nodoc
class _$ModeOfPaymentsCopyWithImpl<$Res, $Val extends ModeOfPayments>
    implements $ModeOfPaymentsCopyWith<$Res> {
  _$ModeOfPaymentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModeOfPayments
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cash = freezed,
    Object? card = freezed,
    Object? online = freezed,
    Object? credit = freezed,
  }) {
    return _then(
      _value.copyWith(
            cash: freezed == cash
                ? _value.cash
                : cash // ignore: cast_nullable_to_non_nullable
                      as int?,
            card: freezed == card
                ? _value.card
                : card // ignore: cast_nullable_to_non_nullable
                      as int?,
            online: freezed == online
                ? _value.online
                : online // ignore: cast_nullable_to_non_nullable
                      as int?,
            credit: freezed == credit
                ? _value.credit
                : credit // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ModeOfPaymentsImplCopyWith<$Res>
    implements $ModeOfPaymentsCopyWith<$Res> {
  factory _$$ModeOfPaymentsImplCopyWith(
    _$ModeOfPaymentsImpl value,
    $Res Function(_$ModeOfPaymentsImpl) then,
  ) = __$$ModeOfPaymentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "Cash") int? cash,
    @JsonKey(name: "Card") int? card,
    @JsonKey(name: "Online") int? online,
    @JsonKey(name: "Credit") int? credit,
  });
}

/// @nodoc
class __$$ModeOfPaymentsImplCopyWithImpl<$Res>
    extends _$ModeOfPaymentsCopyWithImpl<$Res, _$ModeOfPaymentsImpl>
    implements _$$ModeOfPaymentsImplCopyWith<$Res> {
  __$$ModeOfPaymentsImplCopyWithImpl(
    _$ModeOfPaymentsImpl _value,
    $Res Function(_$ModeOfPaymentsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ModeOfPayments
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cash = freezed,
    Object? card = freezed,
    Object? online = freezed,
    Object? credit = freezed,
  }) {
    return _then(
      _$ModeOfPaymentsImpl(
        cash: freezed == cash
            ? _value.cash
            : cash // ignore: cast_nullable_to_non_nullable
                  as int?,
        card: freezed == card
            ? _value.card
            : card // ignore: cast_nullable_to_non_nullable
                  as int?,
        online: freezed == online
            ? _value.online
            : online // ignore: cast_nullable_to_non_nullable
                  as int?,
        credit: freezed == credit
            ? _value.credit
            : credit // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ModeOfPaymentsImpl implements _ModeOfPayments {
  const _$ModeOfPaymentsImpl({
    @JsonKey(name: "Cash") this.cash,
    @JsonKey(name: "Card") this.card,
    @JsonKey(name: "Online") this.online,
    @JsonKey(name: "Credit") this.credit,
  });

  factory _$ModeOfPaymentsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModeOfPaymentsImplFromJson(json);

  @override
  @JsonKey(name: "Cash")
  final int? cash;
  @override
  @JsonKey(name: "Card")
  final int? card;
  @override
  @JsonKey(name: "Online")
  final int? online;
  @override
  @JsonKey(name: "Credit")
  final int? credit;

  @override
  String toString() {
    return 'ModeOfPayments(cash: $cash, card: $card, online: $online, credit: $credit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModeOfPaymentsImpl &&
            (identical(other.cash, cash) || other.cash == cash) &&
            (identical(other.card, card) || other.card == card) &&
            (identical(other.online, online) || other.online == online) &&
            (identical(other.credit, credit) || other.credit == credit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cash, card, online, credit);

  /// Create a copy of ModeOfPayments
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModeOfPaymentsImplCopyWith<_$ModeOfPaymentsImpl> get copyWith =>
      __$$ModeOfPaymentsImplCopyWithImpl<_$ModeOfPaymentsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ModeOfPaymentsImplToJson(this);
  }
}

abstract class _ModeOfPayments implements ModeOfPayments {
  const factory _ModeOfPayments({
    @JsonKey(name: "Cash") final int? cash,
    @JsonKey(name: "Card") final int? card,
    @JsonKey(name: "Online") final int? online,
    @JsonKey(name: "Credit") final int? credit,
  }) = _$ModeOfPaymentsImpl;

  factory _ModeOfPayments.fromJson(Map<String, dynamic> json) =
      _$ModeOfPaymentsImpl.fromJson;

  @override
  @JsonKey(name: "Cash")
  int? get cash;
  @override
  @JsonKey(name: "Card")
  int? get card;
  @override
  @JsonKey(name: "Online")
  int? get online;
  @override
  @JsonKey(name: "Credit")
  int? get credit;

  /// Create a copy of ModeOfPayments
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModeOfPaymentsImplCopyWith<_$ModeOfPaymentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderCount _$OrderCountFromJson(Map<String, dynamic> json) {
  return _OrderCount.fromJson(json);
}

/// @nodoc
mixin _$OrderCount {
  @JsonKey(name: "order_option_name")
  String? get orderOptionName => throw _privateConstructorUsedError;
  @JsonKey(name: "ordercount")
  int? get ordercount => throw _privateConstructorUsedError;
  @JsonKey(name: "avg_sales")
  int? get avgSales => throw _privateConstructorUsedError;

  /// Serializes this OrderCount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderCountCopyWith<OrderCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCountCopyWith<$Res> {
  factory $OrderCountCopyWith(
    OrderCount value,
    $Res Function(OrderCount) then,
  ) = _$OrderCountCopyWithImpl<$Res, OrderCount>;
  @useResult
  $Res call({
    @JsonKey(name: "order_option_name") String? orderOptionName,
    @JsonKey(name: "ordercount") int? ordercount,
    @JsonKey(name: "avg_sales") int? avgSales,
  });
}

/// @nodoc
class _$OrderCountCopyWithImpl<$Res, $Val extends OrderCount>
    implements $OrderCountCopyWith<$Res> {
  _$OrderCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderOptionName = freezed,
    Object? ordercount = freezed,
    Object? avgSales = freezed,
  }) {
    return _then(
      _value.copyWith(
            orderOptionName: freezed == orderOptionName
                ? _value.orderOptionName
                : orderOptionName // ignore: cast_nullable_to_non_nullable
                      as String?,
            ordercount: freezed == ordercount
                ? _value.ordercount
                : ordercount // ignore: cast_nullable_to_non_nullable
                      as int?,
            avgSales: freezed == avgSales
                ? _value.avgSales
                : avgSales // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderCountImplCopyWith<$Res>
    implements $OrderCountCopyWith<$Res> {
  factory _$$OrderCountImplCopyWith(
    _$OrderCountImpl value,
    $Res Function(_$OrderCountImpl) then,
  ) = __$$OrderCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "order_option_name") String? orderOptionName,
    @JsonKey(name: "ordercount") int? ordercount,
    @JsonKey(name: "avg_sales") int? avgSales,
  });
}

/// @nodoc
class __$$OrderCountImplCopyWithImpl<$Res>
    extends _$OrderCountCopyWithImpl<$Res, _$OrderCountImpl>
    implements _$$OrderCountImplCopyWith<$Res> {
  __$$OrderCountImplCopyWithImpl(
    _$OrderCountImpl _value,
    $Res Function(_$OrderCountImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderOptionName = freezed,
    Object? ordercount = freezed,
    Object? avgSales = freezed,
  }) {
    return _then(
      _$OrderCountImpl(
        orderOptionName: freezed == orderOptionName
            ? _value.orderOptionName
            : orderOptionName // ignore: cast_nullable_to_non_nullable
                  as String?,
        ordercount: freezed == ordercount
            ? _value.ordercount
            : ordercount // ignore: cast_nullable_to_non_nullable
                  as int?,
        avgSales: freezed == avgSales
            ? _value.avgSales
            : avgSales // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderCountImpl implements _OrderCount {
  const _$OrderCountImpl({
    @JsonKey(name: "order_option_name") this.orderOptionName,
    @JsonKey(name: "ordercount") this.ordercount,
    @JsonKey(name: "avg_sales") this.avgSales,
  });

  factory _$OrderCountImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderCountImplFromJson(json);

  @override
  @JsonKey(name: "order_option_name")
  final String? orderOptionName;
  @override
  @JsonKey(name: "ordercount")
  final int? ordercount;
  @override
  @JsonKey(name: "avg_sales")
  final int? avgSales;

  @override
  String toString() {
    return 'OrderCount(orderOptionName: $orderOptionName, ordercount: $ordercount, avgSales: $avgSales)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderCountImpl &&
            (identical(other.orderOptionName, orderOptionName) ||
                other.orderOptionName == orderOptionName) &&
            (identical(other.ordercount, ordercount) ||
                other.ordercount == ordercount) &&
            (identical(other.avgSales, avgSales) ||
                other.avgSales == avgSales));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, orderOptionName, ordercount, avgSales);

  /// Create a copy of OrderCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderCountImplCopyWith<_$OrderCountImpl> get copyWith =>
      __$$OrderCountImplCopyWithImpl<_$OrderCountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderCountImplToJson(this);
  }
}

abstract class _OrderCount implements OrderCount {
  const factory _OrderCount({
    @JsonKey(name: "order_option_name") final String? orderOptionName,
    @JsonKey(name: "ordercount") final int? ordercount,
    @JsonKey(name: "avg_sales") final int? avgSales,
  }) = _$OrderCountImpl;

  factory _OrderCount.fromJson(Map<String, dynamic> json) =
      _$OrderCountImpl.fromJson;

  @override
  @JsonKey(name: "order_option_name")
  String? get orderOptionName;
  @override
  @JsonKey(name: "ordercount")
  int? get ordercount;
  @override
  @JsonKey(name: "avg_sales")
  int? get avgSales;

  /// Create a copy of OrderCount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderCountImplCopyWith<_$OrderCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaxDetail _$PaxDetailFromJson(Map<String, dynamic> json) {
  return _PaxDetail.fromJson(json);
}

/// @nodoc
mixin _$PaxDetail {
  @JsonKey(name: "order_option_name")
  String? get orderOptionName => throw _privateConstructorUsedError;
  @JsonKey(name: "pax")
  int? get pax => throw _privateConstructorUsedError;
  @JsonKey(name: "avgPax")
  int? get avgPax => throw _privateConstructorUsedError;

  /// Serializes this PaxDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaxDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaxDetailCopyWith<PaxDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaxDetailCopyWith<$Res> {
  factory $PaxDetailCopyWith(PaxDetail value, $Res Function(PaxDetail) then) =
      _$PaxDetailCopyWithImpl<$Res, PaxDetail>;
  @useResult
  $Res call({
    @JsonKey(name: "order_option_name") String? orderOptionName,
    @JsonKey(name: "pax") int? pax,
    @JsonKey(name: "avgPax") int? avgPax,
  });
}

/// @nodoc
class _$PaxDetailCopyWithImpl<$Res, $Val extends PaxDetail>
    implements $PaxDetailCopyWith<$Res> {
  _$PaxDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaxDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderOptionName = freezed,
    Object? pax = freezed,
    Object? avgPax = freezed,
  }) {
    return _then(
      _value.copyWith(
            orderOptionName: freezed == orderOptionName
                ? _value.orderOptionName
                : orderOptionName // ignore: cast_nullable_to_non_nullable
                      as String?,
            pax: freezed == pax
                ? _value.pax
                : pax // ignore: cast_nullable_to_non_nullable
                      as int?,
            avgPax: freezed == avgPax
                ? _value.avgPax
                : avgPax // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaxDetailImplCopyWith<$Res>
    implements $PaxDetailCopyWith<$Res> {
  factory _$$PaxDetailImplCopyWith(
    _$PaxDetailImpl value,
    $Res Function(_$PaxDetailImpl) then,
  ) = __$$PaxDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "order_option_name") String? orderOptionName,
    @JsonKey(name: "pax") int? pax,
    @JsonKey(name: "avgPax") int? avgPax,
  });
}

/// @nodoc
class __$$PaxDetailImplCopyWithImpl<$Res>
    extends _$PaxDetailCopyWithImpl<$Res, _$PaxDetailImpl>
    implements _$$PaxDetailImplCopyWith<$Res> {
  __$$PaxDetailImplCopyWithImpl(
    _$PaxDetailImpl _value,
    $Res Function(_$PaxDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaxDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderOptionName = freezed,
    Object? pax = freezed,
    Object? avgPax = freezed,
  }) {
    return _then(
      _$PaxDetailImpl(
        orderOptionName: freezed == orderOptionName
            ? _value.orderOptionName
            : orderOptionName // ignore: cast_nullable_to_non_nullable
                  as String?,
        pax: freezed == pax
            ? _value.pax
            : pax // ignore: cast_nullable_to_non_nullable
                  as int?,
        avgPax: freezed == avgPax
            ? _value.avgPax
            : avgPax // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaxDetailImpl implements _PaxDetail {
  const _$PaxDetailImpl({
    @JsonKey(name: "order_option_name") this.orderOptionName,
    @JsonKey(name: "pax") this.pax,
    @JsonKey(name: "avgPax") this.avgPax,
  });

  factory _$PaxDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaxDetailImplFromJson(json);

  @override
  @JsonKey(name: "order_option_name")
  final String? orderOptionName;
  @override
  @JsonKey(name: "pax")
  final int? pax;
  @override
  @JsonKey(name: "avgPax")
  final int? avgPax;

  @override
  String toString() {
    return 'PaxDetail(orderOptionName: $orderOptionName, pax: $pax, avgPax: $avgPax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaxDetailImpl &&
            (identical(other.orderOptionName, orderOptionName) ||
                other.orderOptionName == orderOptionName) &&
            (identical(other.pax, pax) || other.pax == pax) &&
            (identical(other.avgPax, avgPax) || other.avgPax == avgPax));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, orderOptionName, pax, avgPax);

  /// Create a copy of PaxDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaxDetailImplCopyWith<_$PaxDetailImpl> get copyWith =>
      __$$PaxDetailImplCopyWithImpl<_$PaxDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaxDetailImplToJson(this);
  }
}

abstract class _PaxDetail implements PaxDetail {
  const factory _PaxDetail({
    @JsonKey(name: "order_option_name") final String? orderOptionName,
    @JsonKey(name: "pax") final int? pax,
    @JsonKey(name: "avgPax") final int? avgPax,
  }) = _$PaxDetailImpl;

  factory _PaxDetail.fromJson(Map<String, dynamic> json) =
      _$PaxDetailImpl.fromJson;

  @override
  @JsonKey(name: "order_option_name")
  String? get orderOptionName;
  @override
  @JsonKey(name: "pax")
  int? get pax;
  @override
  @JsonKey(name: "avgPax")
  int? get avgPax;

  /// Create a copy of PaxDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaxDetailImplCopyWith<_$PaxDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  @JsonKey(name: "account_head_name")
  String? get accountHeadName => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  int? get amount => throw _privateConstructorUsedError;

  /// Serializes this Datum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call({
    @JsonKey(name: "account_head_name") String? accountHeadName,
    @JsonKey(name: "amount") int? amount,
  });
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? accountHeadName = freezed, Object? amount = freezed}) {
    return _then(
      _value.copyWith(
            accountHeadName: freezed == accountHeadName
                ? _value.accountHeadName
                : accountHeadName // ignore: cast_nullable_to_non_nullable
                      as String?,
            amount: freezed == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
    _$DatumImpl value,
    $Res Function(_$DatumImpl) then,
  ) = __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "account_head_name") String? accountHeadName,
    @JsonKey(name: "amount") int? amount,
  });
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$DatumCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
    _$DatumImpl _value,
    $Res Function(_$DatumImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? accountHeadName = freezed, Object? amount = freezed}) {
    return _then(
      _$DatumImpl(
        accountHeadName: freezed == accountHeadName
            ? _value.accountHeadName
            : accountHeadName // ignore: cast_nullable_to_non_nullable
                  as String?,
        amount: freezed == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  const _$DatumImpl({
    @JsonKey(name: "account_head_name") this.accountHeadName,
    @JsonKey(name: "amount") this.amount,
  });

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  @JsonKey(name: "account_head_name")
  final String? accountHeadName;
  @override
  @JsonKey(name: "amount")
  final int? amount;

  @override
  String toString() {
    return 'Datum(accountHeadName: $accountHeadName, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.accountHeadName, accountHeadName) ||
                other.accountHeadName == accountHeadName) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accountHeadName, amount);

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(this);
  }
}

abstract class _Datum implements Datum {
  const factory _Datum({
    @JsonKey(name: "account_head_name") final String? accountHeadName,
    @JsonKey(name: "amount") final int? amount,
  }) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  @JsonKey(name: "account_head_name")
  String? get accountHeadName;
  @override
  @JsonKey(name: "amount")
  int? get amount;

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
