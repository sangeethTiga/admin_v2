// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offers_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OffersResponseImpl _$$OffersResponseImplFromJson(Map<String, dynamic> json) =>
    _$OffersResponseImpl(
      prodOfferTypeId: (json['prod_offer_type_id'] as num?)?.toInt(),
      storeId: (json['store_id'] as num?)?.toInt(),
      resourceId: (json['resource_id'] as num?)?.toInt(),
      offerTypeImg: json['offer_type_img'] as String?,
      offerSlug: json['offer_slug'] as String?,
      offerTypeArabicName: json['offer_type_arabic_name'] as String?,
      fromDate: json['from_date'],
      toDate: json['to_date'],
      offerTypeName: json['offer_type_name'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      storeName: json['store_name'] as String?,
    );

Map<String, dynamic> _$$OffersResponseImplToJson(
  _$OffersResponseImpl instance,
) => <String, dynamic>{
  'prod_offer_type_id': instance.prodOfferTypeId,
  'store_id': instance.storeId,
  'resource_id': instance.resourceId,
  'offer_type_img': instance.offerTypeImg,
  'offer_slug': instance.offerSlug,
  'offer_type_arabic_name': instance.offerTypeArabicName,
  'from_date': instance.fromDate,
  'to_date': instance.toDate,
  'offer_type_name': instance.offerTypeName,
  'created_at': instance.createdAt?.toIso8601String(),
  'store_name': instance.storeName,
};
