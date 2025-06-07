import 'package:admin_v2/features/dashboard/screens/dashboard_screen.dart';
import 'package:admin_v2/features/orders/screens/order_screen.dart';
import 'package:admin_v2/features/products/product_screen.dart';
import 'package:admin_v2/features/products/screens/product_offers_screen.dart';
import 'package:admin_v2/features/profitloss/screens/profit_loss_screen.dart';
import 'package:admin_v2/features/report/screens/delivery_charge_screen.dart';
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
        GoRoute(
          path: routeProducts,
          builder: (context, state) => const ProductScreen(),
        ),
        GoRoute(
          path: routeProfitloss,
          builder: (context, state) => const ProfitLossScreen(),
        ),
        GoRoute(
          path: routeDeliveryCharge,
          builder: (context, state) => const DeliveryChargeScreen(),
        ),
        GoRoute(
          path: routeOrders,
          builder: (context, state) => const OrderScreen(),
        ),
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
