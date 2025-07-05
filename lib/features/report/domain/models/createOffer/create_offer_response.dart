// To parse this JSON data, do
//
//     final createOfferResponse = createOfferResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_offer_response.freezed.dart';
part 'create_offer_response.g.dart';

@freezed
class CreateOfferResponse with _$CreateOfferResponse {
  const factory CreateOfferResponse({
    @JsonKey(name: "prod_offer_id") int? prodOfferId,
    @JsonKey(name: "product_id") int? productId,
    @JsonKey(name: "coupon_id") dynamic couponId,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "branch_id") dynamic branchId,
    @JsonKey(name: "prod_var_code") String? prodVarCode,
    @JsonKey(name: "resource_id") int? resourceId,
    @JsonKey(name: "prod_offer_type_id") int? prodOfferTypeId,
    @JsonKey(name: "price_type_id") int? priceTypeId,
    @JsonKey(name: "max_order_qty") int? maxOrderQty,
    @JsonKey(name: "offer_price") int? offerPrice,
    @JsonKey(name: "offer_price_percentage") int? offerPricePercentage,
    @JsonKey(name: "offer_from_date") DateTime? offerFromDate,
    @JsonKey(name: "offer_to_date") DateTime? offerToDate,
    @JsonKey(name: "offer_type_id") int? offerTypeId,
    @JsonKey(name: "is_verified") int? isVerified,
    @JsonKey(name: "created_by") int? createdBy,
    @JsonKey(name: "updated_by") int? updatedBy,
    @JsonKey(name: "is_active") int? isActive,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "delivery_partner_id") int? deliveryPartnerId,
     @JsonKey(name: "is_single_product_offers") int? isSingleProductOffer,
  }) = _CreateOfferResponse;

  factory CreateOfferResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateOfferResponseFromJson(json);
}
