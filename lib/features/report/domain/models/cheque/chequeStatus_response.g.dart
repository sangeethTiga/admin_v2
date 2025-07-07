// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chequeStatus_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChequeStatusResponseImpl _$$ChequeStatusResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ChequeStatusResponseImpl(
  chequeStatusId: (json['cheque_status_id'] as num?)?.toInt(),
  storeId: (json['store_id'] as num?)?.toInt(),
  chequeStatusName: json['cheque_status_name'] as String?,
  chequeStatusArabicName: json['cheque_status_arabic_name'] as String?,
  menuOrder: (json['menu_order'] as num?)?.toInt(),
  isActive: (json['is_active'] as num?)?.toInt(),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'],
);

Map<String, dynamic> _$$ChequeStatusResponseImplToJson(
  _$ChequeStatusResponseImpl instance,
) => <String, dynamic>{
  'cheque_status_id': instance.chequeStatusId,
  'store_id': instance.storeId,
  'cheque_status_name': instance.chequeStatusName,
  'cheque_status_arabic_name': instance.chequeStatusArabicName,
  'menu_order': instance.menuOrder,
  'is_active': instance.isActive,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt,
};
