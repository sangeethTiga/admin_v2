// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountDataResponseImpl _$$AccountDataResponseImplFromJson(
  Map<String, dynamic> json,
) => _$AccountDataResponseImpl(
  accountHeadId: (json['account_head_id'] as num?)?.toInt(),
  accountHeadName: json['account_head_name'] as String?,
  transactionType: (json['transaction_type'] as num?)?.toInt(),
  transTypeName: json['trans_type_name'] as String?,
  accountTypeId: (json['account_type_id'] as num?)?.toInt(),
  accountTypeName: json['account_type_name'] as String?,
);

Map<String, dynamic> _$$AccountDataResponseImplToJson(
  _$AccountDataResponseImpl instance,
) => <String, dynamic>{
  'account_head_id': instance.accountHeadId,
  'account_head_name': instance.accountHeadName,
  'transaction_type': instance.transactionType,
  'trans_type_name': instance.transTypeName,
  'account_type_id': instance.accountTypeId,
  'account_type_name': instance.accountTypeName,
};
