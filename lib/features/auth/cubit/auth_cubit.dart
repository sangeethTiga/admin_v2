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
      print('auth res-==-=-${res.data}');

      if (res.data != null && res.data?.errorCode == 0) {
        emit(
          AuthState(isLoading: ApiFetchStatus.success, authResponse: res.data),
        );
      } else {
        emit(
          AuthState(
            isLoading: ApiFetchStatus.failed,
            errorMessage: res.data?.errorMessage ?? "Login failed",
          ),
        );
      }
    } catch (e) {
      emit(
        AuthState(
          isLoading: ApiFetchStatus.failed,
          errorMessage: "Something went wrong. Please try again.",
        ),
      );
    }
  }

  Future<void> clearLogin() async {
    emit(state.copyWith(authResponse: null, isMakeItNull: true));
  }
}
