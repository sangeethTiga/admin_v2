// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationsRequestImpl _$$NotificationsRequestImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationsRequestImpl(
  deviceFcmToken: json['device_fcm_token'] as String?,
  uniqueDeviceId: json['unique_device_id'] as String?,
  appTypeId: (json['app_type_id'] as num?)?.toInt(),
  customerId: (json['customer_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$$NotificationsRequestImplToJson(
  _$NotificationsRequestImpl instance,
) => <String, dynamic>{
  'device_fcm_token': instance.deviceFcmToken,
  'unique_device_id': instance.uniqueDeviceId,
  'app_type_id': instance.appTypeId,
  'customer_id': instance.customerId,
};
