part of 'auth_cubit.dart';

class AuthState extends Equatable {
  final ApiFetchStatus? isLoading;
  final AuthResponse? authResponse;
  final bool isMakeItNull;
  final String? errorMessage;

  const AuthState({this.isLoading, this.authResponse, this.isMakeItNull = false,
    this.errorMessage,});

  AuthState copyWith({
    ApiFetchStatus? isLoading,
    AuthResponse? authResponse,
    bool ? isMakeItNull,
     String? errorMessage,

  }) {
    return AuthState(
    isLoading: isLoading ?? this.isLoading,
    authResponse: isMakeItNull == true ? null : authResponse ?? this.authResponse,
    isMakeItNull: isMakeItNull ?? this.isMakeItNull,
    errorMessage: errorMessage ?? this.errorMessage,

      
    );
  }

  @override
  List<Object?> get props => [isLoading, authResponse, isMakeItNull, errorMessage];
}

class InitialAuthState extends AuthState {}
