
// To parse this JSON data, do
//
//     final suppliersResponse = suppliersResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'suppliers_response.freezed.dart';
part 'suppliers_response.g.dart';



@freezed
class SuppliersResponse with _$SuppliersResponse {
    const factory SuppliersResponse({
        @JsonKey(name: "supplier_id")
        int? supplierId,
        @JsonKey(name: "supplier_name")
        String? supplierName,
        @JsonKey(name: "email")
        String? email,
        @JsonKey(name: "phone")
        int? phone,
        @JsonKey(name: "account_id")
        int? accountId,
        @JsonKey(name: "account_holder")
        dynamic accountHolder,
        @JsonKey(name: "acct_no")
        dynamic acctNo,
        @JsonKey(name: "ifsc_code")
        dynamic ifscCode,
        @JsonKey(name: "bank")
        dynamic bank,
        @JsonKey(name: "tax_no")
        dynamic taxNo,
        @JsonKey(name: "address")
        dynamic address,
        @JsonKey(name: "area_id")
        int? areaId,
        @JsonKey(name: "state_id")
        int? stateId,
        @JsonKey(name: "country_id")
        int? countryId,
        @JsonKey(name: "balance_amt")
        int? balanceAmt,
        @JsonKey(name: "store_id")
        String? storeId,
        @JsonKey(name: "store_name")
        String? storeName,
    }) = _SuppliersResponse;

    factory SuppliersResponse.fromJson(Map<String, dynamic> json) => _$SuppliersResponseFromJson(json);
}
