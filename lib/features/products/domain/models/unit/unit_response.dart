
import 'package:freezed_annotation/freezed_annotation.dart';

 
part 'unit_response.freezed.dart';
part 'unit_response.g.dart';
 

 
@freezed
class UnitResponse with _$UnitResponse {
    const factory UnitResponse({
        @JsonKey(name: "unit_id")
        int? unitId,
        @JsonKey(name: "store_id")
        int? storeId,
        @JsonKey(name: "unit_name")
        String? unitName,
        @JsonKey(name: "unit_arabic_name")
        dynamic unitArabicName,
    }) = _UnitResponse;
 
    factory UnitResponse.fromJson(Map<String, dynamic> json) => _$UnitResponseFromJson(json);
}