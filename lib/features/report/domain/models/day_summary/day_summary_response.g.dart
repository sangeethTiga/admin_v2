// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_summary_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DaySummaryResponseImpl _$$DaySummaryResponseImplFromJson(
  Map<String, dynamic> json,
) => _$DaySummaryResponseImpl(
  modeOfPayments: json['mode_of_payments'] == null
      ? null
      : ModeOfPayments.fromJson(
          json['mode_of_payments'] as Map<String, dynamic>,
        ),
  isDayCloseEnabled: (json['is_day_close_enabled'] as num?)?.toInt(),
  billTypeDetails: (json['bill_type_details'] as List<dynamic>?)
      ?.map((e) => BillTypeDetail.fromJson(e as Map<String, dynamic>))
      .toList(),
  billTypeTotalOrderCount: (json['bill_type_total_order_count'] as num?)
      ?.toInt(),
  billTypeGrandTotal: (json['bill_type_grand_total'] as num?)?.toInt(),
  discBillTypeDetails: (json['disc_bill_type_details'] as List<dynamic>?)
      ?.map((e) => DiscBillTypeDetail.fromJson(e as Map<String, dynamic>))
      .toList(),
  discBillTypeDetailsCount: (json['disc_bill_type_details_count'] as num?)
      ?.toInt(),
  discBillTypeDetailsTotal: (json['disc_bill_type_details_total'] as num?)
      ?.toInt(),
  amountByCashier: json['amount_by_cashier'] as List<dynamic>?,
  amountByCashierTotal: (json['amount_by_cashier_total'] as num?)?.toInt(),
  amountByCashierCount: (json['amount_by_cashier_count'] as num?)?.toInt(),
  amountByCashierCashTotal: (json['amount_by_cashier_cash_total'] as num?)
      ?.toInt(),
  amountByCashierCardTotal: (json['amount_by_cashier_card_total'] as num?)
      ?.toInt(),
  amountByKiosk: json['amount_by_kiosk'] as List<dynamic>?,
  amountByKioskTotal: (json['amount_by_kiosk_total'] as num?)?.toInt(),
  amountByKioskCount: (json['amount_by_kiosk_count'] as num?)?.toInt(),
  amountByDelivertBoy: (json['amount_by_delivertBoy'] as List<dynamic>?)
      ?.map((e) => AmountByDelivertBoy.fromJson(e as Map<String, dynamic>))
      .toList(),
  amountByDeliveryBoyTotal: (json['amount_by_deliveryBoy_total'] as num?)
      ?.toInt(),
  amountByDeliveryBoyCount: (json['amount_by_deliveryBoy_count'] as num?)
      ?.toInt(),
  amountByWaiter: json['amount_by_waiter'] as List<dynamic>?,
  amountByWaiterTotal: (json['amount_by_waiter_total'] as num?)?.toInt(),
  amountByWaiterCount: (json['amount_by_waiter_count'] as num?)?.toInt(),
  deliveryPartners: (json['delivery_partners'] as List<dynamic>?)
      ?.map((e) => DeliveryPartner.fromJson(e as Map<String, dynamic>))
      .toList(),
  deliveryPartnersTotal: (json['delivery_partners_total'] as num?)?.toInt(),
  deliveryPartnersCount: (json['delivery_partners_count'] as num?)?.toInt(),
  amountByDevice: (json['amount_by_device'] as List<dynamic>?)
      ?.map((e) => AmountByDevice.fromJson(e as Map<String, dynamic>))
      .toList(),
  amountByDeviceCount: (json['amount_by_device_count'] as num?)?.toInt(),
  amountByDeviceTotal: (json['amount_by_device_total'] as num?)?.toInt(),
  amountByCategory: json['amount_by_category'] as List<dynamic>?,
  amountByCategoryTotal: (json['amount_by_category_total'] as num?)?.toDouble(),
  amountByMainCategory: json['amount_by_main_category'] as List<dynamic>?,
  amountByMainCategoryTotal: (json['amount_by_main_category_total'] as num?)
      ?.toInt(),
  cancelledOrders: json['cancelled_orders'] as List<dynamic>?,
  cancelledOrdersTotal: (json['cancelled_orders_total'] as num?)?.toInt(),
  cancelledBills: json['cancelled_bills'] as List<dynamic>?,
  cancelledBillsTotal: (json['cancelled_bills_total'] as num?)?.toInt(),
  cancelledItems: json['cancelled_items'] as List<dynamic>?,
  orderCounts: (json['order_counts'] as List<dynamic>?)
      ?.map((e) => OrderCount.fromJson(e as Map<String, dynamic>))
      .toList(),
  startingBill: (json['starting_bill'] as num?)?.toInt(),
  endingBill: (json['ending_bill'] as num?)?.toInt(),
  totalBills: (json['total_bills'] as num?)?.toInt(),
  totalSales: (json['total_sales'] as num?)?.toInt(),
  receiptsData: (json['receipts_data'] as List<dynamic>?)
      ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
      .toList(),
  paymentData: (json['payment_data'] as List<dynamic>?)
      ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalReceipts: (json['total_receipts'] as num?)?.toInt(),
  totalPayment: (json['total_payment'] as num?)?.toInt(),
  totalTaxCollected: (json['total_tax_collected'] as num?)?.toInt(),
  totalTaxPaid: (json['total_tax_paid'] as num?)?.toInt(),
  totalParcelCharge: (json['total_parcel_charge'] as num?)?.toInt(),
  paxDetails: (json['pax_details'] as List<dynamic>?)
      ?.map((e) => PaxDetail.fromJson(e as Map<String, dynamic>))
      .toList(),
  openingBalance: (json['opening_balance'] as num?)?.toInt(),
  closingBalance: (json['closing_balance'] as num?)?.toInt(),
  shiftArray: json['shiftArray'] as List<dynamic>?,
  dayCloseDate: json['day_close_date'] as String?,
  lastCloseDate: json['last_close_date'] as String?,
  lastDayCloseTime: json['last_day_close_time'] as String?,
);

Map<String, dynamic> _$$DaySummaryResponseImplToJson(
  _$DaySummaryResponseImpl instance,
) => <String, dynamic>{
  'mode_of_payments': instance.modeOfPayments,
  'is_day_close_enabled': instance.isDayCloseEnabled,
  'bill_type_details': instance.billTypeDetails,
  'bill_type_total_order_count': instance.billTypeTotalOrderCount,
  'bill_type_grand_total': instance.billTypeGrandTotal,
  'disc_bill_type_details': instance.discBillTypeDetails,
  'disc_bill_type_details_count': instance.discBillTypeDetailsCount,
  'disc_bill_type_details_total': instance.discBillTypeDetailsTotal,
  'amount_by_cashier': instance.amountByCashier,
  'amount_by_cashier_total': instance.amountByCashierTotal,
  'amount_by_cashier_count': instance.amountByCashierCount,
  'amount_by_cashier_cash_total': instance.amountByCashierCashTotal,
  'amount_by_cashier_card_total': instance.amountByCashierCardTotal,
  'amount_by_kiosk': instance.amountByKiosk,
  'amount_by_kiosk_total': instance.amountByKioskTotal,
  'amount_by_kiosk_count': instance.amountByKioskCount,
  'amount_by_delivertBoy': instance.amountByDelivertBoy,
  'amount_by_deliveryBoy_total': instance.amountByDeliveryBoyTotal,
  'amount_by_deliveryBoy_count': instance.amountByDeliveryBoyCount,
  'amount_by_waiter': instance.amountByWaiter,
  'amount_by_waiter_total': instance.amountByWaiterTotal,
  'amount_by_waiter_count': instance.amountByWaiterCount,
  'delivery_partners': instance.deliveryPartners,
  'delivery_partners_total': instance.deliveryPartnersTotal,
  'delivery_partners_count': instance.deliveryPartnersCount,
  'amount_by_device': instance.amountByDevice,
  'amount_by_device_count': instance.amountByDeviceCount,
  'amount_by_device_total': instance.amountByDeviceTotal,
  'amount_by_category': instance.amountByCategory,
  'amount_by_category_total': instance.amountByCategoryTotal,
  'amount_by_main_category': instance.amountByMainCategory,
  'amount_by_main_category_total': instance.amountByMainCategoryTotal,
  'cancelled_orders': instance.cancelledOrders,
  'cancelled_orders_total': instance.cancelledOrdersTotal,
  'cancelled_bills': instance.cancelledBills,
  'cancelled_bills_total': instance.cancelledBillsTotal,
  'cancelled_items': instance.cancelledItems,
  'order_counts': instance.orderCounts,
  'starting_bill': instance.startingBill,
  'ending_bill': instance.endingBill,
  'total_bills': instance.totalBills,
  'total_sales': instance.totalSales,
  'receipts_data': instance.receiptsData,
  'payment_data': instance.paymentData,
  'total_receipts': instance.totalReceipts,
  'total_payment': instance.totalPayment,
  'total_tax_collected': instance.totalTaxCollected,
  'total_tax_paid': instance.totalTaxPaid,
  'total_parcel_charge': instance.totalParcelCharge,
  'pax_details': instance.paxDetails,
  'opening_balance': instance.openingBalance,
  'closing_balance': instance.closingBalance,
  'shiftArray': instance.shiftArray,
  'day_close_date': instance.dayCloseDate,
  'last_close_date': instance.lastCloseDate,
  'last_day_close_time': instance.lastDayCloseTime,
};

_$AmountByDelivertBoyImpl _$$AmountByDelivertBoyImplFromJson(
  Map<String, dynamic> json,
) => _$AmountByDelivertBoyImpl(
  userName: json['user_name'] as String?,
  ordercount: (json['ordercount'] as num?)?.toInt(),
  totalamount: (json['totalamount'] as num?)?.toDouble(),
  userRoleId: (json['user_role_id'] as num?)?.toInt(),
  companyUsersId: (json['company_users_id'] as num?)?.toInt(),
  invoiceNumbers: json['invoice_numbers'] as List<dynamic>?,
  cashAmount: (json['cash_amount'] as num?)?.toInt(),
  cardAmount: (json['card_amount'] as num?)?.toInt(),
  shifts: json['shifts'] as List<dynamic>?,
);

Map<String, dynamic> _$$AmountByDelivertBoyImplToJson(
  _$AmountByDelivertBoyImpl instance,
) => <String, dynamic>{
  'user_name': instance.userName,
  'ordercount': instance.ordercount,
  'totalamount': instance.totalamount,
  'user_role_id': instance.userRoleId,
  'company_users_id': instance.companyUsersId,
  'invoice_numbers': instance.invoiceNumbers,
  'cash_amount': instance.cashAmount,
  'card_amount': instance.cardAmount,
  'shifts': instance.shifts,
};

_$AmountByDeviceImpl _$$AmountByDeviceImplFromJson(Map<String, dynamic> json) =>
    _$AmountByDeviceImpl(
      deviceName: json['device_name'] as String?,
      ordercount: (json['ordercount'] as num?)?.toInt(),
      totalamount: (json['totalamount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$AmountByDeviceImplToJson(
  _$AmountByDeviceImpl instance,
) => <String, dynamic>{
  'device_name': instance.deviceName,
  'ordercount': instance.ordercount,
  'totalamount': instance.totalamount,
};

_$BillTypeDetailImpl _$$BillTypeDetailImplFromJson(Map<String, dynamic> json) =>
    _$BillTypeDetailImpl(
      orderOptionName: json['order_option_name'] as String?,
      totalamount: (json['totalamount'] as num?)?.toDouble(),
      ordercount: (json['ordercount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BillTypeDetailImplToJson(
  _$BillTypeDetailImpl instance,
) => <String, dynamic>{
  'order_option_name': instance.orderOptionName,
  'totalamount': instance.totalamount,
  'ordercount': instance.ordercount,
};

_$DeliveryPartnerImpl _$$DeliveryPartnerImplFromJson(
  Map<String, dynamic> json,
) => _$DeliveryPartnerImpl(
  name: json['name'] as String?,
  ordercount: (json['ordercount'] as num?)?.toInt(),
  totalamount: (json['totalamount'] as num?)?.toDouble(),
  deliveryPartnerId: (json['delivery_partner_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$$DeliveryPartnerImplToJson(
  _$DeliveryPartnerImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'ordercount': instance.ordercount,
  'totalamount': instance.totalamount,
  'delivery_partner_id': instance.deliveryPartnerId,
};

_$DiscBillTypeDetailImpl _$$DiscBillTypeDetailImplFromJson(
  Map<String, dynamic> json,
) => _$DiscBillTypeDetailImpl(
  orderOptionName: json['order_option_name'] as String?,
  ordercount: (json['ordercount'] as num?)?.toInt(),
  discAmount: (json['disc_amount'] as num?)?.toInt(),
);

Map<String, dynamic> _$$DiscBillTypeDetailImplToJson(
  _$DiscBillTypeDetailImpl instance,
) => <String, dynamic>{
  'order_option_name': instance.orderOptionName,
  'ordercount': instance.ordercount,
  'disc_amount': instance.discAmount,
};

_$ModeOfPaymentsImpl _$$ModeOfPaymentsImplFromJson(Map<String, dynamic> json) =>
    _$ModeOfPaymentsImpl(
      cash: (json['Cash'] as num?)?.toInt(),
      card: (json['Card'] as num?)?.toInt(),
      online: (json['Online'] as num?)?.toInt(),
      credit: (json['Credit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ModeOfPaymentsImplToJson(
  _$ModeOfPaymentsImpl instance,
) => <String, dynamic>{
  'Cash': instance.cash,
  'Card': instance.card,
  'Online': instance.online,
  'Credit': instance.credit,
};

_$OrderCountImpl _$$OrderCountImplFromJson(Map<String, dynamic> json) =>
    _$OrderCountImpl(
      orderOptionName: json['order_option_name'] as String?,
      ordercount: (json['ordercount'] as num?)?.toInt(),
      avgSales: (json['avg_sales'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OrderCountImplToJson(_$OrderCountImpl instance) =>
    <String, dynamic>{
      'order_option_name': instance.orderOptionName,
      'ordercount': instance.ordercount,
      'avg_sales': instance.avgSales,
    };

_$PaxDetailImpl _$$PaxDetailImplFromJson(Map<String, dynamic> json) =>
    _$PaxDetailImpl(
      orderOptionName: json['order_option_name'] as String?,
      pax: (json['pax'] as num?)?.toInt(),
      avgPax: (json['avgPax'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PaxDetailImplToJson(_$PaxDetailImpl instance) =>
    <String, dynamic>{
      'order_option_name': instance.orderOptionName,
      'pax': instance.pax,
      'avgPax': instance.avgPax,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
  accountHeadName: json['account_head_name'] as String?,
  amount: (json['amount'] as num?)?.toInt(),
);

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'account_head_name': instance.accountHeadName,
      'amount': instance.amount,
    };
