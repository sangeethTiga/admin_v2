// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyResponseImpl _$$CompanyResponseImplFromJson(
  Map<String, dynamic> json,
) => _$CompanyResponseImpl(
  companyId: (json['company_id'] as num?)?.toInt(),
  androidVer: json['android_ver'] as String?,
  cdnUrl: json['cdn_url'] as String?,
  largeLightLogo: json['LargeLightLogo'],
  mediumLightLogo: json['MediumLightLogo'],
  smallLightLogo: json['SmallLightLogo'],
  customerSplash: json['CustomerSplash'],
  adminSplash: json['AdminSplash'],
  deliverySplash: json['DeliverySplash'],
  ogImage: json['OgImage'],
  contactUsUrl: json['contact_us_url'] as String?,
  driverRegUrl: json['driver_reg_url'] as String?,
  sellerRegUrl: json['seller_reg_url'] as String?,
  defaultStoreId: (json['default_store_id'] as num?)?.toInt(),
  smsGatewayEnabled: (json['sms_gateway_enabled'] as num?)?.toInt(),
);

Map<String, dynamic> _$$CompanyResponseImplToJson(
  _$CompanyResponseImpl instance,
) => <String, dynamic>{
  'company_id': instance.companyId,
  'android_ver': instance.androidVer,
  'cdn_url': instance.cdnUrl,
  'LargeLightLogo': instance.largeLightLogo,
  'MediumLightLogo': instance.mediumLightLogo,
  'SmallLightLogo': instance.smallLightLogo,
  'CustomerSplash': instance.customerSplash,
  'AdminSplash': instance.adminSplash,
  'DeliverySplash': instance.deliverySplash,
  'OgImage': instance.ogImage,
  'contact_us_url': instance.contactUsUrl,
  'driver_reg_url': instance.driverRegUrl,
  'seller_reg_url': instance.sellerRegUrl,
  'default_store_id': instance.defaultStoreId,
  'sms_gateway_enabled': instance.smsGatewayEnabled,
};
