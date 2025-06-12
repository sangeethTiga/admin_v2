
// To parse this JSON data, do
//
//     final messReportResponse = messReportResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'mess_report_response.freezed.dart';
part 'mess_report_response.g.dart';

List<MessReportResponse> messReportResponseFromJson(String str) => List<MessReportResponse>.from(json.decode(str).map((x) => MessReportResponse.fromJson(x)));

String messReportResponseToJson(List<MessReportResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class MessReportResponse with _$MessReportResponse {
    const factory MessReportResponse({
        @JsonKey(name: "mess_id")
        int? messId,
        @JsonKey(name: "cust_id")
        int? custId,
        @JsonKey(name: "store_id")
        int? storeId,
        @JsonKey(name: "advance_amount")
        int? advanceAmount,
        @JsonKey(name: "cust_name")
        String? custName,
        @JsonKey(name: "store_name")
        String? storeName,
        @JsonKey(name: "rowcount")
        int? rowcount,
        @JsonKey(name: "start_date")
        DateTime? startDate,
        @JsonKey(name: "end_date")
        DateTime? endDate,
        @JsonKey(name: "plans")
        List<dynamic>? plans,
        @JsonKey(name: "balance_amt")
        int? balanceAmt,
        @JsonKey(name: "is_expired")
        int? isExpired,
    }) = _MessReportResponse;

    factory MessReportResponse.fromJson(Map<String, dynamic> json) => _$MessReportResponseFromJson(json);
}
