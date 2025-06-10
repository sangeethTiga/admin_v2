// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tax_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaxResponseImpl _$$TaxResponseImplFromJson(Map<String, dynamic> json) =>
    _$TaxResponseImpl(
      totalTaxCollected: (json['total_tax_collected'] as num?)?.toDouble(),
      totalTaxPaid: (json['total_tax_paid'] as num?)?.toInt(),
      netPayable: (json['net_payable'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$TaxResponseImplToJson(_$TaxResponseImpl instance) =>
    <String, dynamic>{
      'total_tax_collected': instance.totalTaxCollected,
      'total_tax_paid': instance.totalTaxPaid,
      'net_payable': instance.netPayable,
    };
