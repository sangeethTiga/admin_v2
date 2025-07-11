// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'package:admin_v2/shared/utils/helper/helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// import 'dart:convert';

part 'delivery_charge_response.freezed.dart';
part 'delivery_charge_response.g.dart';

@freezed
class DeliveryChargeResponse with _$DeliveryChargeResponse {
  const factory DeliveryChargeResponse({
    @JsonKey(name: "prod_order_id") int? prodOrderId,
    @JsonKey(name: "bill_no") String? billNo,
    @JsonKey(name: "shipping_charge") String? shippingCharge,
    @JsonKey(name: "order_date") String? orderDate,
    @JsonKey(name: "raw_count") int? rawCount,
    @JsonKey(name: "totalamount",fromJson: parseInt) int? totalamount,
  }) = _DeliveryChargeResponse;

  factory DeliveryChargeResponse.fromJson(Map<String, dynamic> json) =>
      _$DeliveryChargeResponseFromJson(json);
}
