// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentMethodResponseImpl _$$PaymentMethodResponseImplFromJson(
  Map<String, dynamic> json,
) => _$PaymentMethodResponseImpl(
  payMethodId: (json['pay_method_id'] as num?)?.toInt(),
  storeId: (json['store_id'] as num?)?.toInt(),
  payMethodName: json['pay_method_name'] as String?,
  payMethodArabic: json['pay_method_arabic'] as String?,
  isActive: (json['is_active'] as num?)?.toInt(),
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  isSynced: (json['is_synced'] as num?)?.toInt(),
  remarks: json['remarks'] as String?,
);

Map<String, dynamic> _$$PaymentMethodResponseImplToJson(
  _$PaymentMethodResponseImpl instance,
) => <String, dynamic>{
  'pay_method_id': instance.payMethodId,
  'store_id': instance.storeId,
  'pay_method_name': instance.payMethodName,
  'pay_method_arabic': instance.payMethodArabic,
  'is_active': instance.isActive,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'is_synced': instance.isSynced,
  'remarks': instance.remarks,
};
