
import 'package:admin_v2/features/auth/domain/models/authresponse/auth_response.dart';
import 'package:admin_v2/features/auth/domain/models/notifications_response.dart';
import 'package:admin_v2/shared/utils/result.dart';

abstract class AuthRepositories {
  Future<ResponseResult<AuthResponseDetails>> signIn({
    required String email,
    required String password,
  });
  Future<ResponseResult<NotificationsRequest>> registerNotificationResponse({
     required String deviceFcmToken,
    // required String uniqueDeviceId,
    // required int appTypeId,
    // required int customerId,
  });
}
