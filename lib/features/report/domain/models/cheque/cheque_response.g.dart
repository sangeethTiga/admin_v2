// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cheque_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChequeResponseImpl _$$ChequeResponseImplFromJson(Map<String, dynamic> json) =>
    _$ChequeResponseImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      errorCode: (json['error_code'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ChequeTrans.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChequeResponseImplToJson(
  _$ChequeResponseImpl instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'error_code': instance.errorCode,
  'data': instance.data,
};

_$ChequeTransImpl _$$ChequeTransImplFromJson(Map<String, dynamic> json) =>
    _$ChequeTransImpl(
      chequeTrackId: (json['cheque_track_id'] as num?)?.toInt(),
      outletName: json['outlet_name'] as String?,
      chequeIssueDate: json['cheque_issue_date'] == null
          ? null
          : DateTime.parse(json['cheque_issue_date'] as String),
      bankName: json['bank_name'] as String?,
      chequeDate: json['cheque_date'] == null
          ? null
          : DateTime.parse(json['cheque_date'] as String),
      chequeNumber: json['cheque_number'] as String?,
      amount: json['amount'] as String?,
      narration: json['narration'] as String?,
      status: (json['status'] as num?)?.toInt(),
      createdBy: json['created_by'],
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      updatedBy: json['updated_by'],
      isActive: (json['is_active'] as num?)?.toInt(),
      storeId: (json['store_id'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      bankId: (json['bank_id'] as num?)?.toInt(),
      statusName: json['status_name'] as String?,
    );

Map<String, dynamic> _$$ChequeTransImplToJson(_$ChequeTransImpl instance) =>
    <String, dynamic>{
      'cheque_track_id': instance.chequeTrackId,
      'outlet_name': instance.outletName,
      'cheque_issue_date': instance.chequeIssueDate?.toIso8601String(),
      'bank_name': instance.bankName,
      'cheque_date': instance.chequeDate?.toIso8601String(),
      'cheque_number': instance.chequeNumber,
      'amount': instance.amount,
      'narration': instance.narration,
      'status': instance.status,
      'created_by': instance.createdBy,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'updated_by': instance.updatedBy,
      'is_active': instance.isActive,
      'store_id': instance.storeId,
      'created_at': instance.createdAt?.toIso8601String(),
      'bank_id': instance.bankId,
      'status_name': instance.statusName,
    };
