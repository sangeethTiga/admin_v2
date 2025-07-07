
// To parse this JSON data, do
//
//     final editOfferResponse = editOfferResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';


part 'edit_offer_response.freezed.dart';
part 'edit_offer_response.g.dart';


@freezed
class EditOfferResponse with _$EditOfferResponse {
    const factory EditOfferResponse({
  
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
        @JsonKey(name: "created_by")
        int? createdBy,
        @JsonKey(name: "updated_by")
        int? updatedBy,
        @JsonKey(name: "delivery_partner_id")
        int? deliveryPartnerId,
      
  
    }) = _EditOfferResponse;

    factory EditOfferResponse.fromJson(Map<String, dynamic> json) => _$EditOfferResponseFromJson(json);
}
