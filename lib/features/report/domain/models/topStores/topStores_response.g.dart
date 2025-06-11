// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topStores_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopstoresResponseImpl _$$TopstoresResponseImplFromJson(
  Map<String, dynamic> json,
) => _$TopstoresResponseImpl(
  storeId: (json['store_id'] as num?)?.toInt(),
  storeName: json['store_name'] as String?,
  totalorders: (json['totalorders'] as num?)?.toInt(),
);

Map<String, dynamic> _$$TopstoresResponseImplToJson(
  _$TopstoresResponseImpl instance,
) => <String, dynamic>{
  'store_id': instance.storeId,
  'store_name': instance.storeName,
  'totalorders': instance.totalorders,
};
