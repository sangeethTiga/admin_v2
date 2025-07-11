import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'search_response.freezed.dart';
part 'search_response.g.dart';


@freezed
class SearchResponse with _$SearchResponse {
    const factory SearchResponse({
        @JsonKey(name: "prod_order_id")
        int? prodOrderId,
        @JsonKey(name: "order_status_id")
        int? orderStatusId,
        @JsonKey(name: "order_group_id")
        String? orderGroupId,
        @JsonKey(name: "is_ckd_for_edit")
        int? isCkdForEdit,
        @JsonKey(name: "reference_type_id")
        int? referenceTypeId,
        @JsonKey(name: "bill_no")
        String? billNo,
        @JsonKey(name: "bill_cust_name")
        String? billCustName,
        @JsonKey(name: "bill_flat_no")
        String? billFlatNo,
        @JsonKey(name: "bill_building_no")
        String? billBuildingNo,
        @JsonKey(name: "bill_door_no")
        String? billDoorNo,
        @JsonKey(name: "bill_city")
        String? billCity,
        @JsonKey(name: "bill_mobile")
        String? billMobile,
        @JsonKey(name: "order_date")
        String? orderDate,
        @JsonKey(name: "order_option_id")
        int? orderOptionId,
        @JsonKey(name: "payment_method_id")
        int? paymentMethodId,
        @JsonKey(name: "payment_status_id")
        int? paymentStatusId,
        @JsonKey(name: "notification_status_id")
        int? notificationStatusId,
        @JsonKey(name: "notification_status_name")
        String? notificationStatusName,
        @JsonKey(name: "delivery_date")
        String? deliveryDate,
        @JsonKey(name: "net_amount")
        int? netAmount,
        @JsonKey(name: "order_disc_amount")
        int? orderDiscAmount,
        @JsonKey(name: "store_id")
        int? storeId,
        @JsonKey(name: "day_close_id")
        int? dayCloseId,
        @JsonKey(name: "cust_id")
        int? custId,
        @JsonKey(name: "order_status_name")
        String? orderStatusName,
        @JsonKey(name: "pay_method_name")
        String? payMethodName,
        @JsonKey(name: "payment_status_name")
        String? paymentStatusName,
        @JsonKey(name: "order_option_name")
        String? orderOptionName,
        @JsonKey(name: "delivery_boy_id")
        String? deliveryBoyId,
        @JsonKey(name: "delivery_boy_name")
        dynamic deliveryBoyName,
        @JsonKey(name: "is_delivery_assigned")
        int? isDeliveryAssigned,
        @JsonKey(name: "delivery_partner_id")
        int? deliveryPartnerId,
        @JsonKey(name: "del_partner_name")
        dynamic delPartnerName,
        @JsonKey(name: "rowcount")
        int? rowcount,
        @JsonKey(name: "total_net_amount")
        String? totalNetAmount,
        @JsonKey(name: "order_group_total")
        String? orderGroupTotal,
        @JsonKey(name: "order_group_count")
        int? orderGroupCount,
        @JsonKey(name: "del_assign_type")
        int? delAssignType,
        @JsonKey(name: "amount_by_cash")
        int? amountByCash,
        @JsonKey(name: "time_cash")
        String? timeCash,
        @JsonKey(name: "amount_by_card")
        int? amountByCard,
        @JsonKey(name: "time_card")
        String? timeCard,
    }) = _SearchResponse;

    factory SearchResponse.fromJson(Map<String, dynamic> json) => _$SearchResponseFromJson(json);
}
