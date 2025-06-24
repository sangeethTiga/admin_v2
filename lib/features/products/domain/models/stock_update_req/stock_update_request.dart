import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_update_request.freezed.dart';
part 'stock_update_request.g.dart';

@freezed
class StockUpdateRequest with _$StockUpdateRequest {
  const factory StockUpdateRequest({
    @JsonKey(name: "product_id") int? productId,
    @JsonKey(name: "maintain_stock") int? maintainStock,
    @JsonKey(name: "stock_qty") double? stockQty,
    @JsonKey(name: "prod_var_id") int? prodVarId,
    @JsonKey(name: "product_item_condition_id") int? productItemConditionId,
    @JsonKey(name: "updated_date") DateTime? updatedDate,
    @JsonKey(name: "price_per_unit") double? pricePerUnit,
    @JsonKey(name: "total_price") double? totalPrice,
  }) = _StockUpdateRequest;

  factory StockUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$StockUpdateRequestFromJson(json);
}
