// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mess_report_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessReportResponseImpl _$$MessReportResponseImplFromJson(
  Map<String, dynamic> json,
) => _$MessReportResponseImpl(
  messId: (json['mess_id'] as num?)?.toInt(),
  custId: (json['cust_id'] as num?)?.toInt(),
  storeId: (json['store_id'] as num?)?.toInt(),
  advanceAmount: (json['advance_amount'] as num?)?.toInt(),
  custName: json['cust_name'] as String?,
  storeName: json['store_name'] as String?,
  rowcount: (json['rowcount'] as num?)?.toInt(),
  startDate: json['start_date'] == null
      ? null
      : DateTime.parse(json['start_date'] as String),
  endDate: json['end_date'] == null
      ? null
      : DateTime.parse(json['end_date'] as String),
  plans: json['plans'] as List<dynamic>?,
  balanceAmt: (json['balance_amt'] as num?)?.toInt(),
  isExpired: (json['is_expired'] as num?)?.toInt(),
);

Map<String, dynamic> _$$MessReportResponseImplToJson(
  _$MessReportResponseImpl instance,
) => <String, dynamic>{
  'mess_id': instance.messId,
  'cust_id': instance.custId,
  'store_id': instance.storeId,
  'advance_amount': instance.advanceAmount,
  'cust_name': instance.custName,
  'store_name': instance.storeName,
  'rowcount': instance.rowcount,
  'start_date': instance.startDate?.toIso8601String(),
  'end_date': instance.endDate?.toIso8601String(),
  'plans': instance.plans,
  'balance_amt': instance.balanceAmt,
  'is_expired': instance.isExpired,
};
