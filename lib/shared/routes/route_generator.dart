import 'package:admin_v2/features/auth/screens/sign_in_screen.dart';
import 'package:admin_v2/features/dashboard/screens/dashboard_screen.dart';
import 'package:admin_v2/features/orders/screens/order_detail_screen.dart';
import 'package:admin_v2/features/orders/screens/order_screen.dart';
import 'package:admin_v2/features/products/product_screen.dart';
import 'package:admin_v2/features/products/screens/product_offers_screen.dart';
import 'package:admin_v2/features/profitloss/screens/profit_loss_screen.dart';
import 'package:admin_v2/features/report/screens/category_sales_report_screen.dart';
import 'package:admin_v2/features/report/screens/chequeTrans_screen.dart';
import 'package:admin_v2/features/report/screens/customers_report_screen.dart';
import 'package:admin_v2/features/report/screens/delivery_charge_screen.dart';
import 'package:admin_v2/features/report/screens/expense_report_screen.dart';
import 'package:admin_v2/features/report/screens/mess_report_screen.dart';
import 'package:admin_v2/features/report/screens/offers_screen.dart';
import 'package:admin_v2/features/report/screens/parcel_charge.dart';
import 'package:admin_v2/features/report/screens/purchase_screen.dart';
import 'package:admin_v2/features/report/screens/revenue_report_screen.dart';
import 'package:admin_v2/features/report/screens/sale_on_deals_screen.dart';
import 'package:admin_v2/features/report/screens/sales_report_screen.dart';
import 'package:admin_v2/features/report/screens/tax_screen.dart';
import 'package:admin_v2/features/report/screens/topStores_screen.dart';
import 'package:admin_v2/features/report/screens/user_shift_report_screen.dart';
import 'package:admin_v2/features/splash/screens/splash_screen.dart';
import 'package:admin_v2/shared/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// final _shellNavigatorKey = GlobalKey<NavigatorState>();

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
        GoRoute(
          path: routeOrderDetail,
          builder: (context, state) => const OrderDetailScreen(),
        ),
        GoRoute(path: routeSign, builder: (context, state) => SignInScreen()),
        GoRoute(
          path: routeSale,
          builder: (context, state) => SalesReportScreen(),
        ),
        GoRoute(
          path: routeRevenue,
          builder: (context, state) => RevenueReportScreen(),
        ),
        GoRoute(
          path: routeExpense,
          builder: (context, state) => ExpenseReportScreen(),
        ),
        GoRoute(path: routeTax, builder: (context, state) => TaxScreen()),
        GoRoute(
          path: routeCustomers,
          builder: (context, state) => CustomersReportScreen(),
        ),
        GoRoute(path: routeParcel, builder: (context, state) => ParcelCharge()),
        GoRoute(
          path: routeCategorySales,
          builder: (context, state) => CategorySalesReportScreen(),
        ),
        GoRoute(
          path: routeUserShift,
          builder: (context, state) => UserShiftReportScreen(),
        ),

        GoRoute(
          path: routePurchase,
          builder: (context, state) => PurchaseScreen(),
        ),
        GoRoute(
          path: routeSaleDeals,
          builder: (context, state) => SaleOnDealsScreen(),
        ),
        GoRoute(path: routeTopStores, builder: (context, state) => Topstores()),
        GoRoute(path: routeOffers, builder: (context, state) => ProductOffer()),
        GoRoute(
          path: routeCheque,
          builder: (context, state) => ChequetransScreen(),
        ),
        GoRoute(
          path: routeMess,
          builder: (context, state) => MessReportScreen(),
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
