import 'dart:async';
import 'dart:core';
import 'dart:developer';

import 'package:admin_v2/features/auth/cubit/auth_cubit.dart';
import 'package:admin_v2/features/common/cubit/common_cubit.dart';
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/orders/cubit/order_cubit.dart';
import 'package:admin_v2/features/products/cubit/product_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/features/report/screens/tax_screen.dart';
import 'package:admin_v2/my_app.dart';
import 'package:admin_v2/shared/dependency_injection/injectable.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

BuildContext? globalFlushbarContext;
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  log("HELLO${message.messageType}");
  await Firebase.initializeApp();
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
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
        BlocProvider<OrderCubit>.value(
          value: getIt<OrderCubit>(), // Use .value instead of create
        ),
        BlocProvider(create: (context) => getIt<ProductCubit>()),
      ],
      child: MyApp(),
    ),
  );
}
