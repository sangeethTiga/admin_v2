// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnitResponseImpl _$$UnitResponseImplFromJson(Map<String, dynamic> json) =>
    _$UnitResponseImpl(
      unitId: (json['unit_id'] as num?)?.toInt(),
      storeId: (json['store_id'] as num?)?.toInt(),
      unitName: json['unit_name'] as String?,
      unitArabicName: json['unit_arabic_name'],
    );

Map<String, dynamic> _$$UnitResponseImplToJson(_$UnitResponseImpl instance) =>
    <String, dynamic>{
      'unit_id': instance.unitId,
      'store_id': instance.storeId,
      'unit_name': instance.unitName,
      'unit_arabic_name': instance.unitArabicName,
    };
