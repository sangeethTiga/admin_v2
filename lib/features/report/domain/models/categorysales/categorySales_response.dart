

import 'package:freezed_annotation/freezed_annotation.dart';

part 'categorySales_response.freezed.dart';
part 'categorySales_response.g.dart';

@freezed
class CategorySalesResponse with _$CategorySalesResponse {
  const factory CategorySalesResponse({
    @JsonKey(name: "category_name") String? categoryName,
    @JsonKey(name: "total_amount") String? totalAmount,
    @JsonKey(name: "order_count") String? orderCount,
  }) = _CategorySalesResponse;

  factory CategorySalesResponse.fromJson(Map<String, dynamic> json) =>
      _$CategorySalesResponseFromJson(json);
}
