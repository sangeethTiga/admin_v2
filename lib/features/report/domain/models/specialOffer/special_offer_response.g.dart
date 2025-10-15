// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_offer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpecialOfferResponseImpl _$$SpecialOfferResponseImplFromJson(
  Map<String, dynamic> json,
) => _$SpecialOfferResponseImpl(
  offerTypeId: (json['offer_type_id'] as num?)?.toInt(),
  offerType: json['offer_type'] as String?,
  resourceId: (json['resource_id'] as num?)?.toInt(),
  isActive: (json['is_active'] as num?)?.toInt(),
  offerTypeImg: json['offer_type_img'],
);

Map<String, dynamic> _$$SpecialOfferResponseImplToJson(
  _$SpecialOfferResponseImpl instance,
) => <String, dynamic>{
  'offer_type_id': instance.offerTypeId,
  'offer_type': instance.offerType,
  'resource_id': instance.resourceId,
  'is_active': instance.isActive,
  'offer_type_img': instance.offerTypeImg,
};
