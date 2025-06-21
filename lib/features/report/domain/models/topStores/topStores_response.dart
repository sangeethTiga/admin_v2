import 'package:freezed_annotation/freezed_annotation.dart';

part 'topStores_response.freezed.dart';
part 'topStores_response.g.dart';

@freezed
class TopstoresResponse with _$TopstoresResponse {
  const factory TopstoresResponse({
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "store_name") String? storeName,
    @JsonKey(name: "totalorders") int? totalorders,
  }) = _TopstoresResponse;

  factory TopstoresResponse.fromJson(Map<String, dynamic> json) =>
      _$TopstoresResponseFromJson(json);
}
