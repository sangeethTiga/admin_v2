import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_status_response.freezed.dart';
part 'stock_status_response.g.dart';

@freezed
class StockStatusResponse with _$StockStatusResponse {
  const factory StockStatusResponse({
    @JsonKey(name: "product_item_condition_id") int? productItemConditionId,
    @JsonKey(name: "product_item_condition_name")
    String? productItemConditionName,
  }) = _StockStatusResponse;

  factory StockStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$StockStatusResponseFromJson(json);
}
