// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revenue_graph_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RevenueResponseImpl _$$RevenueResponseImplFromJson(
  Map<String, dynamic> json,
) => _$RevenueResponseImpl(
  monthname: json['monthname'] as String?,
  income: parseInt(json['income']),
  expense: parseInt(json['expense']),
);

Map<String, dynamic> _$$RevenueResponseImplToJson(
  _$RevenueResponseImpl instance,
) => <String, dynamic>{
  'monthname': instance.monthname,
  'income': instance.income,
  'expense': instance.expense,
};
