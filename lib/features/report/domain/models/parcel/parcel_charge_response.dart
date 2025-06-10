import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'parcel_charge_response.freezed.dart';
part 'parcel_charge_response.g.dart';


@freezed
class ParcelChargeResponse with _$ParcelChargeResponse {
    const factory ParcelChargeResponse({
        @JsonKey(name: "prod_order_id")
        int? prodOrderId,
        @JsonKey(name: "bill_no")
        String? billNo,
        @JsonKey(name: "parcel_charge")
        double? parcelCharge,
        @JsonKey(name: "order_date")
        String? orderDate,
        @JsonKey(name: "raw_count")
        int? rawCount,
        @JsonKey(name: "totalamount")
        double? totalamount,
    }) = _ParcelChargeResponse;

    factory ParcelChargeResponse.fromJson(Map<String, dynamic> json) => _$ParcelChargeResponseFromJson(json);
}