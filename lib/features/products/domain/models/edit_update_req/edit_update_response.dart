import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_update_response.freezed.dart';
part 'edit_update_response.g.dart';

@freezed
class EditUpdateResponse with _$EditUpdateResponse {
  const factory EditUpdateResponse({
    @JsonKey(name: "product_name") String? productName,
    @JsonKey(name: "product_qty") double? productQuantity,
    @JsonKey(name: "product_price") String?  productPrice,
    @JsonKey(name: "updated_date") DateTime? updatedDate,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "product_id") int? productId,
    @JsonKey(name: "maintain_stock") int? maintainStock,
    @JsonKey(name: "product_hidden") int? productHidden,
  }) = _EditUpdateResponse;

  factory EditUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$EditUpdateResponseFromJson(json);
}
