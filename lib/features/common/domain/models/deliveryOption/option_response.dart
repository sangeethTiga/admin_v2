// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'option_response.freezed.dart';
part 'option_response.g.dart';

@freezed
class OptionResponse with _$OptionResponse {
  const factory OptionResponse({
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "app_type_id") int? appTypeId,
    @JsonKey(name: "order_option_id") int? orderOptionId,
    @JsonKey(name: "order_option_name") String? orderOptionName,
    @JsonKey(name: "slot_type_id") int? slotTypeId,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "order_option_arabic") dynamic orderOptionArabic,
    @JsonKey(name: "arabic_note") dynamic arabicNote,
  }) = _OptionResponse;

  factory OptionResponse.fromJson(Map<String, dynamic> json) =>
      _$OptionResponseFromJson(json);
}
