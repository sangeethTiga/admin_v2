import 'dart:io';

import 'package:admin_v2/main.dart';
import 'package:admin_v2/shared/routes/route_generator.dart';
import 'package:admin_v2/shared/themes/app_theme.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _isAndroidPermissionGranted();
  //  requestPermission();
    //getToken();
    listenToMessages();
  }

  bool _notificationsEnabled = false;
  // void requestPermission() async {
  //   FirebaseMessaging messaging = FirebaseMessaging.instance;
  //   NotificationSettings settings = await messaging.requestPermission(
  //     alert: true,
  //     badge: true,
  //     sound: true,
  //   );
  //   print('user permission:${settings.authorizationStatus}');
  // }

  Future<void> _isAndroidPermissionGranted() async {
    if (Platform.isAndroid) {
      final bool granted =
          await flutterLocalNotificationsPlugin
              .resolvePlatformSpecificImplementation<
                AndroidFlutterLocalNotificationsPlugin
              >()
              ?.areNotificationsEnabled() ??
          false;
      setState(() {
        _notificationsEnabled = granted;
      });
    }
  }

  // void getToken() async {
  //   String? token = await FirebaseMessaging.instance.getToken();
  //   print('Token-=-==-=-=-=1234:$token');
  // }

  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  void listenToMessages() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (message.notification != null) {
        scaffoldMessengerKey.currentState?.showSnackBar(
          SnackBar(
            content: Text(
              '${message.notification!.title}: ${message.notification!.body}',
            ),
          ),
        );
      }
    });
  }

  final GoRouter router = RouteGenerator.generateRoute();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      scaffoldMessengerKey: scaffoldMessengerKey,
      debugShowCheckedModeBanner: false,
      title: 'Admin v2',
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
      routerConfig: router,
      builder: (context, child) {
        return ScreenUtilInit(
          designSize: _getDesignSize(context),
          minTextAdapt: true,
          // useInheritedMediaQuery: true,
          builder: (context, child) => child!,
          child: child,
        );
      },
    );
  }

  Size _getDesignSize(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth >= 768) {
      return const Size(768, 1024);
    }
    return const Size(375, 812);
  }
}
