// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_offer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateOfferResponseImpl _$$CreateOfferResponseImplFromJson(
  Map<String, dynamic> json,
) => _$CreateOfferResponseImpl(
  prodOfferId: (json['prod_offer_id'] as num?)?.toInt(),
  productId: (json['product_id'] as num?)?.toInt(),
  couponId: json['coupon_id'],
  storeId: (json['store_id'] as num?)?.toInt(),
  branchId: json['branch_id'],
  prodVarCode: json['prod_var_code'] as String?,
  resourceId: (json['resource_id'] as num?)?.toInt(),
  prodOfferTypeId: (json['prod_offer_type_id'] as num?)?.toInt(),
  priceTypeId: (json['price_type_id'] as num?)?.toInt(),
  maxOrderQty: (json['max_order_qty'] as num?)?.toInt(),
  offerPrice: (json['offer_price'] as num?)?.toInt(),
  offerPricePercentage: (json['offer_price_percentage'] as num?)?.toInt(),
  offerFromDate: json['offer_from_date'] == null
      ? null
      : DateTime.parse(json['offer_from_date'] as String),
  offerToDate: json['offer_to_date'] == null
      ? null
      : DateTime.parse(json['offer_to_date'] as String),
  offerTypeId: (json['offer_type_id'] as num?)?.toInt(),
  isVerified: (json['is_verified'] as num?)?.toInt(),
  createdBy: (json['created_by'] as num?)?.toInt(),
  updatedBy: (json['updated_by'] as num?)?.toInt(),
  isActive: (json['is_active'] as num?)?.toInt(),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  deliveryPartnerId: (json['delivery_partner_id'] as num?)?.toInt(),
  isSingleProductOffer: (json['is_single_product_offers'] as num?)?.toInt(),
  offerFromTime: json['offer_from_time'] as String?,
  offerToTime: json['offer_to_time'] as String?,
);

Map<String, dynamic> _$$CreateOfferResponseImplToJson(
  _$CreateOfferResponseImpl instance,
) => <String, dynamic>{
  'prod_offer_id': instance.prodOfferId,
  'product_id': instance.productId,
  'coupon_id': instance.couponId,
  'store_id': instance.storeId,
  'branch_id': instance.branchId,
  'prod_var_code': instance.prodVarCode,
  'resource_id': instance.resourceId,
  'prod_offer_type_id': instance.prodOfferTypeId,
  'price_type_id': instance.priceTypeId,
  'max_order_qty': instance.maxOrderQty,
  'offer_price': instance.offerPrice,
  'offer_price_percentage': instance.offerPricePercentage,
  'offer_from_date': instance.offerFromDate?.toIso8601String(),
  'offer_to_date': instance.offerToDate?.toIso8601String(),
  'offer_type_id': instance.offerTypeId,
  'is_verified': instance.isVerified,
  'created_by': instance.createdBy,
  'updated_by': instance.updatedBy,
  'is_active': instance.isActive,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'delivery_partner_id': instance.deliveryPartnerId,
  'is_single_product_offers': instance.isSingleProductOffer,
  'offer_from_time': instance.offerFromTime,
  'offer_to_time': instance.offerToTime,
};
