import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_status_response.freezed.dart';
part 'order_status_response.g.dart';

@freezed
class OrderStatusResponse with _$OrderStatusResponse {
  const factory OrderStatusResponse({
    @JsonKey(name: "order_status_id") int? orderStatusId,
    @JsonKey(name: "order_status_name") String? orderStatusName,
    @JsonKey(name: "order_status_arabic_name") String? orderStatusArabicName,
  }) = _OrderStatusResponse;

  factory OrderStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderStatusResponseFromJson(json);
}
