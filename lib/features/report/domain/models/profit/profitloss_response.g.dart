// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profitloss_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfitlossResponseImpl _$$ProfitlossResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProfitlossResponseImpl(
  receiptsData: (json['receipts_data'] as List<dynamic>?)
      ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
      .toList(),
  paymentData: (json['payment_data'] as List<dynamic>?)
      ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$ProfitlossResponseImplToJson(
  _$ProfitlossResponseImpl instance,
) => <String, dynamic>{
  'receipts_data': instance.receiptsData,
  'payment_data': instance.paymentData,
};

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
  accountHeadName: json['account_head_name'] as String?,
  amount: parseDouble(json['amount']),
);

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'account_head_name': instance.accountHeadName,
      'amount': instance.amount,
    };
