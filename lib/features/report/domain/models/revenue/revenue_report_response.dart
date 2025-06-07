import 'package:freezed_annotation/freezed_annotation.dart';

part 'revenue_report_response.freezed.dart';
part 'revenue_report_response.g.dart';

@freezed
class ReveneReportResponse with _$ReveneReportResponse {
  const factory ReveneReportResponse({
    @JsonKey(name: "pay_method_name") String? payMethodName,
    @JsonKey(name: "ac_transaction_date") String? acTransactionDate,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "invoice_number") String? invoiceNumber,
    @JsonKey(name: "amount") double? amount,
    @JsonKey(name: "account_name") String? accountName,
    @JsonKey(name: "raw_count") int? rawCount,
    @JsonKey(name: "totalamount") String? totalamount,
  }) = _ReveneReportResponse;

  factory ReveneReportResponse.fromJson(Map<String, dynamic> json) =>
      _$ReveneReportResponseFromJson(json);
}
