part of 'auth_cubit.dart';

class AuthState extends Equatable {
  final ApiFetchStatus? isLoading;
  final AuthResponse? authResponse;
  final bool isMakeItNull;
  final String? errorMessage;
  final NotificationsRequest? notificationsRequest;

  const AuthState({
    this.isLoading,
    this.authResponse,
    this.isMakeItNull = false,
    this.errorMessage,
    this.notificationsRequest
  });

  AuthState copyWith({
    ApiFetchStatus? isLoading,
    AuthResponse? authResponse,
    bool? isMakeItNull,
    String? errorMessage,
    NotificationsRequest? notificationsRequest
  }) {
    return AuthState(
      isLoading: isLoading ?? this.isLoading,
      authResponse: isMakeItNull == true
          ? null
          : authResponse ?? this.authResponse,
      isMakeItNull: isMakeItNull ?? this.isMakeItNull,
      errorMessage: errorMessage ?? this.errorMessage,
      notificationsRequest:notificationsRequest ?? this.notificationsRequest
    );
  }

  @override
  List<Object?> get props => [
    isLoading,
    authResponse,
    isMakeItNull,
    errorMessage,
    notificationsRequest
  ];
}

class InitialAuthState extends AuthState {}
