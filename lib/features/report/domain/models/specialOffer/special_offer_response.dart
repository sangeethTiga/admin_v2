// To parse this JSON data, do
//
//     final specialOfferResponse = specialOfferResponseFromMap(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'special_offer_response.freezed.dart';
part 'special_offer_response.g.dart';



@freezed
class SpecialOfferResponse with _$SpecialOfferResponse {
    const factory SpecialOfferResponse({
        @JsonKey(name: "offer_type_id")
         int ?offerTypeId,
        @JsonKey(name: "offer_type")
         String ?offerType,
        @JsonKey(name: "resource_id")
         int ?resourceId,
        @JsonKey(name: "is_active")
         int ?isActive,
        @JsonKey(name: "offer_type_img")
         dynamic? offerTypeImg,
    }) = _SpecialOfferResponse;

    factory SpecialOfferResponse.fromJson(Map<String, dynamic> json) => _$SpecialOfferResponseFromJson(json);
}
