import 'package:admin_v2/shared/utils/helper/helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_report_response.freezed.dart';
part 'sales_report_response.g.dart';

@freezed
class SalesReportResponse with _$SalesReportResponse {
  const factory SalesReportResponse({
    @JsonKey(name: "total_sales", fromJson: parseDouble) double? totalSales,
    @JsonKey(name: "tax_payable", fromJson: parseDouble) double? taxPayable,
    @JsonKey(name: "total_orders", fromJson: parseDouble) double? totalOrders,
    @JsonKey(name: "formatted_order_date") String? formattedOrderDate,
    @JsonKey(name: "item_heading") String? itemHeading,
    @JsonKey(name: "date") DateTime? date,
    @JsonKey(name: "day_close_id") int? dayCloseId,
  }) = _SalesReportResponse;

  factory SalesReportResponse.fromJson(Map<String, dynamic> json) =>
      _$SalesReportResponseFromJson(json);
}
