// To parse this JSON data, do
//
//     final saleOnDeals = saleOnDealsFromJson(jsonString);

import 'package:admin_v2/shared/utils/helper/helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_on_deals_response.freezed.dart';
part 'sale_on_deals_response.g.dart';

@freezed
class SaleOnDeals with _$SaleOnDeals {
  const factory SaleOnDeals({
    @JsonKey(name: "prod_order_id") int? prodOrderId,
    @JsonKey(name: "product_id") int? productId,
    @JsonKey(name: "offer_price", fromJson: parseDouble) double? offerPrice,
    @JsonKey(name: "order_date") String? orderDate,
    @JsonKey(name: "store_name") String? storeName,
    @JsonKey(name: "product_name") String? productName,
    @JsonKey(name: "order_item_qty") int? orderItemQty,
    @JsonKey(name: "order_item_total", fromJson: parseDouble)
    double? orderItemTotal,
    @JsonKey(name: "order_item_net_amt", fromJson: parseDouble)
    double? orderItemNetAmt,
    @JsonKey(name: "rowcount") int? rowcount,
  }) = _SaleOnDeals;

  factory SaleOnDeals.fromJson(Map<String, dynamic> json) =>
      _$SaleOnDealsFromJson(json);
}
