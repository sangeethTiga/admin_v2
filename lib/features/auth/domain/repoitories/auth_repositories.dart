import 'package:admin_v2/features/auth/domain/models/auth_response.dart';
import 'package:admin_v2/shared/utils/result.dart';

abstract class AuthRepositories {
  Future<ResponseResult<AuthResponse>> signIn({
    required String email,
    required String password,
  });
}
