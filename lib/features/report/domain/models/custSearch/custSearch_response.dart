// To parse this JSON data, do
//
//     final customerSearchResponse = customerSearchResponseFromMap(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';


part 'custSearch_response.freezed.dart';
part 'custSearch_response.g.dart';



@freezed
class CustomerSearchResponse with _$CustomerSearchResponse {
    const factory CustomerSearchResponse({
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
        String? balanceAmt,
        @JsonKey(name: "order_count")
        int? orderCount,
        @JsonKey(name: "total_purchase_amount")
        String? totalPurchaseAmount,
    }) = _CustomerSearchResponse;

    factory CustomerSearchResponse.fromJson(Map<String, dynamic> json) => _$CustomerSearchResponseFromJson(json);
}
