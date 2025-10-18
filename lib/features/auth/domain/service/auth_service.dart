import 'package:admin_v2/features/auth/domain/models/auth_response.dart';
import 'package:admin_v2/features/auth/domain/models/notifications_response.dart';
import 'package:admin_v2/features/auth/domain/repoitories/auth_repositories.dart';
import 'package:admin_v2/shared/api/endpoint/api_endpoints.dart';
import 'package:admin_v2/shared/api/network/network.dart';
import 'package:admin_v2/shared/utils/auth/auth_utils.dart';
import 'package:admin_v2/shared/utils/result.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepositories)
class AuthService implements AuthRepositories {
  @override
  Future<ResponseResult<AuthResponse>> signIn({
    String? email,
    String? password,
  }) async {
    final networkProvider =  NetworkProvider;

    final res = await NetworkProvider().post(
      ApiEndpoints.commonSign,
      data: {'user_email': email, 'password': password},
    );
    
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(data: AuthResponse.fromJson(res.data));
      default:
        throw Exception('error');
    }
  }

  @override
  Future<ResponseResult<NotificationsRequest>> registerNotificationResponse({
    required String deviceFcmToken,
    // required String uniqueDeviceId,
    // required int appTypeId,
    // required int customerId,
  }) async {
    final networkProvider = await NetworkProvider();
    final user = await AuthUtils.instance.readUserData();
    final res = await networkProvider.post(
      ApiEndpoints.notification,
      data: {
        'device_fcm_token': deviceFcmToken,
        'unique_device_id': 0XFFDEADBEEF,
        'app_type_id': 1,
        'customer_id': user?.user?.companyUsersId?? 0,
      },
    );
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(data: NotificationsRequest.fromJson(res.data));
      default:
        throw Exception('error');
    }
  }
}
