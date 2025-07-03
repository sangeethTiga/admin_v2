// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kiosk_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KioskResponseImpl _$$KioskResponseImplFromJson(Map<String, dynamic> json) =>
    _$KioskResponseImpl(
      kioskId: (json['kiosk_id'] as num?)?.toInt(),
      kioskName: json['kiosk_name'] as String?,
      storeId: (json['store_id'] as num?)?.toInt(),
      deviceId: (json['device_id'] as num?)?.toInt(),
      isDefault: (json['is_default'] as num?)?.toInt(),
      isActive: (json['is_active'] as num?)?.toInt(),
      isOnline: (json['is_online'] as num?)?.toInt(),
      kioskPrefix: json['kiosk_prefix'] as String?,
      serialNo: (json['serial_no'] as num?)?.toInt(),
      isSynced: (json['is_synced'] as num?)?.toInt(),
      isOnlineKiosk: (json['is_online_kiosk'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      storeName: json['store_name'] as String?,
      deviceName: json['device_name'] as String?,
    );

Map<String, dynamic> _$$KioskResponseImplToJson(_$KioskResponseImpl instance) =>
    <String, dynamic>{
      'kiosk_id': instance.kioskId,
      'kiosk_name': instance.kioskName,
      'store_id': instance.storeId,
      'device_id': instance.deviceId,
      'is_default': instance.isDefault,
      'is_active': instance.isActive,
      'is_online': instance.isOnline,
      'kiosk_prefix': instance.kioskPrefix,
      'serial_no': instance.serialNo,
      'is_synced': instance.isSynced,
      'is_online_kiosk': instance.isOnlineKiosk,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'store_name': instance.storeName,
      'device_name': instance.deviceName,
    };
