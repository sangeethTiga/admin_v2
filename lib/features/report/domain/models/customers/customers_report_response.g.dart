// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customers_report_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomersResponseImpl _$$CustomersResponseImplFromJson(
  Map<String, dynamic> json,
) => _$CustomersResponseImpl(
  custId: parseInt(json['cust_id']),
  custName: json['cust_name'] as String?,
  custMobile: json['cust_mobile'] as String?,
  custEmail: json['cust_email'] as String?,
  createdDate: json['created_date'] as String?,
  isActive: parseInt(json['is_active']),
  rowcount: parseInt(json['rowcount']),
  accountId: parseInt(json['account_id']),
  balanceAmt: parseDouble(json['balance_amt']),
  orderCount: parseInt(json['order_count']),
  totalPurchaseAmount: parseDouble(json['total_purchase_amount']),
);

Map<String, dynamic> _$$CustomersResponseImplToJson(
  _$CustomersResponseImpl instance,
) => <String, dynamic>{
  'cust_id': instance.custId,
  'cust_name': instance.custName,
  'cust_mobile': instance.custMobile,
  'cust_email': instance.custEmail,
  'created_date': instance.createdDate,
  'is_active': instance.isActive,
  'rowcount': instance.rowcount,
  'account_id': instance.accountId,
  'balance_amt': instance.balanceAmt,
  'order_count': instance.orderCount,
  'total_purchase_amount': instance.totalPurchaseAmount,
};
