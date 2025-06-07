

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_report_response.freezed.dart';
part 'sales_report_response.g.dart';

@freezed
class SalesReportResponse with _$SalesReportResponse {
  const factory SalesReportResponse({
    @JsonKey(name: "total_sales") double? totalSales,
    @JsonKey(name: "tax_payable") double? taxPayable,
    @JsonKey(name: "total_orders") int? totalOrders,
    @JsonKey(name: "formatted_order_date") DateTime? formattedOrderDate,
    @JsonKey(name: "item_heading") String? itemHeading,
    @JsonKey(name: "date") String? date,
    @JsonKey(name: "day_close_id") int? dayCloseId,
  }) = _SalesReportResponse;

  factory SalesReportResponse.fromJson(Map<String, dynamic> json) =>
      _$SalesReportResponseFromJson(json);
}
