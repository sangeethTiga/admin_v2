import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications_response.freezed.dart';
part 'notifications_response.g.dart';
@freezed
class NotificationsRequest with _$NotificationsRequest {
  const factory NotificationsRequest({
    @JsonKey(name: "device_fcm_token") String? deviceFcmToken,
    @JsonKey(name: "unique_device_id") String? uniqueDeviceId,
    @JsonKey(name: "app_type_id") int? appTypeId,
    //customerId =>companyUsersId//
    @JsonKey(name: "customer_id") int? customerId,
  }) = _NotificationsRequest;

  factory NotificationsRequest.fromJson(Map<String, dynamic> json) =>
      _$NotificationsRequestFromJson(json);
}