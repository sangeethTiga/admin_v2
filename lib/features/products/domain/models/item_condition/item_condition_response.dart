import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_condition_response.freezed.dart';
part 'item_condition_response.g.dart';

@freezed
class ItemConditionResponse with _$ItemConditionResponse {
  const factory ItemConditionResponse({
    @JsonKey(name: "product_item_condition_id") int? productItemConditionId,
    @JsonKey(name: "product_item_condition_name")
    String? productItemConditionName,
  }) = _ItemConditionResponse;

  factory ItemConditionResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemConditionResponseFromJson(json);
}
