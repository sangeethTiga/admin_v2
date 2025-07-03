// To parse this JSON data, do
//
//     final paymentMethodResponse = paymentMethodResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'payment_method_response.freezed.dart';
part 'payment_method_response.g.dart';

List<PaymentMethodResponse> paymentMethodResponseFromJson(String str) => List<PaymentMethodResponse>.from(json.decode(str).map((x) => PaymentMethodResponse.fromJson(x)));

String paymentMethodResponseToJson(List<PaymentMethodResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class PaymentMethodResponse with _$PaymentMethodResponse {
    const factory PaymentMethodResponse({
        @JsonKey(name: "pay_method_id")
        int? payMethodId,
        @JsonKey(name: "store_id")
        int? storeId,
        @JsonKey(name: "pay_method_name")
        String? payMethodName,
        @JsonKey(name: "pay_method_arabic")
        String? payMethodArabic,
        @JsonKey(name: "is_active")
        int? isActive,
        @JsonKey(name: "created_at")
        String? createdAt,
        @JsonKey(name: "updated_at")
        String? updatedAt,
        @JsonKey(name: "is_synced")
        int? isSynced,
        @JsonKey(name: "remarks")
        String? remarks,
    }) = _PaymentMethodResponse;

    factory PaymentMethodResponse.fromJson(Map<String, dynamic> json) => _$PaymentMethodResponseFromJson(json);
}
