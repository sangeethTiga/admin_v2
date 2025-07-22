// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categorySales_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategorySalesResponseImpl _$$CategorySalesResponseImplFromJson(
  Map<String, dynamic> json,
) => _$CategorySalesResponseImpl(
  categoryName: json['category_name'] as String?,
  totalAmount: json['total_amount'] as String?,
  orderCount: json['order_count'] as String?,
);

Map<String, dynamic> _$$CategorySalesResponseImplToJson(
  _$CategorySalesResponseImpl instance,
) => <String, dynamic>{
  'category_name': instance.categoryName,
  'total_amount': instance.totalAmount,
  'order_count': instance.orderCount,
};
