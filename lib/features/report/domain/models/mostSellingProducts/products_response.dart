import 'package:admin_v2/shared/utils/helper/helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'products_response.freezed.dart';
part 'products_response.g.dart';


@freezed
class ProductsResponse with _$ProductsResponse {
    const factory ProductsResponse({
        @JsonKey(name: "product_id")
        int? productId,
        @JsonKey(name: "product_name")
        String? productName,
        @JsonKey(name: "totalorderqty")
        String? totalorderqty,
        @JsonKey(name: "total_amount")
        String? totalAmount,
        @JsonKey(name: "store_name")
        String? storeName,
        @JsonKey(name: "selling_price")
        String? sellingPrice,
        @JsonKey(name: "cost_price")
        String? costPrice,
        @JsonKey(name: "total_cost_price")
        String? totalCostPrice,
        @JsonKey(name: "rowcount")
        int? rowcount,
        @JsonKey(name: "profit")
        String? profit,
        @JsonKey(name: "profit_percentage",fromJson: parseInt)
        int? profitPercentage,
        @JsonKey(name: "grand_total")
        String? grandTotal,
    }) = _ProductsResponse;

    factory ProductsResponse.fromJson(Map<String, dynamic> json) => _$ProductsResponseFromJson(json);
}
