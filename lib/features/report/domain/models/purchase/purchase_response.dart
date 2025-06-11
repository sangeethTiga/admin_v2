
// To parse this JSON data, do
//
//     final purchaseResponse = purchaseResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';


part 'purchase_response.freezed.dart';
part 'purchase_response.g.dart';


@freezed
class PurchaseResponse with _$PurchaseResponse {
    const factory PurchaseResponse({
        @JsonKey(name: "purchase_id")
        int? purchaseId,
        @JsonKey(name: "store_id")
        int? storeId,
        @JsonKey(name: "purchase_date")
        DateTime? purchaseDate,
        @JsonKey(name: "supplier_id")
        int? supplierId,
        @JsonKey(name: "supplier_name")
        String? supplierName,
        @JsonKey(name: "invoice_number")
        String? invoiceNumber,
        @JsonKey(name: "total_amount")
        int? totalAmount,
        @JsonKey(name: "totalamount")
        int? totalamount,
        @JsonKey(name: "vat")
        double? vat,
        @JsonKey(name: "payment_method_id")
        int? paymentMethodId,
        @JsonKey(name: "is_credit")
        int? isCredit,
        @JsonKey(name: "is_item_wise_purchase")
        int? isItemWisePurchase,
        @JsonKey(name: "bank")
        String? bank,
        @JsonKey(name: "ifsc_code")
        String? ifscCode,
        @JsonKey(name: "acct_number")
        int? acctNumber,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "trans_group_id")
        int? transGroupId,
        @JsonKey(name: "pay_method_name")
        dynamic payMethodName,
        @JsonKey(name: "row_count")
        int? rowCount,
        @JsonKey(name: "item_wise_purchase")
        List? itemWisePurchase,
    }) = _PurchaseResponse;

    factory PurchaseResponse.fromJson(Map<String, dynamic> json) => _$PurchaseResponseFromJson(json);
}


