import 'package:admin_v2/features/auth/cubit/auth_cubit.dart';
import 'package:admin_v2/features/common/cubit/common_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/my_app.dart';
import 'package:admin_v2/shared/dependency_injection/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
        BlocProvider(create: (context) => getIt<ReportCubit>()),
      ],
      child: MyApp(),
    ),
  );
}
