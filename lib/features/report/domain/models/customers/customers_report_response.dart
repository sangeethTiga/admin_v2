// To parse this JSON data, do
//
//     final supplierResponse = supplierResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'customers_report_response.freezed.dart';
part 'customers_report_response.g.dart';



@freezed
class CustomersResponse with _$CustomersResponse {
    const factory CustomersResponse({
        @JsonKey(name: "cust_id")
        int? custId,
        @JsonKey(name: "cust_name")
        String? custName,
        @JsonKey(name: "cust_mobile")
        String? custMobile,
        @JsonKey(name: "cust_email")
        String? custEmail,
        @JsonKey(name: "created_date")
        String? createdDate,
        @JsonKey(name: "is_active")
        int? isActive,
        @JsonKey(name: "rowcount")
        int? rowcount,
        @JsonKey(name: "account_id")
        int? accountId,
        @JsonKey(name: "balance_amt")
        int? balanceAmt,
        @JsonKey(name: "order_count")
        int? orderCount,
        @JsonKey(name: "total_purchase_amount")
        int? totalPurchaseAmount,
    }) = _CustomersResponse;

    factory CustomersResponse.fromJson(Map<String, dynamic> json) => _$CustomersResponseFromJson(json);
}
