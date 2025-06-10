// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customers_report_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomersResponseImpl _$$CustomersResponseImplFromJson(
  Map<String, dynamic> json,
) => _$CustomersResponseImpl(
  custId: (json['cust_id'] as num?)?.toInt(),
  custName: json['cust_name'] as String?,
  custMobile: json['cust_mobile'] as String?,
  custEmail: json['cust_email'] as String?,
  createdDate: json['created_date'] as String?,
  isActive: (json['is_active'] as num?)?.toInt(),
  rowcount: (json['rowcount'] as num?)?.toInt(),
  accountId: (json['account_id'] as num?)?.toInt(),
  balanceAmt: (json['balance_amt'] as num?)?.toInt(),
  orderCount: (json['order_count'] as num?)?.toInt(),
  totalPurchaseAmount: (json['total_purchase_amount'] as num?)?.toInt(),
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
