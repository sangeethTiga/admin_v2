import 'dart:convert';
import 'dart:developer';

import 'package:admin_v2/features/auth/cubit/auth_cubit.dart';
import 'package:admin_v2/features/common/cubit/common_cubit.dart';
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/orders/cubit/order_cubit.dart';
import 'package:admin_v2/features/orders/domain/models/order_request/order_request.dart';
import 'package:admin_v2/features/products/cubit/product_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/shared/app/list/common_map.dart';
import 'package:admin_v2/shared/routes/routes.dart';
import 'package:admin_v2/shared/utils/auth/auth_utils.dart';
import 'package:admin_v2/shared/utils/failures/bad_request.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class Helper {
  static void afterInit(Function function) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      function();
    });
  }

  dynamic errorMapping(Response? response) {
    final badRequest = <BadRequest>[]; // List to store BadRequest objects
    var errorString = ''; // String to accumulate error messages

    // Iterate over response data keys
    (response?.data.keys.forEach((key) {
      if (key == 'message' ||
          key == 'error' ||
          key == 'detail' ||
          key == 'email') {
        final message = <String>[];
        if (key == 'email') {
          message.add(response.data[key][0]);
        } else {
          message.add(response.data[key]);
        }
        badRequest.add(
          BadRequest(
            errorField: '',
            error: message,
          ), // Add message/error to badRequest
        );
      } else {
        badRequest.add(
          BadRequest(
            errorField: key,
            error: List<String>.from(response.data[key].map((x) => x)),
          ), // Add other errors to badRequest
        );
      }
    }));

    // Construct error string from badRequest list
    for (var element in badRequest) {
      var subString = '';
      element.error?.forEach((sub) {
        subString = '$subString\n$sub';
      });
      if (errorString.isEmpty) {
        errorString =
            '${replaceCharacters(element.errorField ?? '')}$subString';
      } else {
        errorString =
            '$errorString\n\n${replaceCharacters(element.errorField ?? '')}$subString';
      }
    }

    // // Show error string in a snackbar
    // log('---------------------- errorString ----------------------');
    // log(errorString);
    // log('---------------------- errorString ----------------------');
    return errorString;
  }

  String replaceCharacters(String text) =>
      capitalizeFirstLetter(text.replaceAll(RegExp('[\\W_]+'), ' '));

  String capitalizeFirstLetter(String input) {
    if (input.isEmpty) {
      return input;
    }
    return input[0].toUpperCase() + input.substring(1);
  }

  Map<String, dynamic> removeNullValues(Map<String, dynamic> input) {
    return Map.fromEntries(input.entries.where((e) => e.value != null));
  }

  Future<void> logout(BuildContext context) async {
    try {
      await AuthUtils.instance.deleteAll();
      context.read<AuthCubit>().clearLogin();
      if (!context.mounted) return;
      context.go(routeSign);
    } catch (e) {
      log('Error during logout: $e');
    }
  }

  String generateCacheKey(String url, Map<String, dynamic> data) {
    const methodString = 'GET';
    final dataString = jsonEncode(data);
    return '$methodString|$url|$dataString';
  }

  static String formatDate({
    required DateTime date,
    String format = 'dd/MM/yyyy',
  }) {
    final DateFormat dateFormat = DateFormat(format);
    return dateFormat.format(date);
  }

  Future<void> launchUrls(String url) async {
    try {
      if (!await launchUrl(Uri.parse(url))) {
        throw Exception('Could not launch $url');
      }
    } catch (e) {
      log('Error launching URL: $e');
    }
  }

  Future<void> launchPhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(scheme: 'tel', path: phoneNumber);
    if (!await launchUrl(launchUri)) {
      throw Exception('Could not launch phone call');
    }
  }

  Future<void> launchEmail(String email) async {
    final Uri launchUri = Uri(scheme: 'mailto', path: email);
    if (!await launchUrl(launchUri)) {
      throw Exception('Could not launch email');
    }
  }
}


void navigateToFeature(
  String featureName,
  BuildContext context, {
  int? storeId,
  int? accountId,
}) {
  try {
  
    final today = _formatDate(DateTime.now());

    switch (featureName) {
      case 'Product':
        _navigateToProducts(storeId ?? 0, context);
      case 'Profit/loss':
        _navigateToProfitLoss(storeId ?? 0, today, context);
      case 'Orders':
        _navigateToOrders(storeId ?? 0, today, context);
      case 'Sales':
        _navigateToSales(storeId ?? 0, context);
      case 'Revenue':
        _navigateToRevenue(storeId ?? 0, today, context);
      case 'Expense':
        _navigateToExpense(storeId ?? 0, accountId ?? 0, today, context);
      case 'Customers':
        context.push(routeCustomers);
      case 'Purchase':
        _navigateToPurchase(context);
      case 'Day Summary':
        context.push(routeDaySummary);
      default:
    }
  } catch (e) {}
}

String _formatDate(DateTime date) {
  return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
}

void _navigateToProducts(int storeId, BuildContext context) {
  try {
    final productCubit = GetIt.instance<ProductCubit>();
    productCubit.product(storeId, 0, '', '', 0);
    productCubit.selectProduct(Product(filterId: 0, name: 'All Products'));
    productCubit.catgeory(storeId);
    productCubit.stockStatus();
    productCubit.clearEvent();
    context.push(routeProducts);
  } catch (e) {
    log('Failed to load products');
  }
}

void _navigateToProfitLoss(int storeId, String date, BuildContext context) {
  try {
    final reportCubit = GetIt.instance<ReportCubit>();
    reportCubit.loadProfitAndLoss(
      storeId: storeId,
      fromDate: date,
      toDate: date,
    );
    context.push(routeProfitloss);
  } catch (e) {
    log('Failed to load report');
  }
}

void _navigateToOrders(int storeId, String date, BuildContext context) {
  try {
    final orderCubit = GetIt.instance<OrderCubit>();
    orderCubit.orderStatus();
    orderCubit.orders(
      req: OrderRequest(storeId: storeId, fromDate: date, toDate: date),
    );
    context.push(routeOrders);
  } catch (e) {
    log('Failed to load orders');
  }
}

void _navigateToSales(int storeId, BuildContext context) {
  try {
    final now = DateTime.now();
    final oneYearAgo = DateTime(now.year - 1, now.month, now.day);

    final reportCubit = GetIt.instance<ReportCubit>();
    reportCubit.loadSalesReport(
      selectedStoreId: storeId,
      fromDate: _formatDate(oneYearAgo),
      toDate: _formatDate(now),
    );
    context.push(routeSale);
  } catch (e) {}
}

void _navigateToRevenue(int storeId, String date, BuildContext context) {
  try {
    final reportCubit = GetIt.instance<ReportCubit>();
    reportCubit.loadReveneueReport(
      storeId: storeId,
      fromDate: date,
      toDate: date,
    );
    context.push(routeRevenue);
  } catch (e) {}
}

void _navigateToExpense(
  int storeId,
  int accountId,
  String date,
  BuildContext context,
) {
  try {
    final reportCubit = GetIt.instance<ReportCubit>();
    final dashboardCubit = GetIt.instance<DashboardCubit>();

    reportCubit.loadExpenseReport(
      accountId: accountId,
      storeId: storeId,
      fromDate: date,
      toDate: date,
    );
    dashboardCubit.account();
    context.push(routeExpense);
  } catch (e) {}
}

void _navigateToPurchase(BuildContext context) {
  try {
    final commonCubit = GetIt.instance<CommonCubit>();
    commonCubit.purchaseType();
    context.push(routePurchase);
  } catch (e) {}
}


