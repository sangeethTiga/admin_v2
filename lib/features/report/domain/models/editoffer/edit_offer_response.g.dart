// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_offer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditOfferResponseImpl _$$EditOfferResponseImplFromJson(
  Map<String, dynamic> json,
) => _$EditOfferResponseImpl(
  productId: (json['product_id'] as num?)?.toInt(),
  couponId: (json['coupon_id'] as num?)?.toInt(),
  storeId: (json['store_id'] as num?)?.toInt(),
  branchId: (json['branch_id'] as num?)?.toInt(),
  prodVarCode: json['prod_var_code'] as String?,
  resourceId: (json['resource_id'] as num?)?.toInt(),
  prodOfferTypeId: (json['prod_offer_type_id'] as num?)?.toInt(),
  priceTypeId: (json['price_type_id'] as num?)?.toInt(),
  maxOrderQty: (json['max_order_qty'] as num?)?.toInt(),
  offerPrice: (json['offer_price'] as num?)?.toDouble(),
  offerPricePercentage: (json['offer_price_percentage'] as num?)?.toInt(),
  offerFromDate: json['offer_from_date'] == null
      ? null
      : DateTime.parse(json['offer_from_date'] as String),
  offerToDate: json['offer_to_date'] == null
      ? null
      : DateTime.parse(json['offer_to_date'] as String),
  offerTypeId: (json['offer_type_id'] as num?)?.toInt(),
  createdBy: (json['created_by'] as num?)?.toInt(),
  updatedBy: (json['updated_by'] as num?)?.toInt(),
  deliveryPartnerId: (json['delivery_partner_id'] as num?)?.toInt(),
  offerTitle: json['offer_title'] as String?,
);

Map<String, dynamic> _$$EditOfferResponseImplToJson(
  _$EditOfferResponseImpl instance,
) => <String, dynamic>{
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
  'created_by': instance.createdBy,
  'updated_by': instance.updatedBy,
  'delivery_partner_id': instance.deliveryPartnerId,
  'offer_title': instance.offerTitle,
};
