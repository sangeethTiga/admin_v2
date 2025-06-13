
// To parse this JSON data, do
//
//     final ordersGraphResponse = ordersGraphResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';


part 'orders_graph_response.freezed.dart';
part 'orders_graph_response.g.dart';



@freezed
class OrdersGraphResponse with _$OrdersGraphResponse {
    const factory OrdersGraphResponse({
        @JsonKey(name: "monthname")
        String? monthname,
        @JsonKey(name: "ordercount")
        int? ordercount,
    }) = _OrdersGraphResponse;

    factory OrdersGraphResponse.fromJson(Map<String, dynamic> json) => _$OrdersGraphResponseFromJson(json);
}
