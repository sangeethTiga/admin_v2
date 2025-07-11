import 'package:admin_v2/shared/utils/helper/helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'revenue_graph_response.freezed.dart';
part 'revenue_graph_response.g.dart';


@freezed
class RevenueResponse with _$RevenueResponse {
    const factory RevenueResponse({
        @JsonKey(name: "monthname")
        String? monthname,
        @JsonKey(name: "income",fromJson: parseInt)
        int? income,
        @JsonKey(name: "expense",fromJson: parseInt)
        int? expense,
    }) = _RevenueResponse;

    factory RevenueResponse.fromJson(Map<String, dynamic> json) => _$RevenueResponseFromJson(json);
}