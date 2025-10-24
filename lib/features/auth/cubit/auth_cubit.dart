import 'dart:developer';


import 'package:admin_v2/features/auth/domain/models/authresponse/auth_response.dart';
import 'package:admin_v2/features/auth/domain/models/notifications_response.dart';
import 'package:admin_v2/features/auth/domain/repoitories/auth_repositories.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

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
      final customerId = res.data?.companyUsersId;
 await registerNotificationDevice(customerId: customerId?? 0);
      if (res.data != null) {
        final authData = res.data!;
        emit(
          AuthState(isLoading: ApiFetchStatus.success, authResponse: res.data),
        );

        log('auth-=-=-=-=-$authData');
      } else {
        emit(
          AuthState(
            isLoading: ApiFetchStatus.failed,
        
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

  Future<void> registerNotificationDevice({required int customerId}) async {
    // final deviceInfo =await DeviceInfoPlugin();

    emit(AuthState(isLoading: ApiFetchStatus.loading));
    try {
      await FirebaseMessaging.instance.requestPermission();
      final fcmToken = await FirebaseMessaging.instance.getToken();

      final res = await _authRepositories.registerNotificationResponse(
        deviceFcmToken: fcmToken ?? '',
        // uniqueDeviceId: 'Test Marwa',
        // appTypeId: 2,
        // customerId: customerId,
      );
      emit(
        AuthState(
          isLoading: ApiFetchStatus.success,
          notificationsRequest: res.data,
        ),
      );
    } catch (e) {
      emit(
        AuthState(isLoading: ApiFetchStatus.failed, errorMessage: e.toString()),
      );
    }
  }
}
