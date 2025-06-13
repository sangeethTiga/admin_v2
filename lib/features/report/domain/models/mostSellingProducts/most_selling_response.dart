import 'package:freezed_annotation/freezed_annotation.dart';


part 'most_selling_response.freezed.dart';
part 'most_selling_response.g.dart';



@freezed
class MostSellingResponse with _$MostSellingResponse {
    const factory MostSellingResponse({
        @JsonKey(name: "category_id")
        int? categoryId,
        @JsonKey(name: "category_name")
        String? categoryName,
        @JsonKey(name: "category_description")
        String? categoryDescription,
        @JsonKey(name: "category_desc_arabic")
        String? categoryDescArabic,
        @JsonKey(name: "is_featured")
        int? isFeatured,
        @JsonKey(name: "is_premium")
        int? isPremium,
    }) = _MostSellingResponse;

    factory MostSellingResponse.fromJson(Map<String, dynamic> json) => _$MostSellingResponseFromJson(json);
}