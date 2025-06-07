part of 'auth_cubit.dart';

class AuthState extends Equatable {
  final ApiFetchStatus? isLoading;
  final AuthResponse? authResponse;

  const AuthState({this.isLoading, this.authResponse});

  AuthState copyWith({ApiFetchStatus? isLoading, AuthResponse? authResponse}) {
    return AuthState(
      isLoading: isLoading ?? this.isLoading,
      authResponse: authResponse ?? this.authResponse,
    );
  }

  @override
  List<Object?> get props => [isLoading, authResponse];
}

class InitialAuthState extends AuthState {}
