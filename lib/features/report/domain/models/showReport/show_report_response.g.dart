// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_report_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShowReportResponseImpl _$$ShowReportResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ShowReportResponseImpl(
  totalSales: (json['total_sales'] as num?)?.toDouble(),
  taxPayable: (json['tax_payable'] as num?)?.toDouble(),
  totalOrders: (json['total_orders'] as num?)?.toInt(),
  formattedOrderDate: json['formatted_order_date'] as String?,
  itemHeading: json['item_heading'] as String?,
  date: json['date'] as String?,
  dayCloseId: (json['day_close_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$$ShowReportResponseImplToJson(
  _$ShowReportResponseImpl instance,
) => <String, dynamic>{
  'total_sales': instance.totalSales,
  'tax_payable': instance.taxPayable,
  'total_orders': instance.totalOrders,
  'formatted_order_date': instance.formattedOrderDate,
  'item_heading': instance.itemHeading,
  'date': instance.date,
  'day_close_id': instance.dayCloseId,
};
