// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_report_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SalesReportResponseImpl _$$SalesReportResponseImplFromJson(
  Map<String, dynamic> json,
) => _$SalesReportResponseImpl(
  totalSales: parseDouble(json['total_sales']),
  taxPayable: parseDouble(json['tax_payable']),
  totalOrders: parseDouble(json['total_orders']),
  formattedOrderDate: json['formatted_order_date'] as String?,
  itemHeading: json['item_heading'] as String?,
  date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
  dayCloseId: (json['day_close_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$$SalesReportResponseImplToJson(
  _$SalesReportResponseImpl instance,
) => <String, dynamic>{
  'total_sales': instance.totalSales,
  'tax_payable': instance.taxPayable,
  'total_orders': instance.totalOrders,
  'formatted_order_date': instance.formattedOrderDate,
  'item_heading': instance.itemHeading,
  'date': instance.date?.toIso8601String(),
  'day_close_id': instance.dayCloseId,
};
