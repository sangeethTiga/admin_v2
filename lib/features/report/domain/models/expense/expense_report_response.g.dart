// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_report_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpenseReportResponseImpl _$$ExpenseReportResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ExpenseReportResponseImpl(
  payMethodName: json['pay_method_name'] as String?,
  acTransactionDate: json['ac_transaction_date'] as String?,
  description: json['description'] as String?,
  invoiceNumber: json['invoice_number'],
  amount: (json['amount'] as num?)?.toDouble(),
  accountName: json['account_name'] as String?,
  rawCount: (json['raw_count'] as num?)?.toInt(),
  totalamount: json['totalamount'] as String?,
);

Map<String, dynamic> _$$ExpenseReportResponseImplToJson(
  _$ExpenseReportResponseImpl instance,
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
