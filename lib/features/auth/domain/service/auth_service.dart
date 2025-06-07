import 'package:admin_v2/features/auth/domain/models/auth_response.dart';
import 'package:admin_v2/features/auth/domain/repoitories/auth_repositories.dart';
import 'package:admin_v2/shared/api/endpoint/api_endpoints.dart';
import 'package:admin_v2/shared/api/network/network.dart';
import 'package:admin_v2/shared/utils/result.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepositories)
class AuthService implements AuthRepositories {
  @override
  Future<ResponseResult<AuthResponse>> signIn({
    String? email,
    String? password,
  }) async {
    final networkProvider = await NetworkProvider.create(isCommon: true);

    final res = await networkProvider.post(
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
}
