// To parse this JSON data, do
//
//     final showReportResponse = showReportResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'show_report_response.freezed.dart';
part 'show_report_response.g.dart';

List<ShowReportResponse> showReportResponseFromJson(String str) => List<ShowReportResponse>.from(json.decode(str).map((x) => ShowReportResponse.fromJson(x)));

String showReportResponseToJson(List<ShowReportResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class ShowReportResponse with _$ShowReportResponse {
    const factory ShowReportResponse({
        @JsonKey(name: "total_sales")
        double? totalSales,
        @JsonKey(name: "tax_payable")
        double? taxPayable,
        @JsonKey(name: "total_orders")
        int? totalOrders,
        @JsonKey(name: "formatted_order_date")
        String? formattedOrderDate,
        @JsonKey(name: "item_heading")
        String? itemHeading,
        @JsonKey(name: "date")
        String? date,
        @JsonKey(name: "day_close_id")
        int? dayCloseId,
    }) = _ShowReportResponse;

    factory ShowReportResponse.fromJson(Map<String, dynamic> json) => _$ShowReportResponseFromJson(json);
}
