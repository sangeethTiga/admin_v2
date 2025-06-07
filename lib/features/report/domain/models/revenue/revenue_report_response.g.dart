// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revenue_report_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReveneReportResponseImpl _$$ReveneReportResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ReveneReportResponseImpl(
  payMethodName: json['pay_method_name'] as String?,
  acTransactionDate: json['ac_transaction_date'] as String?,
  description: json['description'] as String?,
  invoiceNumber: json['invoice_number'] as String?,
  amount: (json['amount'] as num?)?.toDouble(),
  accountName: json['account_name'] as String?,
  rawCount: (json['raw_count'] as num?)?.toInt(),
  totalamount: json['totalamount'] as String?,
);

Map<String, dynamic> _$$ReveneReportResponseImplToJson(
  _$ReveneReportResponseImpl instance,
) => <String, dynamic>{
  'pay_method_name': instance.payMethodName,
  'ac_transaction_date': instance.acTransactionDate,
  'description': instance.description,
  'invoice_number': instance.invoiceNumber,
  'amount': instance.amount,
  'account_name': instance.accountName,
  'raw_count': instance.rawCount,
  'totalamount': instance.totalamount,
};
