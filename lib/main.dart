import 'dart:core';
import 'dart:developer';

import 'package:admin_v2/features/auth/cubit/auth_cubit.dart';
import 'package:admin_v2/features/common/cubit/common_cubit.dart';
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/orders/cubit/order_cubit.dart';
import 'package:admin_v2/features/products/cubit/product_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/features/report/screens/tax_screen.dart';
import 'package:admin_v2/firebase_options.dart';
import 'package:admin_v2/my_app.dart';
import 'package:admin_v2/shared/dependency_injection/injectable.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
const AndroidNotificationChannel _channel = AndroidNotificationChannel(
  'high_importance_channel',
  'High Importance Notifications',
  description: 'used for important notifications',
  importance: Importance.high,
);

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  log("HELLO${message.messageType}");
  await Firebase.initializeApp();
}

@pragma('vm:entry-point')
void notificationTapBackground(NotificationResponse notification) async {
  log('background notification tapped:-==-=-=-=-=-${notification.payload}');
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin
      >()
      ?.createNotificationChannel(_channel);
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  const AndroidInitializationSettings androidSettings =
      AndroidInitializationSettings('skyaio_icon');
  final InitializationSettings initializationSettings = InitializationSettings(
    android: androidSettings,
  );
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // await flutterLocalNotificationsPlugin.initialize(
  //   initializationSettings,
  //   onDidReceiveNotificationResponse:
  //       (NotificationResponse notificationResponse) async {
  //         print(
  //           'Notification tapped:=-=-=-=-=-${notificationResponse.payload}',
  //         );
  //       },
  //   onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
  // );
  //=-==-=-=listen foreground messages-=-=-=-//
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Received a message in foreground: ${message.notification?.title}');
    _showLocalNotification(message);
  });
  // await flutterLocalNotificationsPlugin.initialize(
  //   initializationSettings,
  //   onDidReceiveNotificationResponse:
  //       (NotificationResponse notificationResponse) async {
  //         print(
  //           'Notification tapped:=-=-=-=-=-${notificationResponse.payload}',
  //         );
  //       },
  //   onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
  // );
  //=-==-=-=listen foreground messages-=-=-=-//
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Received a message in foreground: ${message.notification?.title}');
    _showLocalNotification(message);
  });
  configureDependencies();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AuthCubit>()),
        BlocProvider(create: (context) => getIt<CommonCubit>()),
        BlocProvider(create: (cotext) => getIt<DashboardCubit>()),
        BlocProvider(
          create: (context) => getIt<ReportCubit>(),
          child: TaxScreen(),
        ),
        BlocProvider<OrderCubit>.value(value: getIt<OrderCubit>()),
        BlocProvider(create: (context) => getIt<ProductCubit>()),
      ],
      child: MyApp(),
    ),
  );
}

Future<void> _showLocalNotification(RemoteMessage message) async {
  final notification = message.notification;
  final android = message.notification?.android;
  if (notification != null && android != null) {
    final androidDetails = AndroidNotificationDetails(
      _channel.id,
      _channel.name,
      channelDescription: _channel.description,
      importance: Importance.max,
      priority: Priority.high,
      icon: 'skyaio_icon',
    );
    final platformDetails = NotificationDetails(android: androidDetails);
    await flutterLocalNotificationsPlugin.show(
      notification.hashCode,
      notification.title,
      notification.body,
      platformDetails,
      payload: message.data.toString(),
    );
  }
}
