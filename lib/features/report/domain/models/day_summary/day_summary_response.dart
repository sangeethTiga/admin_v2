// import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// import 'dart:convert';

part 'day_summary_response.freezed.dart';
part 'day_summary_response.g.dart';

@freezed
class DaySummaryResponse with _$DaySummaryResponse {
  const factory DaySummaryResponse({
//     @JsonKey(name: "mode_of_payments")
// ModeOfPayments? modeOfPayments,
     @JsonKey(name: "mode_of_payments")List <ModeOfPayments>? modeOfPayments,
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
  }) = _DaySummaryResponse;

  factory DaySummaryResponse.fromJson(Map<String, dynamic> json) =>
      _$DaySummaryResponseFromJson(json);
}

@freezed
class AmountByDelivertBoy with _$AmountByDelivertBoy {
  const factory AmountByDelivertBoy({
    @JsonKey(name: "user_name") String? userName,
    @JsonKey(name: "ordercount") int? ordercount,
    @JsonKey(name: "totalamount") int? totalamount,
    @JsonKey(name: "user_role_id") int? userRoleId,
    @JsonKey(name: "company_users_id") int? companyUsersId,
    @JsonKey(name: "invoice_numbers") List<dynamic>? invoiceNumbers,
    @JsonKey(name: "cash_amount") int? cashAmount,
    @JsonKey(name: "card_amount") int? cardAmount,
    @JsonKey(name: "shifts") List<dynamic>? shifts,
  }) = _AmountByDelivertBoy;

  factory AmountByDelivertBoy.fromJson(Map<String, dynamic> json) =>
      _$AmountByDelivertBoyFromJson(json);
}

@freezed
class AmountByDevice with _$AmountByDevice {
  const factory AmountByDevice({
    @JsonKey(name: "device_name") String? deviceName,
    @JsonKey(name: "ordercount") int? ordercount,
    @JsonKey(name: "totalamount") int? totalamount,
  }) = _AmountByDevice;

  factory AmountByDevice.fromJson(Map<String, dynamic> json) =>
      _$AmountByDeviceFromJson(json);
}

@freezed
class BillTypeDetail with _$BillTypeDetail {
  const factory BillTypeDetail({
    @JsonKey(name: "order_option_name") String? orderOptionName,
    @JsonKey(name: "totalamount") int? totalamount,
    @JsonKey(name: "ordercount") int? ordercount,
  }) = _BillTypeDetail;

  factory BillTypeDetail.fromJson(Map<String, dynamic> json) =>
      _$BillTypeDetailFromJson(json);
}

@freezed
class DeliveryPartner with _$DeliveryPartner {
  const factory DeliveryPartner({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "ordercount") int? ordercount,
    @JsonKey(name: "totalamount") int? totalamount,
    @JsonKey(name: "delivery_partner_id") int? deliveryPartnerId,
  }) = _DeliveryPartner;

  factory DeliveryPartner.fromJson(Map<String, dynamic> json) =>
      _$DeliveryPartnerFromJson(json);
}

@freezed
class DiscBillTypeDetail with _$DiscBillTypeDetail {
  const factory DiscBillTypeDetail({
    @JsonKey(name: "order_option_name") String? orderOptionName,
    @JsonKey(name: "ordercount") int? ordercount,
    @JsonKey(name: "disc_amount") int? discAmount,
  }) = _DiscBillTypeDetail;

  factory DiscBillTypeDetail.fromJson(Map<String, dynamic> json) =>
      _$DiscBillTypeDetailFromJson(json);
}

@freezed
class ModeOfPayments with _$ModeOfPayments {
  const factory ModeOfPayments({
    @JsonKey(name: "Cash") int? cash,
    @JsonKey(name: "Card") int? card,
    @JsonKey(name: "Online") int? online,
    @JsonKey(name: "Credit") int? credit,
  }) = _ModeOfPayments;

  factory ModeOfPayments.fromJson(Map<String, dynamic> json) =>
      _$ModeOfPaymentsFromJson(json);
}

@freezed
class OrderCount with _$OrderCount {
  const factory OrderCount({
    @JsonKey(name: "order_option_name") String? orderOptionName,
    @JsonKey(name: "ordercount") int? ordercount,
    @JsonKey(name: "avg_sales") int? avgSales,
  }) = _OrderCount;

  factory OrderCount.fromJson(Map<String, dynamic> json) =>
      _$OrderCountFromJson(json);
}

@freezed
class PaxDetail with _$PaxDetail {
  const factory PaxDetail({
    @JsonKey(name: "order_option_name") String? orderOptionName,
    @JsonKey(name: "pax") int? pax,
    @JsonKey(name: "avgPax") int? avgPax,
  }) = _PaxDetail;

  factory PaxDetail.fromJson(Map<String, dynamic> json) =>
      _$PaxDetailFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    @JsonKey(name: "account_head_name") String? accountHeadName,
    @JsonKey(name: "amount") int? amount,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
