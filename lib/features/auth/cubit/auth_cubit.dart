import 'package:admin_v2/features/auth/domain/models/auth_response.dart';
import 'package:admin_v2/features/auth/domain/repoitories/auth_repositories.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final AuthRepositories _authRepositories;
  AuthCubit(this._authRepositories) : super(InitialAuthState());

  Future<void> authSigIn({
    required String email,
    required String password,
  }) async {
    try {
      emit(AuthState(isLoading: ApiFetchStatus.loading));
      final res = await _authRepositories.signIn(
        email: email,
        password: password,
      );
      if (res.data != null) {
        emit(
          AuthState(isLoading: ApiFetchStatus.success, authResponse: res.data),
        );
      }
      emit(AuthState(isLoading: ApiFetchStatus.failed));
    } catch (e) {
      emit(AuthState(isLoading: ApiFetchStatus.idle));
    }
  }

}
