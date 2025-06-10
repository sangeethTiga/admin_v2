// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OptionResponseImpl _$$OptionResponseImplFromJson(Map<String, dynamic> json) =>
    _$OptionResponseImpl(
      storeId: (json['store_id'] as num?)?.toInt(),
      appTypeId: (json['app_type_id'] as num?)?.toInt(),
      orderOptionId: (json['order_option_id'] as num?)?.toInt(),
      orderOptionName: json['order_option_name'] as String?,
      slotTypeId: (json['slot_type_id'] as num?)?.toInt(),
      note: json['note'] as String?,
      orderOptionArabic: json['order_option_arabic'],
      arabicNote: json['arabic_note'],
    );

Map<String, dynamic> _$$OptionResponseImplToJson(
  _$OptionResponseImpl instance,
) => <String, dynamic>{
  'store_id': instance.storeId,
  'app_type_id': instance.appTypeId,
  'order_option_id': instance.orderOptionId,
  'order_option_name': instance.orderOptionName,
  'slot_type_id': instance.slotTypeId,
  'note': instance.note,
  'order_option_arabic': instance.orderOptionArabic,
  'arabic_note': instance.arabicNote,
};
