import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_response.freezed.dart';
part 'category_response.g.dart';

@freezed
class CategoryResponse with _$CategoryResponse {
  const factory CategoryResponse({
    @JsonKey(name: "details") Details? details,
    @JsonKey(name: "subcategories1") List<Subcategories1>? subcategories1,
  }) = _CategoryResponse;

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseFromJson(json);
}

@freezed
class Details with _$Details {
  const factory Details({
    @JsonKey(name: "category_id") int? categoryId,
    @JsonKey(name: "category_name") String? categoryName,
    @JsonKey(name: "category_arabic_name") String? categoryArabicName,
    @JsonKey(name: "category_slug") String? categorySlug,
    @JsonKey(name: "parent_category_id") int? parentCategoryId,
    @JsonKey(name: "resource_small_name") String? resourceSmallName,
    @JsonKey(name: "checked") int? checked,
  }) = _Details;

  factory Details.fromJson(Map<String, dynamic> json) =>
      _$DetailsFromJson(json);
}

@freezed
class Subcategories1 with _$Subcategories1 {
  const factory Subcategories1({
    @JsonKey(name: "details") Details? details,
    @JsonKey(name: "subcategories2") List<dynamic>? subcategories2,
  }) = _Subcategories1;

  factory Subcategories1.fromJson(Map<String, dynamic> json) =>
      _$Subcategories1FromJson(json);
}
