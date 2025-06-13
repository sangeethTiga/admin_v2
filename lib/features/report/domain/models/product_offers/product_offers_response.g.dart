// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_offers_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductOffersResponseImpl _$$ProductOffersResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProductOffersResponseImpl(
  prodOfferId: (json['prod_offer_id'] as num?)?.toInt(),
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
  storeName: json['store_name'] as String?,
  branchName: json['branch_name'],
  offerStatusId: (json['offer_status_id'] as num?)?.toInt(),
  offerType: json['offer_type'],
  offerTypeName: json['offer_type_name'] as String?,
  productCode: json['product_code'] as String?,
  takeawayAddonPrice: (json['takeaway_addon_price'] as num?)?.toInt(),
  deliveryAddonPrice: (json['delivery_addon_price'] as num?)?.toInt(),
  webProductPrice: json['web_product_price'],
  appProductPrice: json['app_product_price'],
  posProductPrice: json['pos_product_price'],
  wholesaleProductPrice: (json['wholesale_product_price'] as num?)?.toDouble(),
  retailProductPrice: (json['retail_product_price'] as num?)?.toDouble(),
  offerStatus: json['offer_status'] as String?,
  productPrice: (json['product_price'] as num?)?.toDouble(),
  productName: json['product_name'] as String?,
  rawcount: (json['rawcount'] as num?)?.toInt(),
  priceTypeCode: json['price_type_code'] as String?,
);

Map<String, dynamic> _$$ProductOffersResponseImplToJson(
  _$ProductOffersResponseImpl instance,
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
  'store_name': instance.storeName,
  'branch_name': instance.branchName,
  'offer_status_id': instance.offerStatusId,
  'offer_type': instance.offerType,
  'offer_type_name': instance.offerTypeName,
  'product_code': instance.productCode,
  'takeaway_addon_price': instance.takeawayAddonPrice,
  'delivery_addon_price': instance.deliveryAddonPrice,
  'web_product_price': instance.webProductPrice,
  'app_product_price': instance.appProductPrice,
  'pos_product_price': instance.posProductPrice,
  'wholesale_product_price': instance.wholesaleProductPrice,
  'retail_product_price': instance.retailProductPrice,
  'offer_status': instance.offerStatus,
  'product_price': instance.productPrice,
  'product_name': instance.productName,
  'rawcount': instance.rawcount,
  'price_type_code': instance.priceTypeCode,
};
