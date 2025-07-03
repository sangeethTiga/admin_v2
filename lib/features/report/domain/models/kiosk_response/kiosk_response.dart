// To parse this JSON data, do
//
//     final kioskResponse = kioskResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'kiosk_response.freezed.dart';
part 'kiosk_response.g.dart';

List<KioskResponse> kioskResponseFromJson(String str) => List<KioskResponse>.from(json.decode(str).map((x) => KioskResponse.fromJson(x)));

String kioskResponseToJson(List<KioskResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class KioskResponse with _$KioskResponse {
    const factory KioskResponse({
        @JsonKey(name: "kiosk_id")
        int? kioskId,
        @JsonKey(name: "kiosk_name")
        String? kioskName,
        @JsonKey(name: "store_id")
        int? storeId,
        @JsonKey(name: "device_id")
        int? deviceId,
        @JsonKey(name: "is_default")
        int? isDefault,
        @JsonKey(name: "is_active")
        int? isActive,
        @JsonKey(name: "is_online")
        int? isOnline,
        @JsonKey(name: "kiosk_prefix")
        String? kioskPrefix,
        @JsonKey(name: "serial_no")
        int? serialNo,
        @JsonKey(name: "is_synced")
        int? isSynced,
        @JsonKey(name: "is_online_kiosk")
        int? isOnlineKiosk,
        @JsonKey(name: "created_at")
        String? createdAt,
        @JsonKey(name: "updated_at")
        String? updatedAt,
        @JsonKey(name: "store_name")
        String? storeName,
        @JsonKey(name: "device_name")
        String? deviceName,
    }) = _KioskResponse;

    factory KioskResponse.fromJson(Map<String, dynamic> json) => _$KioskResponseFromJson(json);
}
