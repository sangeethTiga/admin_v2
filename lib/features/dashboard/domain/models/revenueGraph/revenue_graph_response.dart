import 'package:admin_v2/features/orders/domain/models/order/order_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'revenue_graph_response.freezed.dart';
part 'revenue_graph_response.g.dart';


@freezed
class RevenueResponse with _$RevenueResponse {
    const factory RevenueResponse({
        @JsonKey(name: "monthname")
        String? monthname,
        @JsonKey(name: "income",fromJson: parseNumberAsDouble)
        double? income,
        @JsonKey(name: "expense",fromJson: parseNumberAsDouble)
        double? expense,
    }) = _RevenueResponse;

    factory RevenueResponse.fromJson(Map<String, dynamic> json) => _$RevenueResponseFromJson(json);
}