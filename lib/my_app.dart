import 'package:admin_v2/shared/routes/route_generator.dart';
import 'package:admin_v2/shared/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final GoRouter router = RouteGenerator.generateRoute();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
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
}

Size _getDesignSize(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;

  if (screenWidth >= 768) {
    return const Size(768, 1024);
  }
  return const Size(375, 812);
}
