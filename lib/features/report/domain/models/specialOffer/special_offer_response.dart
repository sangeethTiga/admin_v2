// To parse this JSON data, do
//
//     final specialOfferResponse = specialOfferResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'special_offer_response.freezed.dart';
part 'special_offer_response.g.dart';


@freezed
class SpecialOfferResponse with _$SpecialOfferResponse {
    const factory SpecialOfferResponse({
        @JsonKey(name: "prod_offer_type_id")
        int? prodOfferTypeId,
        @JsonKey(name: "store_id")
        int? storeId,
        @JsonKey(name: "resource_id")
        int? resourceId,
        @JsonKey(name: "offer_type_img")
        String? offerTypeImg,
        @JsonKey(name: "offer_slug")
        String? offerSlug,
        @JsonKey(name: "offer_type_arabic_name")
        String? offerTypeArabicName,
        @JsonKey(name: "from_date")
        dynamic fromDate,
        @JsonKey(name: "to_date")
        dynamic toDate,
        @JsonKey(name: "offer_type_name")
        String? offerTypeName,
        @JsonKey(name: "created_at")
        DateTime? createdAt,
        @JsonKey(name: "store_name")
        String? storeName,
    }) = _SpecialOfferResponse;

    factory SpecialOfferResponse.fromJson(Map<String, dynamic> json) => _$SpecialOfferResponseFromJson(json);
}
