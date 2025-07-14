import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_request.freezed.dart';
part 'order_request.g.dart';

@freezed
class OrderRequest with _$OrderRequest {
  const factory OrderRequest({
    @JsonKey(name: "from_date") String? fromDate,
    @JsonKey(name: "to_date") String? toDate,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "filter_id") dynamic filterId,
    @JsonKey(name: "order_status_id") List<int>? orderStatusId,
    @JsonKey(name: "page_first_result") int? pageFirstResult,
    @JsonKey(name: "result_per_page") int? resultPerPage,
    @JsonKey(name: "pay_method_id") int? payMethodId,
    @JsonKey(name: "waiter_id") int? waiterId,
    @JsonKey(name: "payment_status_id") int? paymentStatusId,
    @JsonKey(name: "kiosk_id") int? kioskId,
    @JsonKey(name: "shift_id") int? shiftId,
    @JsonKey(name: "delivery_partner_id") int? deliveryPartnerId,
    @JsonKey(name: "order_option_id") int? orderOptionId,
    @JsonKey(name: "cashier_id") int? cashierId,
    @JsonKey(name: "reference_type_id") int? referenceTypeId,
    @JsonKey(name: "from_time") String? fromTime,
    @JsonKey(name: "to_time") String? toTime,
    @JsonKey(name: "version") String? version,
  }) = _OrderRequest;

  factory OrderRequest.fromJson(Map<String, dynamic> json) =>
      _$OrderRequestFromJson(json);
}
