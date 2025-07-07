
// To parse this JSON data, do
//
//     final offertypeResponse = offertypeResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'offertype_response.freezed.dart';
part 'offertype_response.g.dart';

@freezed
class OffertypeResponse with _$OffertypeResponse { 
    const factory OffertypeResponse({
        @JsonKey(name: "offer_type_id")
        int? offerTypeId,
        @JsonKey(name: "offer_type")
        String? offerType,
        @JsonKey(name: "resource_id")
        int? resourceId, 
        @JsonKey(name: "offer_type_img")
        dynamic offerTypeImg,
    }) = _OffertypeResponse;

    factory OffertypeResponse.fromJson(Map<String, dynamic> json) => _$OffertypeResponseFromJson(json);
}
