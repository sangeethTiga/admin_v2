import 'package:admin_v2/features/dashboard/screens/dashboard_screen.dart';
import 'package:admin_v2/features/products/screens/product_offers_screen.dart';
import 'package:admin_v2/features/splash/screens/splash_screen.dart';
import 'package:admin_v2/shared/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _shellNavigatorKey = GlobalKey<NavigatorState>();

class RouteGenerator {
  static GoRouter generateRoute() {
    return GoRouter(
      initialLocation: routeRoot,
      routes: [
        GoRoute(
          path: routeRoot,
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          path: routeMain,
          builder: (context, state) => const DashboardScreen(),
        ),
        GoRoute(
          path: routeProductOffers,
          builder: (context, state) => const ProductOffersScreen(),
        ),
        // GoRoute(path: routeSignIn, builder: (context, state) => SigninScreen()),
        // GoRoute(
        //   path: routeOTPverify,
        //   builder: (context, state) {
        //     final data = state.extra as Map<String, dynamic>;
        //     return OtpVerifyScreen(data: data);
        //   },
        // ),
        // GoRoute(
        //   path: routeFindYourStore,
        //   builder: (context, state) => const FindYourStoreScreen(),
        // ),

        // GoRoute(
        //   path: '/success',
        //   builder: (context, state) {
        //     final data = state.extra as Map<String, dynamic>;
        //     final checkResponse = data['checkout'] as OrderDatum?;
        //     return SuccessScreen(check: checkResponse);
        //   },
        // ),
        // ShellRoute(
        //   navigatorKey: _shellNavigatorKey,
        //   builder: (context, state, child) {
        //     // return ScreenMain(child: child);
        //   },
        //   routes: [],
        // ),
      ],
      errorBuilder: (context, state) =>
          errorRoute(error: state.error?.toString()).builder(context),
    );
  }

  static MaterialPageRoute errorRoute({String? error, bool argsError = false}) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: Center(
          child: Text(
            error ?? '${argsError ? 'Arguments' : 'Navigation'} Error',
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
