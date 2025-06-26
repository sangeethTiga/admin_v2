import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_response.freezed.dart';
part 'product_response.g.dart';

@freezed
class ProductResponse with _$ProductResponse {
  const factory ProductResponse({
    @JsonKey(name: "product_id") int? productId,
    @JsonKey(name: "product_name") String? productName,
    @JsonKey(name: "product_code") String? productCode,
    @JsonKey(name: "store_id") int? storeId,
      @JsonKey(name: "bar_code") String? barCode,
    @JsonKey(name: "store_name") String? storeName,
    @JsonKey(name: "product_price") String? productPrice,
    @JsonKey(name: "maintain_stock") int? maintainStock,
    @JsonKey(name: "product_qty") double? productQty,
    @JsonKey(name: "product_hidden") int? productHidden,
    @JsonKey(name: "is_variant") int? isVariant,
    @JsonKey(name: "is_price_editable") int? isPriceEditable,
    @JsonKey(name: "rawcount") int? rawcount,
    @JsonKey(name: "main_category_id") int? mainCategoryId,
    @JsonKey(name: "images") List<Image>? images,
    @JsonKey(name: "product_unit_id") int? productUnitId,
    @JsonKey(name: "product_unit_name") String? productUnitName,
    @JsonKey(name: "separate_variant_stock") int? separateVariantStock,

  }) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({
    @JsonKey(name: "product_img_id") int? productImgId,
    @JsonKey(name: "resource_id") int? resourceId,
    @JsonKey(name: "prod_var_id") int? prodVarId,
    @JsonKey(name: "Large") String? large,
    @JsonKey(name: "Medium") String? medium,
    @JsonKey(name: "Small") String? small,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}
