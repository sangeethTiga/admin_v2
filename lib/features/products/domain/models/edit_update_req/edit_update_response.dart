import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_update_response.freezed.dart';
part 'edit_update_response.g.dart';

@freezed
class EditUpdateResponse with _$EditUpdateResponse {
  const factory EditUpdateResponse({
    @JsonKey(name: "product_name") String? productName,
  
    @JsonKey(name: "min_order_qty") int? minOrderQuantity,
    @JsonKey(name: "prod_type_id") int? proTypeId,
    @JsonKey(name: "product_price") double? productPrice,
    @JsonKey(name: "updated_date") DateTime? updatedDate,
    @JsonKey(name: "price_per_unit") double? pricePerUnit,
   
  }) = _EditUpdateResponse;

  factory EditUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$EditUpdateResponseFromJson(json);
}
