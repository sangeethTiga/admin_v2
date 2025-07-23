// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrderResponse _$OrderResponseFromJson(Map<String, dynamic> json) {
  return _OrderResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderResponse {
  @JsonKey(name: "prod_order_id")
  int? get prodOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: "order_status_id")
  int? get orderStatusId => throw _privateConstructorUsedError;
  @JsonKey(name: "order_group_id")
  String? get orderGroupId => throw _privateConstructorUsedError;
  @JsonKey(name: "is_ckd_for_edit")
  int? get isCkdForEdit => throw _privateConstructorUsedError;
  @JsonKey(name: "reference_type_id")
  dynamic get referenceTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_no")
  String? get billNo => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_cust_name")
  String? get billCustName => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_flat_no")
  String? get billFlatNo => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_building_no")
  String? get billBuildingNo => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_door_no")
  String? get billDoorNo => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_city")
  String? get billCity => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_mobile")
  String? get billMobile => throw _privateConstructorUsedError;
  @JsonKey(name: "order_date")
  String? get orderDate => throw _privateConstructorUsedError;
  @JsonKey(name: "order_option_id")
  int? get orderOptionId => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method_id")
  int? get paymentMethodId => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_status_id")
  int? get paymentStatusId => throw _privateConstructorUsedError;
  @JsonKey(name: "notification_status_id")
  int? get notificationStatusId => throw _privateConstructorUsedError;
  @JsonKey(name: "notification_status_name")
  String? get notificationStatusName => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_date")
  String? get deliveryDate => throw _privateConstructorUsedError;
  @JsonKey(name: "net_amount")
  String? get netAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "order_disc_amount")
  String? get orderDiscAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "store_id")
  int? get storeId => throw _privateConstructorUsedError;
  @JsonKey(name: "day_close_id")
  int? get dayCloseId => throw _privateConstructorUsedError;
  @JsonKey(name: "cust_id")
  int? get custId => throw _privateConstructorUsedError;
  @JsonKey(name: "order_status_name")
  String? get orderStatusName => throw _privateConstructorUsedError;
  @JsonKey(name: "pay_method_name")
  String? get payMethodName => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_status_name")
  String? get paymentStatusName => throw _privateConstructorUsedError;
  @JsonKey(name: "order_option_name")
  String? get orderOptionName => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_boy_id")
  String? get deliveryBoyId => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_boy_name")
  String? get deliveryBoyName => throw _privateConstructorUsedError;
  @JsonKey(name: "is_delivery_assigned")
  int? get isDeliveryAssigned => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_partner_id")
  int? get deliveryPartnerId => throw _privateConstructorUsedError;
  @JsonKey(name: "del_partner_name")
  String? get delPartnerName => throw _privateConstructorUsedError;
  @JsonKey(name: "rowcount")
  int? get rowcount => throw _privateConstructorUsedError;
  @JsonKey(name: "total_net_amount", fromJson: parseNumberAsDouble)
  double? get totalNetAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "order_group_total", fromJson: parseNumberAsDouble)
  double? get orderGroupTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "order_group_count", fromJson: parseNumberAsDouble)
  double? get orderGroupCount => throw _privateConstructorUsedError;
  @JsonKey(name: "del_assign_type", fromJson: parseNumberAsDouble)
  double? get delAssignType => throw _privateConstructorUsedError;

  /// Serializes this OrderResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderResponseCopyWith<OrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderResponseCopyWith<$Res> {
  factory $OrderResponseCopyWith(
    OrderResponse value,
    $Res Function(OrderResponse) then,
  ) = _$OrderResponseCopyWithImpl<$Res, OrderResponse>;
  @useResult
  $Res call({
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
    @JsonKey(name: "net_amount") String? netAmount,
    @JsonKey(name: "order_disc_amount") String? orderDiscAmount,
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
  });
}

/// @nodoc
class _$OrderResponseCopyWithImpl<$Res, $Val extends OrderResponse>
    implements $OrderResponseCopyWith<$Res> {
  _$OrderResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodOrderId = freezed,
    Object? orderStatusId = freezed,
    Object? orderGroupId = freezed,
    Object? isCkdForEdit = freezed,
    Object? referenceTypeId = freezed,
    Object? billNo = freezed,
    Object? billCustName = freezed,
    Object? billFlatNo = freezed,
    Object? billBuildingNo = freezed,
    Object? billDoorNo = freezed,
    Object? billCity = freezed,
    Object? billMobile = freezed,
    Object? orderDate = freezed,
    Object? orderOptionId = freezed,
    Object? paymentMethodId = freezed,
    Object? paymentStatusId = freezed,
    Object? notificationStatusId = freezed,
    Object? notificationStatusName = freezed,
    Object? deliveryDate = freezed,
    Object? netAmount = freezed,
    Object? orderDiscAmount = freezed,
    Object? storeId = freezed,
    Object? dayCloseId = freezed,
    Object? custId = freezed,
    Object? orderStatusName = freezed,
    Object? payMethodName = freezed,
    Object? paymentStatusName = freezed,
    Object? orderOptionName = freezed,
    Object? deliveryBoyId = freezed,
    Object? deliveryBoyName = freezed,
    Object? isDeliveryAssigned = freezed,
    Object? deliveryPartnerId = freezed,
    Object? delPartnerName = freezed,
    Object? rowcount = freezed,
    Object? totalNetAmount = freezed,
    Object? orderGroupTotal = freezed,
    Object? orderGroupCount = freezed,
    Object? delAssignType = freezed,
  }) {
    return _then(
      _value.copyWith(
            prodOrderId: freezed == prodOrderId
                ? _value.prodOrderId
                : prodOrderId // ignore: cast_nullable_to_non_nullable
                      as int?,
            orderStatusId: freezed == orderStatusId
                ? _value.orderStatusId
                : orderStatusId // ignore: cast_nullable_to_non_nullable
                      as int?,
            orderGroupId: freezed == orderGroupId
                ? _value.orderGroupId
                : orderGroupId // ignore: cast_nullable_to_non_nullable
                      as String?,
            isCkdForEdit: freezed == isCkdForEdit
                ? _value.isCkdForEdit
                : isCkdForEdit // ignore: cast_nullable_to_non_nullable
                      as int?,
            referenceTypeId: freezed == referenceTypeId
                ? _value.referenceTypeId
                : referenceTypeId // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            billNo: freezed == billNo
                ? _value.billNo
                : billNo // ignore: cast_nullable_to_non_nullable
                      as String?,
            billCustName: freezed == billCustName
                ? _value.billCustName
                : billCustName // ignore: cast_nullable_to_non_nullable
                      as String?,
            billFlatNo: freezed == billFlatNo
                ? _value.billFlatNo
                : billFlatNo // ignore: cast_nullable_to_non_nullable
                      as String?,
            billBuildingNo: freezed == billBuildingNo
                ? _value.billBuildingNo
                : billBuildingNo // ignore: cast_nullable_to_non_nullable
                      as String?,
            billDoorNo: freezed == billDoorNo
                ? _value.billDoorNo
                : billDoorNo // ignore: cast_nullable_to_non_nullable
                      as String?,
            billCity: freezed == billCity
                ? _value.billCity
                : billCity // ignore: cast_nullable_to_non_nullable
                      as String?,
            billMobile: freezed == billMobile
                ? _value.billMobile
                : billMobile // ignore: cast_nullable_to_non_nullable
                      as String?,
            orderDate: freezed == orderDate
                ? _value.orderDate
                : orderDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            orderOptionId: freezed == orderOptionId
                ? _value.orderOptionId
                : orderOptionId // ignore: cast_nullable_to_non_nullable
                      as int?,
            paymentMethodId: freezed == paymentMethodId
                ? _value.paymentMethodId
                : paymentMethodId // ignore: cast_nullable_to_non_nullable
                      as int?,
            paymentStatusId: freezed == paymentStatusId
                ? _value.paymentStatusId
                : paymentStatusId // ignore: cast_nullable_to_non_nullable
                      as int?,
            notificationStatusId: freezed == notificationStatusId
                ? _value.notificationStatusId
                : notificationStatusId // ignore: cast_nullable_to_non_nullable
                      as int?,
            notificationStatusName: freezed == notificationStatusName
                ? _value.notificationStatusName
                : notificationStatusName // ignore: cast_nullable_to_non_nullable
                      as String?,
            deliveryDate: freezed == deliveryDate
                ? _value.deliveryDate
                : deliveryDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            netAmount: freezed == netAmount
                ? _value.netAmount
                : netAmount // ignore: cast_nullable_to_non_nullable
                      as String?,
            orderDiscAmount: freezed == orderDiscAmount
                ? _value.orderDiscAmount
                : orderDiscAmount // ignore: cast_nullable_to_non_nullable
                      as String?,
            storeId: freezed == storeId
                ? _value.storeId
                : storeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            dayCloseId: freezed == dayCloseId
                ? _value.dayCloseId
                : dayCloseId // ignore: cast_nullable_to_non_nullable
                      as int?,
            custId: freezed == custId
                ? _value.custId
                : custId // ignore: cast_nullable_to_non_nullable
                      as int?,
            orderStatusName: freezed == orderStatusName
                ? _value.orderStatusName
                : orderStatusName // ignore: cast_nullable_to_non_nullable
                      as String?,
            payMethodName: freezed == payMethodName
                ? _value.payMethodName
                : payMethodName // ignore: cast_nullable_to_non_nullable
                      as String?,
            paymentStatusName: freezed == paymentStatusName
                ? _value.paymentStatusName
                : paymentStatusName // ignore: cast_nullable_to_non_nullable
                      as String?,
            orderOptionName: freezed == orderOptionName
                ? _value.orderOptionName
                : orderOptionName // ignore: cast_nullable_to_non_nullable
                      as String?,
            deliveryBoyId: freezed == deliveryBoyId
                ? _value.deliveryBoyId
                : deliveryBoyId // ignore: cast_nullable_to_non_nullable
                      as String?,
            deliveryBoyName: freezed == deliveryBoyName
                ? _value.deliveryBoyName
                : deliveryBoyName // ignore: cast_nullable_to_non_nullable
                      as String?,
            isDeliveryAssigned: freezed == isDeliveryAssigned
                ? _value.isDeliveryAssigned
                : isDeliveryAssigned // ignore: cast_nullable_to_non_nullable
                      as int?,
            deliveryPartnerId: freezed == deliveryPartnerId
                ? _value.deliveryPartnerId
                : deliveryPartnerId // ignore: cast_nullable_to_non_nullable
                      as int?,
            delPartnerName: freezed == delPartnerName
                ? _value.delPartnerName
                : delPartnerName // ignore: cast_nullable_to_non_nullable
                      as String?,
            rowcount: freezed == rowcount
                ? _value.rowcount
                : rowcount // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalNetAmount: freezed == totalNetAmount
                ? _value.totalNetAmount
                : totalNetAmount // ignore: cast_nullable_to_non_nullable
                      as double?,
            orderGroupTotal: freezed == orderGroupTotal
                ? _value.orderGroupTotal
                : orderGroupTotal // ignore: cast_nullable_to_non_nullable
                      as double?,
            orderGroupCount: freezed == orderGroupCount
                ? _value.orderGroupCount
                : orderGroupCount // ignore: cast_nullable_to_non_nullable
                      as double?,
            delAssignType: freezed == delAssignType
                ? _value.delAssignType
                : delAssignType // ignore: cast_nullable_to_non_nullable
                      as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderResponseImplCopyWith<$Res>
    implements $OrderResponseCopyWith<$Res> {
  factory _$$OrderResponseImplCopyWith(
    _$OrderResponseImpl value,
    $Res Function(_$OrderResponseImpl) then,
  ) = __$$OrderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
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
    @JsonKey(name: "net_amount") String? netAmount,
    @JsonKey(name: "order_disc_amount") String? orderDiscAmount,
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
  });
}

/// @nodoc
class __$$OrderResponseImplCopyWithImpl<$Res>
    extends _$OrderResponseCopyWithImpl<$Res, _$OrderResponseImpl>
    implements _$$OrderResponseImplCopyWith<$Res> {
  __$$OrderResponseImplCopyWithImpl(
    _$OrderResponseImpl _value,
    $Res Function(_$OrderResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodOrderId = freezed,
    Object? orderStatusId = freezed,
    Object? orderGroupId = freezed,
    Object? isCkdForEdit = freezed,
    Object? referenceTypeId = freezed,
    Object? billNo = freezed,
    Object? billCustName = freezed,
    Object? billFlatNo = freezed,
    Object? billBuildingNo = freezed,
    Object? billDoorNo = freezed,
    Object? billCity = freezed,
    Object? billMobile = freezed,
    Object? orderDate = freezed,
    Object? orderOptionId = freezed,
    Object? paymentMethodId = freezed,
    Object? paymentStatusId = freezed,
    Object? notificationStatusId = freezed,
    Object? notificationStatusName = freezed,
    Object? deliveryDate = freezed,
    Object? netAmount = freezed,
    Object? orderDiscAmount = freezed,
    Object? storeId = freezed,
    Object? dayCloseId = freezed,
    Object? custId = freezed,
    Object? orderStatusName = freezed,
    Object? payMethodName = freezed,
    Object? paymentStatusName = freezed,
    Object? orderOptionName = freezed,
    Object? deliveryBoyId = freezed,
    Object? deliveryBoyName = freezed,
    Object? isDeliveryAssigned = freezed,
    Object? deliveryPartnerId = freezed,
    Object? delPartnerName = freezed,
    Object? rowcount = freezed,
    Object? totalNetAmount = freezed,
    Object? orderGroupTotal = freezed,
    Object? orderGroupCount = freezed,
    Object? delAssignType = freezed,
  }) {
    return _then(
      _$OrderResponseImpl(
        prodOrderId: freezed == prodOrderId
            ? _value.prodOrderId
            : prodOrderId // ignore: cast_nullable_to_non_nullable
                  as int?,
        orderStatusId: freezed == orderStatusId
            ? _value.orderStatusId
            : orderStatusId // ignore: cast_nullable_to_non_nullable
                  as int?,
        orderGroupId: freezed == orderGroupId
            ? _value.orderGroupId
            : orderGroupId // ignore: cast_nullable_to_non_nullable
                  as String?,
        isCkdForEdit: freezed == isCkdForEdit
            ? _value.isCkdForEdit
            : isCkdForEdit // ignore: cast_nullable_to_non_nullable
                  as int?,
        referenceTypeId: freezed == referenceTypeId
            ? _value.referenceTypeId
            : referenceTypeId // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        billNo: freezed == billNo
            ? _value.billNo
            : billNo // ignore: cast_nullable_to_non_nullable
                  as String?,
        billCustName: freezed == billCustName
            ? _value.billCustName
            : billCustName // ignore: cast_nullable_to_non_nullable
                  as String?,
        billFlatNo: freezed == billFlatNo
            ? _value.billFlatNo
            : billFlatNo // ignore: cast_nullable_to_non_nullable
                  as String?,
        billBuildingNo: freezed == billBuildingNo
            ? _value.billBuildingNo
            : billBuildingNo // ignore: cast_nullable_to_non_nullable
                  as String?,
        billDoorNo: freezed == billDoorNo
            ? _value.billDoorNo
            : billDoorNo // ignore: cast_nullable_to_non_nullable
                  as String?,
        billCity: freezed == billCity
            ? _value.billCity
            : billCity // ignore: cast_nullable_to_non_nullable
                  as String?,
        billMobile: freezed == billMobile
            ? _value.billMobile
            : billMobile // ignore: cast_nullable_to_non_nullable
                  as String?,
        orderDate: freezed == orderDate
            ? _value.orderDate
            : orderDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        orderOptionId: freezed == orderOptionId
            ? _value.orderOptionId
            : orderOptionId // ignore: cast_nullable_to_non_nullable
                  as int?,
        paymentMethodId: freezed == paymentMethodId
            ? _value.paymentMethodId
            : paymentMethodId // ignore: cast_nullable_to_non_nullable
                  as int?,
        paymentStatusId: freezed == paymentStatusId
            ? _value.paymentStatusId
            : paymentStatusId // ignore: cast_nullable_to_non_nullable
                  as int?,
        notificationStatusId: freezed == notificationStatusId
            ? _value.notificationStatusId
            : notificationStatusId // ignore: cast_nullable_to_non_nullable
                  as int?,
        notificationStatusName: freezed == notificationStatusName
            ? _value.notificationStatusName
            : notificationStatusName // ignore: cast_nullable_to_non_nullable
                  as String?,
        deliveryDate: freezed == deliveryDate
            ? _value.deliveryDate
            : deliveryDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        netAmount: freezed == netAmount
            ? _value.netAmount
            : netAmount // ignore: cast_nullable_to_non_nullable
                  as String?,
        orderDiscAmount: freezed == orderDiscAmount
            ? _value.orderDiscAmount
            : orderDiscAmount // ignore: cast_nullable_to_non_nullable
                  as String?,
        storeId: freezed == storeId
            ? _value.storeId
            : storeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        dayCloseId: freezed == dayCloseId
            ? _value.dayCloseId
            : dayCloseId // ignore: cast_nullable_to_non_nullable
                  as int?,
        custId: freezed == custId
            ? _value.custId
            : custId // ignore: cast_nullable_to_non_nullable
                  as int?,
        orderStatusName: freezed == orderStatusName
            ? _value.orderStatusName
            : orderStatusName // ignore: cast_nullable_to_non_nullable
                  as String?,
        payMethodName: freezed == payMethodName
            ? _value.payMethodName
            : payMethodName // ignore: cast_nullable_to_non_nullable
                  as String?,
        paymentStatusName: freezed == paymentStatusName
            ? _value.paymentStatusName
            : paymentStatusName // ignore: cast_nullable_to_non_nullable
                  as String?,
        orderOptionName: freezed == orderOptionName
            ? _value.orderOptionName
            : orderOptionName // ignore: cast_nullable_to_non_nullable
                  as String?,
        deliveryBoyId: freezed == deliveryBoyId
            ? _value.deliveryBoyId
            : deliveryBoyId // ignore: cast_nullable_to_non_nullable
                  as String?,
        deliveryBoyName: freezed == deliveryBoyName
            ? _value.deliveryBoyName
            : deliveryBoyName // ignore: cast_nullable_to_non_nullable
                  as String?,
        isDeliveryAssigned: freezed == isDeliveryAssigned
            ? _value.isDeliveryAssigned
            : isDeliveryAssigned // ignore: cast_nullable_to_non_nullable
                  as int?,
        deliveryPartnerId: freezed == deliveryPartnerId
            ? _value.deliveryPartnerId
            : deliveryPartnerId // ignore: cast_nullable_to_non_nullable
                  as int?,
        delPartnerName: freezed == delPartnerName
            ? _value.delPartnerName
            : delPartnerName // ignore: cast_nullable_to_non_nullable
                  as String?,
        rowcount: freezed == rowcount
            ? _value.rowcount
            : rowcount // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalNetAmount: freezed == totalNetAmount
            ? _value.totalNetAmount
            : totalNetAmount // ignore: cast_nullable_to_non_nullable
                  as double?,
        orderGroupTotal: freezed == orderGroupTotal
            ? _value.orderGroupTotal
            : orderGroupTotal // ignore: cast_nullable_to_non_nullable
                  as double?,
        orderGroupCount: freezed == orderGroupCount
            ? _value.orderGroupCount
            : orderGroupCount // ignore: cast_nullable_to_non_nullable
                  as double?,
        delAssignType: freezed == delAssignType
            ? _value.delAssignType
            : delAssignType // ignore: cast_nullable_to_non_nullable
                  as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderResponseImpl implements _OrderResponse {
  const _$OrderResponseImpl({
    @JsonKey(name: "prod_order_id") this.prodOrderId,
    @JsonKey(name: "order_status_id") this.orderStatusId,
    @JsonKey(name: "order_group_id") this.orderGroupId,
    @JsonKey(name: "is_ckd_for_edit") this.isCkdForEdit,
    @JsonKey(name: "reference_type_id") this.referenceTypeId,
    @JsonKey(name: "bill_no") this.billNo,
    @JsonKey(name: "bill_cust_name") this.billCustName,
    @JsonKey(name: "bill_flat_no") this.billFlatNo,
    @JsonKey(name: "bill_building_no") this.billBuildingNo,
    @JsonKey(name: "bill_door_no") this.billDoorNo,
    @JsonKey(name: "bill_city") this.billCity,
    @JsonKey(name: "bill_mobile") this.billMobile,
    @JsonKey(name: "order_date") this.orderDate,
    @JsonKey(name: "order_option_id") this.orderOptionId,
    @JsonKey(name: "payment_method_id") this.paymentMethodId,
    @JsonKey(name: "payment_status_id") this.paymentStatusId,
    @JsonKey(name: "notification_status_id") this.notificationStatusId,
    @JsonKey(name: "notification_status_name") this.notificationStatusName,
    @JsonKey(name: "delivery_date") this.deliveryDate,
    @JsonKey(name: "net_amount") this.netAmount,
    @JsonKey(name: "order_disc_amount") this.orderDiscAmount,
    @JsonKey(name: "store_id") this.storeId,
    @JsonKey(name: "day_close_id") this.dayCloseId,
    @JsonKey(name: "cust_id") this.custId,
    @JsonKey(name: "order_status_name") this.orderStatusName,
    @JsonKey(name: "pay_method_name") this.payMethodName,
    @JsonKey(name: "payment_status_name") this.paymentStatusName,
    @JsonKey(name: "order_option_name") this.orderOptionName,
    @JsonKey(name: "delivery_boy_id") this.deliveryBoyId,
    @JsonKey(name: "delivery_boy_name") this.deliveryBoyName,
    @JsonKey(name: "is_delivery_assigned") this.isDeliveryAssigned,
    @JsonKey(name: "delivery_partner_id") this.deliveryPartnerId,
    @JsonKey(name: "del_partner_name") this.delPartnerName,
    @JsonKey(name: "rowcount") this.rowcount,
    @JsonKey(name: "total_net_amount", fromJson: parseNumberAsDouble)
    this.totalNetAmount,
    @JsonKey(name: "order_group_total", fromJson: parseNumberAsDouble)
    this.orderGroupTotal,
    @JsonKey(name: "order_group_count", fromJson: parseNumberAsDouble)
    this.orderGroupCount,
    @JsonKey(name: "del_assign_type", fromJson: parseNumberAsDouble)
    this.delAssignType,
  });

  factory _$OrderResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderResponseImplFromJson(json);

  @override
  @JsonKey(name: "prod_order_id")
  final int? prodOrderId;
  @override
  @JsonKey(name: "order_status_id")
  final int? orderStatusId;
  @override
  @JsonKey(name: "order_group_id")
  final String? orderGroupId;
  @override
  @JsonKey(name: "is_ckd_for_edit")
  final int? isCkdForEdit;
  @override
  @JsonKey(name: "reference_type_id")
  final dynamic referenceTypeId;
  @override
  @JsonKey(name: "bill_no")
  final String? billNo;
  @override
  @JsonKey(name: "bill_cust_name")
  final String? billCustName;
  @override
  @JsonKey(name: "bill_flat_no")
  final String? billFlatNo;
  @override
  @JsonKey(name: "bill_building_no")
  final String? billBuildingNo;
  @override
  @JsonKey(name: "bill_door_no")
  final String? billDoorNo;
  @override
  @JsonKey(name: "bill_city")
  final String? billCity;
  @override
  @JsonKey(name: "bill_mobile")
  final String? billMobile;
  @override
  @JsonKey(name: "order_date")
  final String? orderDate;
  @override
  @JsonKey(name: "order_option_id")
  final int? orderOptionId;
  @override
  @JsonKey(name: "payment_method_id")
  final int? paymentMethodId;
  @override
  @JsonKey(name: "payment_status_id")
  final int? paymentStatusId;
  @override
  @JsonKey(name: "notification_status_id")
  final int? notificationStatusId;
  @override
  @JsonKey(name: "notification_status_name")
  final String? notificationStatusName;
  @override
  @JsonKey(name: "delivery_date")
  final String? deliveryDate;
  @override
  @JsonKey(name: "net_amount")
  final String? netAmount;
  @override
  @JsonKey(name: "order_disc_amount")
  final String? orderDiscAmount;
  @override
  @JsonKey(name: "store_id")
  final int? storeId;
  @override
  @JsonKey(name: "day_close_id")
  final int? dayCloseId;
  @override
  @JsonKey(name: "cust_id")
  final int? custId;
  @override
  @JsonKey(name: "order_status_name")
  final String? orderStatusName;
  @override
  @JsonKey(name: "pay_method_name")
  final String? payMethodName;
  @override
  @JsonKey(name: "payment_status_name")
  final String? paymentStatusName;
  @override
  @JsonKey(name: "order_option_name")
  final String? orderOptionName;
  @override
  @JsonKey(name: "delivery_boy_id")
  final String? deliveryBoyId;
  @override
  @JsonKey(name: "delivery_boy_name")
  final String? deliveryBoyName;
  @override
  @JsonKey(name: "is_delivery_assigned")
  final int? isDeliveryAssigned;
  @override
  @JsonKey(name: "delivery_partner_id")
  final int? deliveryPartnerId;
  @override
  @JsonKey(name: "del_partner_name")
  final String? delPartnerName;
  @override
  @JsonKey(name: "rowcount")
  final int? rowcount;
  @override
  @JsonKey(name: "total_net_amount", fromJson: parseNumberAsDouble)
  final double? totalNetAmount;
  @override
  @JsonKey(name: "order_group_total", fromJson: parseNumberAsDouble)
  final double? orderGroupTotal;
  @override
  @JsonKey(name: "order_group_count", fromJson: parseNumberAsDouble)
  final double? orderGroupCount;
  @override
  @JsonKey(name: "del_assign_type", fromJson: parseNumberAsDouble)
  final double? delAssignType;

  @override
  String toString() {
    return 'OrderResponse(prodOrderId: $prodOrderId, orderStatusId: $orderStatusId, orderGroupId: $orderGroupId, isCkdForEdit: $isCkdForEdit, referenceTypeId: $referenceTypeId, billNo: $billNo, billCustName: $billCustName, billFlatNo: $billFlatNo, billBuildingNo: $billBuildingNo, billDoorNo: $billDoorNo, billCity: $billCity, billMobile: $billMobile, orderDate: $orderDate, orderOptionId: $orderOptionId, paymentMethodId: $paymentMethodId, paymentStatusId: $paymentStatusId, notificationStatusId: $notificationStatusId, notificationStatusName: $notificationStatusName, deliveryDate: $deliveryDate, netAmount: $netAmount, orderDiscAmount: $orderDiscAmount, storeId: $storeId, dayCloseId: $dayCloseId, custId: $custId, orderStatusName: $orderStatusName, payMethodName: $payMethodName, paymentStatusName: $paymentStatusName, orderOptionName: $orderOptionName, deliveryBoyId: $deliveryBoyId, deliveryBoyName: $deliveryBoyName, isDeliveryAssigned: $isDeliveryAssigned, deliveryPartnerId: $deliveryPartnerId, delPartnerName: $delPartnerName, rowcount: $rowcount, totalNetAmount: $totalNetAmount, orderGroupTotal: $orderGroupTotal, orderGroupCount: $orderGroupCount, delAssignType: $delAssignType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderResponseImpl &&
            (identical(other.prodOrderId, prodOrderId) ||
                other.prodOrderId == prodOrderId) &&
            (identical(other.orderStatusId, orderStatusId) ||
                other.orderStatusId == orderStatusId) &&
            (identical(other.orderGroupId, orderGroupId) ||
                other.orderGroupId == orderGroupId) &&
            (identical(other.isCkdForEdit, isCkdForEdit) ||
                other.isCkdForEdit == isCkdForEdit) &&
            const DeepCollectionEquality().equals(
              other.referenceTypeId,
              referenceTypeId,
            ) &&
            (identical(other.billNo, billNo) || other.billNo == billNo) &&
            (identical(other.billCustName, billCustName) ||
                other.billCustName == billCustName) &&
            (identical(other.billFlatNo, billFlatNo) ||
                other.billFlatNo == billFlatNo) &&
            (identical(other.billBuildingNo, billBuildingNo) ||
                other.billBuildingNo == billBuildingNo) &&
            (identical(other.billDoorNo, billDoorNo) ||
                other.billDoorNo == billDoorNo) &&
            (identical(other.billCity, billCity) ||
                other.billCity == billCity) &&
            (identical(other.billMobile, billMobile) ||
                other.billMobile == billMobile) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.orderOptionId, orderOptionId) ||
                other.orderOptionId == orderOptionId) &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                other.paymentMethodId == paymentMethodId) &&
            (identical(other.paymentStatusId, paymentStatusId) ||
                other.paymentStatusId == paymentStatusId) &&
            (identical(other.notificationStatusId, notificationStatusId) ||
                other.notificationStatusId == notificationStatusId) &&
            (identical(other.notificationStatusName, notificationStatusName) ||
                other.notificationStatusName == notificationStatusName) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.netAmount, netAmount) ||
                other.netAmount == netAmount) &&
            (identical(other.orderDiscAmount, orderDiscAmount) ||
                other.orderDiscAmount == orderDiscAmount) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.dayCloseId, dayCloseId) ||
                other.dayCloseId == dayCloseId) &&
            (identical(other.custId, custId) || other.custId == custId) &&
            (identical(other.orderStatusName, orderStatusName) ||
                other.orderStatusName == orderStatusName) &&
            (identical(other.payMethodName, payMethodName) ||
                other.payMethodName == payMethodName) &&
            (identical(other.paymentStatusName, paymentStatusName) ||
                other.paymentStatusName == paymentStatusName) &&
            (identical(other.orderOptionName, orderOptionName) ||
                other.orderOptionName == orderOptionName) &&
            (identical(other.deliveryBoyId, deliveryBoyId) ||
                other.deliveryBoyId == deliveryBoyId) &&
            (identical(other.deliveryBoyName, deliveryBoyName) ||
                other.deliveryBoyName == deliveryBoyName) &&
            (identical(other.isDeliveryAssigned, isDeliveryAssigned) ||
                other.isDeliveryAssigned == isDeliveryAssigned) &&
            (identical(other.deliveryPartnerId, deliveryPartnerId) ||
                other.deliveryPartnerId == deliveryPartnerId) &&
            (identical(other.delPartnerName, delPartnerName) ||
                other.delPartnerName == delPartnerName) &&
            (identical(other.rowcount, rowcount) ||
                other.rowcount == rowcount) &&
            (identical(other.totalNetAmount, totalNetAmount) ||
                other.totalNetAmount == totalNetAmount) &&
            (identical(other.orderGroupTotal, orderGroupTotal) ||
                other.orderGroupTotal == orderGroupTotal) &&
            (identical(other.orderGroupCount, orderGroupCount) ||
                other.orderGroupCount == orderGroupCount) &&
            (identical(other.delAssignType, delAssignType) ||
                other.delAssignType == delAssignType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    prodOrderId,
    orderStatusId,
    orderGroupId,
    isCkdForEdit,
    const DeepCollectionEquality().hash(referenceTypeId),
    billNo,
    billCustName,
    billFlatNo,
    billBuildingNo,
    billDoorNo,
    billCity,
    billMobile,
    orderDate,
    orderOptionId,
    paymentMethodId,
    paymentStatusId,
    notificationStatusId,
    notificationStatusName,
    deliveryDate,
    netAmount,
    orderDiscAmount,
    storeId,
    dayCloseId,
    custId,
    orderStatusName,
    payMethodName,
    paymentStatusName,
    orderOptionName,
    deliveryBoyId,
    deliveryBoyName,
    isDeliveryAssigned,
    deliveryPartnerId,
    delPartnerName,
    rowcount,
    totalNetAmount,
    orderGroupTotal,
    orderGroupCount,
    delAssignType,
  ]);

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderResponseImplCopyWith<_$OrderResponseImpl> get copyWith =>
      __$$OrderResponseImplCopyWithImpl<_$OrderResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderResponseImplToJson(this);
  }
}

abstract class _OrderResponse implements OrderResponse {
  const factory _OrderResponse({
    @JsonKey(name: "prod_order_id") final int? prodOrderId,
    @JsonKey(name: "order_status_id") final int? orderStatusId,
    @JsonKey(name: "order_group_id") final String? orderGroupId,
    @JsonKey(name: "is_ckd_for_edit") final int? isCkdForEdit,
    @JsonKey(name: "reference_type_id") final dynamic referenceTypeId,
    @JsonKey(name: "bill_no") final String? billNo,
    @JsonKey(name: "bill_cust_name") final String? billCustName,
    @JsonKey(name: "bill_flat_no") final String? billFlatNo,
    @JsonKey(name: "bill_building_no") final String? billBuildingNo,
    @JsonKey(name: "bill_door_no") final String? billDoorNo,
    @JsonKey(name: "bill_city") final String? billCity,
    @JsonKey(name: "bill_mobile") final String? billMobile,
    @JsonKey(name: "order_date") final String? orderDate,
    @JsonKey(name: "order_option_id") final int? orderOptionId,
    @JsonKey(name: "payment_method_id") final int? paymentMethodId,
    @JsonKey(name: "payment_status_id") final int? paymentStatusId,
    @JsonKey(name: "notification_status_id") final int? notificationStatusId,
    @JsonKey(name: "notification_status_name")
    final String? notificationStatusName,
    @JsonKey(name: "delivery_date") final String? deliveryDate,
    @JsonKey(name: "net_amount") final String? netAmount,
    @JsonKey(name: "order_disc_amount") final String? orderDiscAmount,
    @JsonKey(name: "store_id") final int? storeId,
    @JsonKey(name: "day_close_id") final int? dayCloseId,
    @JsonKey(name: "cust_id") final int? custId,
    @JsonKey(name: "order_status_name") final String? orderStatusName,
    @JsonKey(name: "pay_method_name") final String? payMethodName,
    @JsonKey(name: "payment_status_name") final String? paymentStatusName,
    @JsonKey(name: "order_option_name") final String? orderOptionName,
    @JsonKey(name: "delivery_boy_id") final String? deliveryBoyId,
    @JsonKey(name: "delivery_boy_name") final String? deliveryBoyName,
    @JsonKey(name: "is_delivery_assigned") final int? isDeliveryAssigned,
    @JsonKey(name: "delivery_partner_id") final int? deliveryPartnerId,
    @JsonKey(name: "del_partner_name") final String? delPartnerName,
    @JsonKey(name: "rowcount") final int? rowcount,
    @JsonKey(name: "total_net_amount", fromJson: parseNumberAsDouble)
    final double? totalNetAmount,
    @JsonKey(name: "order_group_total", fromJson: parseNumberAsDouble)
    final double? orderGroupTotal,
    @JsonKey(name: "order_group_count", fromJson: parseNumberAsDouble)
    final double? orderGroupCount,
    @JsonKey(name: "del_assign_type", fromJson: parseNumberAsDouble)
    final double? delAssignType,
  }) = _$OrderResponseImpl;

  factory _OrderResponse.fromJson(Map<String, dynamic> json) =
      _$OrderResponseImpl.fromJson;

  @override
  @JsonKey(name: "prod_order_id")
  int? get prodOrderId;
  @override
  @JsonKey(name: "order_status_id")
  int? get orderStatusId;
  @override
  @JsonKey(name: "order_group_id")
  String? get orderGroupId;
  @override
  @JsonKey(name: "is_ckd_for_edit")
  int? get isCkdForEdit;
  @override
  @JsonKey(name: "reference_type_id")
  dynamic get referenceTypeId;
  @override
  @JsonKey(name: "bill_no")
  String? get billNo;
  @override
  @JsonKey(name: "bill_cust_name")
  String? get billCustName;
  @override
  @JsonKey(name: "bill_flat_no")
  String? get billFlatNo;
  @override
  @JsonKey(name: "bill_building_no")
  String? get billBuildingNo;
  @override
  @JsonKey(name: "bill_door_no")
  String? get billDoorNo;
  @override
  @JsonKey(name: "bill_city")
  String? get billCity;
  @override
  @JsonKey(name: "bill_mobile")
  String? get billMobile;
  @override
  @JsonKey(name: "order_date")
  String? get orderDate;
  @override
  @JsonKey(name: "order_option_id")
  int? get orderOptionId;
  @override
  @JsonKey(name: "payment_method_id")
  int? get paymentMethodId;
  @override
  @JsonKey(name: "payment_status_id")
  int? get paymentStatusId;
  @override
  @JsonKey(name: "notification_status_id")
  int? get notificationStatusId;
  @override
  @JsonKey(name: "notification_status_name")
  String? get notificationStatusName;
  @override
  @JsonKey(name: "delivery_date")
  String? get deliveryDate;
  @override
  @JsonKey(name: "net_amount")
  String? get netAmount;
  @override
  @JsonKey(name: "order_disc_amount")
  String? get orderDiscAmount;
  @override
  @JsonKey(name: "store_id")
  int? get storeId;
  @override
  @JsonKey(name: "day_close_id")
  int? get dayCloseId;
  @override
  @JsonKey(name: "cust_id")
  int? get custId;
  @override
  @JsonKey(name: "order_status_name")
  String? get orderStatusName;
  @override
  @JsonKey(name: "pay_method_name")
  String? get payMethodName;
  @override
  @JsonKey(name: "payment_status_name")
  String? get paymentStatusName;
  @override
  @JsonKey(name: "order_option_name")
  String? get orderOptionName;
  @override
  @JsonKey(name: "delivery_boy_id")
  String? get deliveryBoyId;
  @override
  @JsonKey(name: "delivery_boy_name")
  String? get deliveryBoyName;
  @override
  @JsonKey(name: "is_delivery_assigned")
  int? get isDeliveryAssigned;
  @override
  @JsonKey(name: "delivery_partner_id")
  int? get deliveryPartnerId;
  @override
  @JsonKey(name: "del_partner_name")
  String? get delPartnerName;
  @override
  @JsonKey(name: "rowcount")
  int? get rowcount;
  @override
  @JsonKey(name: "total_net_amount", fromJson: parseNumberAsDouble)
  double? get totalNetAmount;
  @override
  @JsonKey(name: "order_group_total", fromJson: parseNumberAsDouble)
  double? get orderGroupTotal;
  @override
  @JsonKey(name: "order_group_count", fromJson: parseNumberAsDouble)
  double? get orderGroupCount;
  @override
  @JsonKey(name: "del_assign_type", fromJson: parseNumberAsDouble)
  double? get delAssignType;

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderResponseImplCopyWith<_$OrderResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
