// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offertype_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OffertypeResponseImpl _$$OffertypeResponseImplFromJson(
  Map<String, dynamic> json,
) => _$OffertypeResponseImpl(
  offerTypeId: (json['offer_type_id'] as num?)?.toInt(),
  offerType: json['offer_type'] as String?,
  resourceId: (json['resource_id'] as num?)?.toInt(),
  offerTypeImg: json['offer_type_img'],
);

Map<String, dynamic> _$$OffertypeResponseImplToJson(
  _$OffertypeResponseImpl instance,
) => <String, dynamic>{
  'offer_type_id': instance.offerTypeId,
  'offer_type': instance.offerType,
  'resource_id': instance.resourceId,
  'offer_type_img': instance.offerTypeImg,
};
