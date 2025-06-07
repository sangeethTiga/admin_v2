// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderRequestImpl _$$OrderRequestImplFromJson(Map<String, dynamic> json) =>
    _$OrderRequestImpl(
      fromDate: json['from_date'] as String?,
      toDate: json['to_date'] as String?,
      storeId: (json['store_id'] as num?)?.toInt(),
      filterId: json['filter_id'],
      orderStatusId: json['order_status_id'],
      pageFirstResult: (json['page_first_result'] as num?)?.toInt(),
      resultPerPage: (json['result_per_page'] as num?)?.toInt(),
      payMethodId: (json['pay_method_id'] as num?)?.toInt(),
      waiterId: (json['waiter_id'] as num?)?.toInt(),
      paymentStatusId: (json['payment_status_id'] as num?)?.toInt(),
      kioskId: (json['kiosk_id'] as num?)?.toInt(),
      shiftId: (json['shift_id'] as num?)?.toInt(),
      deliveryPartnerId: (json['delivery_partner_id'] as num?)?.toInt(),
      orderOptionId: (json['order_option_id'] as num?)?.toInt(),
      cashierId: (json['cashier_id'] as num?)?.toInt(),
      referenceTypeId: (json['reference_type_id'] as num?)?.toInt(),
      fromTime: json['from_time'] as String?,
      toTime: json['to_time'] as String?,
      version: json['version'] as String?,
    );

Map<String, dynamic> _$$OrderRequestImplToJson(_$OrderRequestImpl instance) =>
    <String, dynamic>{
      'from_date': instance.fromDate,
      'to_date': instance.toDate,
      'store_id': instance.storeId,
      'filter_id': instance.filterId,
      'order_status_id': instance.orderStatusId,
      'page_first_result': instance.pageFirstResult,
      'result_per_page': instance.resultPerPage,
      'pay_method_id': instance.payMethodId,
      'waiter_id': instance.waiterId,
      'payment_status_id': instance.paymentStatusId,
      'kiosk_id': instance.kioskId,
      'shift_id': instance.shiftId,
      'delivery_partner_id': instance.deliveryPartnerId,
      'order_option_id': instance.orderOptionId,
      'cashier_id': instance.cashierId,
      'reference_type_id': instance.referenceTypeId,
      'from_time': instance.fromTime,
      'to_time': instance.toTime,
      'version': instance.version,
    };
