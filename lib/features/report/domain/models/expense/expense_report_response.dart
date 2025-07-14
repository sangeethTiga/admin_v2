// To parse this JSON data, do
//
//     final expenseReportResponse = expenseReportResponseFromJson(jsonString);

import 'package:admin_v2/shared/utils/helper/helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_report_response.freezed.dart';
part 'expense_report_response.g.dart';

@freezed
class ExpenseReportResponse with _$ExpenseReportResponse {
  const factory ExpenseReportResponse({
    @JsonKey(name: "pay_method_name") String? payMethodName,
    @JsonKey(name: "ac_transaction_date") String? acTransactionDate,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "invoice_number") dynamic invoiceNumber,
    @JsonKey(name: "amount",fromJson: parseDouble) double? amount,
    @JsonKey(name: "account_name") String? accountName,
    @JsonKey(name: "raw_count") int? rawCount,
    @JsonKey(name: "totalamount") String? totalamount,
  }) = _ExpenseReportResponse;

  factory ExpenseReportResponse.fromJson(Map<String, dynamic> json) =>
      _$ExpenseReportResponseFromJson(json);
}
