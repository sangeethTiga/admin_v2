
// To parse this JSON data, do
//
//     final productOffersResponse = productOffersResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';


part 'product_offers_response.freezed.dart';
part 'product_offers_response.g.dart';



@freezed
class ProductOffersResponse with _$ProductOffersResponse {
    const factory ProductOffersResponse({
        @JsonKey(name: "prod_offer_id")
        int? prodOfferId,
        @JsonKey(name: "product_id")
        int? productId,
        @JsonKey(name: "coupon_id")
        int? couponId,
        @JsonKey(name: "store_id")
        int? storeId,
        @JsonKey(name: "branch_id")
        int? branchId,
        @JsonKey(name: "prod_var_code")
        String? prodVarCode,
        @JsonKey(name: "resource_id")
        int? resourceId,
        @JsonKey(name: "prod_offer_type_id")
        int? prodOfferTypeId,
        @JsonKey(name: "price_type_id")
        int? priceTypeId,
        @JsonKey(name: "max_order_qty")
        int? maxOrderQty,
        @JsonKey(name: "offer_price")
        double? offerPrice,
        @JsonKey(name: "offer_price_percentage")
        int? offerPricePercentage,
        @JsonKey(name: "offer_from_date")
        DateTime? offerFromDate,
        @JsonKey(name: "offer_to_date")
        DateTime? offerToDate,
        @JsonKey(name: "offer_type_id")
        int? offerTypeId,
        @JsonKey(name: "is_verified")
        int? isVerified,
        @JsonKey(name: "created_by")
        int? createdBy,
        @JsonKey(name: "updated_by")
        int? updatedBy,
        @JsonKey(name: "is_active")
        int? isActive,
        @JsonKey(name: "created_at")
        DateTime? createdAt,
        @JsonKey(name: "updated_at")
        DateTime? updatedAt,
        @JsonKey(name: "delivery_partner_id")
        int? deliveryPartnerId,
        @JsonKey(name: "store_name")
        String? storeName,
        @JsonKey(name: "branch_name")
        dynamic branchName,
        @JsonKey(name: "offer_status_id")
        int? offerStatusId,
        @JsonKey(name: "offer_type")
        dynamic offerType,
        @JsonKey(name: "offer_type_name")
        String? offerTypeName,
        @JsonKey(name: "product_code")
        String? productCode,
        @JsonKey(name: "takeaway_addon_price")
        int? takeawayAddonPrice,
        @JsonKey(name: "delivery_addon_price")
        int? deliveryAddonPrice,
        @JsonKey(name: "web_product_price")
        dynamic webProductPrice,
        @JsonKey(name: "app_product_price")
        dynamic appProductPrice,
        @JsonKey(name: "pos_product_price")
        dynamic posProductPrice,
        @JsonKey(name: "wholesale_product_price")
        double? wholesaleProductPrice,
        @JsonKey(name: "retail_product_price")
        double? retailProductPrice,
        @JsonKey(name: "offer_status")
        String? offerStatus,
        @JsonKey(name: "product_price")
        double? productPrice,
        @JsonKey(name: "product_name")
        String? productName,
        @JsonKey(name: "rawcount")
        int? rawcount,
        @JsonKey(name: "price_type_code")
        String? priceTypeCode,
    }) = _ProductOffersResponse;

    factory ProductOffersResponse.fromJson(Map<String, dynamic> json) => _$ProductOffersResponseFromJson(json);
}
