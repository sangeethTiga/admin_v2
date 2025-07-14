import 'package:admin_v2/shared/utils/helper/helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_response.freezed.dart';
part 'order_response.g.dart';

@freezed
class OrderResponse with _$OrderResponse {
  const factory OrderResponse({
    @JsonKey(name: "prod_order_id") int? prodOrderId,
    @JsonKey(name: "order_status_id") int? orderStatusId,
    @JsonKey(name: "order_group_id") String? orderGroupId,
    @JsonKey(name: "is_ckd_for_edit") int? isCkdForEdit,
    @JsonKey(name: "reference_type_id") dynamic referenceTypeId,
    @JsonKey(name: "bill_no") String? billNo,
    @JsonKey(name: "bill_cust_name") String? billCustName,
    @JsonKey(name: "bill_flat_no") String? billFlatNo,
    @JsonKey(name: "bill_building_no") String? billBuildingNo,
    @JsonKey(name: "bill_door_no") String? billDoorNo,
    @JsonKey(name: "bill_city") String? billCity,
    @JsonKey(name: "bill_mobile") String? billMobile,
    @JsonKey(name: "order_date") String? orderDate,
    @JsonKey(name: "order_option_id") int? orderOptionId,
    @JsonKey(name: "payment_method_id") int? paymentMethodId,
    @JsonKey(name: "payment_status_id") int? paymentStatusId,
    @JsonKey(name: "notification_status_id") int? notificationStatusId,
    @JsonKey(name: "notification_status_name") String? notificationStatusName,
    @JsonKey(name: "delivery_date") String? deliveryDate,
    @JsonKey(name: "net_amount") double? netAmount,
    @JsonKey(name: "order_disc_amount") int? orderDiscAmount,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "day_close_id") int? dayCloseId,
    @JsonKey(name: "cust_id") int? custId,
    @JsonKey(name: "order_status_name") String? orderStatusName,
    @JsonKey(name: "pay_method_name") String? payMethodName,
    @JsonKey(name: "payment_status_name") String? paymentStatusName,
    @JsonKey(name: "order_option_name") String? orderOptionName,
    @JsonKey(name: "delivery_boy_id") String? deliveryBoyId,
    @JsonKey(name: "delivery_boy_name") String? deliveryBoyName,
    @JsonKey(name: "is_delivery_assigned") int? isDeliveryAssigned,
    @JsonKey(name: "delivery_partner_id") int? deliveryPartnerId,
    @JsonKey(name: "del_partner_name") String? delPartnerName,
    @JsonKey(name: "rowcount") int? rowcount,
    @JsonKey(name: "total_net_amount", fromJson: parseNumberAsDouble)
    double? totalNetAmount,
    @JsonKey(name: "order_group_total", fromJson: parseNumberAsDouble)
    double? orderGroupTotal,
    @JsonKey(name: "order_group_count", fromJson: parseNumberAsDouble)
    double? orderGroupCount,
    @JsonKey(name: "del_assign_type", fromJson: parseNumberAsDouble)
    double? delAssignType,
  }) = _OrderResponse;

  factory OrderResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseFromJson(json);
}

double? parseNumberAsDouble(dynamic value) {
  dynamic result = parseNumber(value);
  if (result == null) return null;
  if (result is double) return result;
  if (result is int) return result.toDouble();
  return null;
}
