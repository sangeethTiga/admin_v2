// To parse this JSON data, do
//
//     final variantsResponse = variantsResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'variants_response.freezed.dart';
part 'variants_response.g.dart';

List<VariantsResponse> variantsResponseFromJson(String str) => List<VariantsResponse>.from(json.decode(str).map((x) => VariantsResponse.fromJson(x)));

String variantsResponseToJson(List<VariantsResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class VariantsResponse with _$VariantsResponse {
    const factory VariantsResponse({
        @JsonKey(name: "prod_var_id")
        int? prodVarId,
        @JsonKey(name: "store_id")
        int? storeId,
        @JsonKey(name: "product_id")
        int? productId,
        @JsonKey(name: "prod_var_code")
        String? prodVarCode,
        @JsonKey(name: "prod_var_name")
        String? prodVarName,
        @JsonKey(name: "var_short_name")
        dynamic varShortName,
        @JsonKey(name: "var_stock_qty")
        double? varStockQty,
        @JsonKey(name: "var_price")
        double? varPrice,
        @JsonKey(name: "atr_value_id")
        String? atrValueId,
        @JsonKey(name: "var_arabic_name")
        dynamic varArabicName,
        @JsonKey(name: "is_taxable")
        int? isTaxable,
        @JsonKey(name: "is_tax_inclusive")
        int? isTaxInclusive,
        @JsonKey(name: "var_tax_amt")
        int? varTaxAmt,
        @JsonKey(name: "var_tax_percentage")
        int? varTaxPercentage,
        @JsonKey(name: "var_purchase_limit")
        int? varPurchaseLimit,
        @JsonKey(name: "takeaway_addon_price")
        dynamic takeawayAddonPrice,
        @JsonKey(name: "delivery_addon_price")
        dynamic deliveryAddonPrice,
        @JsonKey(name: "web_product_price")
        dynamic webProductPrice,
        @JsonKey(name: "app_product_price")
        dynamic appProductPrice,
        @JsonKey(name: "pos_product_price")
        dynamic posProductPrice,
        @JsonKey(name: "retail_product_price")
        dynamic retailProductPrice,
        @JsonKey(name: "wholesale_product_price")
        dynamic wholesaleProductPrice,
        @JsonKey(name: "is_active")
        int? isActive,
        @JsonKey(name: "is_hidden")
        int? isHidden,
        @JsonKey(name: "created_at")
        DateTime? createdAt,
        @JsonKey(name: "updated_at")
        DateTime? updatedAt,
        @JsonKey(name: "var_purchase_price")
        double? varPurchasePrice,
        @JsonKey(name: "quantity_per_unit")
        dynamic quantityPerUnit,
        @JsonKey(name: "stock_quantity")
        double? stockQuantity,
        @JsonKey(name: "product_item_condition_id")
        int? productItemConditionId,
    }) = _VariantsResponse;

    factory VariantsResponse.fromJson(Map<String, dynamic> json) => _$VariantsResponseFromJson(json);
}
