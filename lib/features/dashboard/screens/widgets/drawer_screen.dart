import 'dart:developer';
import 'package:admin_v2/features/common/domain/models/account/account_response.dart';
import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/orders/cubit/order_cubit.dart';
import 'package:admin_v2/features/orders/domain/models/order_request/order_request.dart';
import 'package:admin_v2/features/products/cubit/product_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/shared/app/list/common_map.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/routes/routes.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/utils/auth/auth_utils.dart';
import 'package:admin_v2/shared/utils/helper/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

Widget buildDrawer() {
  return Drawer(
    child: BlocBuilder<DashboardCubit, DashboardState>(
      buildWhen: (previous, current) =>
          previous.selectedStore != current.selectedStore,
      builder: (context, state) {
        return _DrawerContent(
          userDataFuture: AuthUtils.instance.readUserData(),
          selectedStore: state.selectedStore,
        );
      },
    ),
  );
}

class _DrawerContent extends StatelessWidget {
  final Future<dynamic> userDataFuture;
  final StoreResponse? selectedStore;
  final AccountDataResponse? selectedAccount;

  const _DrawerContent({
    required this.userDataFuture,
    this.selectedStore,
    this.selectedAccount,
  });

  @override
  Widget build(BuildContext context) {
    final int storeId =
        context.read<DashboardCubit>().state.selectedStore?.storeId ?? 0;
    return Container(
      color: Colors.grey[50],
      child: Column(
        children: [
          _buildDrawerHeader(),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
              children: [
                _buildReportsSection(),
                SizedBox(height: 8.h),
                _buildOrders(),
                SizedBox(height: 8.h),
                _buildInventory(storeId),
                SizedBox(height: 8.h),
                _buildOffersSection(),
                SizedBox(height: 8.h),
                _buildTopStoresSection(),
                SizedBox(height: 16.h),
              ],
            ),
          ),
          _buildLogoutSection(context),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [kPrimaryColor, kPrimaryColor.withOpacity(0.8)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
          child: FutureBuilder(
            future: userDataFuture,
            builder: (context, snapshot) {
              final userData = snapshot.data;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(12.w),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Icon(
                      Icons.admin_panel_settings_rounded,
                      color: Colors.white,
                      size: 32.sp,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'Admin Panel',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  if (userData != null) ...[
                    SizedBox(height: 12.h),
                    _buildUserInfoRow(Icons.person_outline, userData.userName),
                    SizedBox(height: 6.h),
                    _buildUserInfoRow(Icons.email_outlined, userData.userEmail),
                    if (userData.userPhone != null) ...[
                      SizedBox(height: 6.h),
                      _buildUserInfoRow(
                        Icons.phone_outlined,
                        userData.userPhone?.toString(),
                      ),
                    ],
                  ],
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildUserInfoRow(IconData icon, String? value) {
    if (value == null || value.isEmpty) return const SizedBox.shrink();

    return Row(
      children: [
        Icon(icon, color: Colors.white70, size: 16.sp),
        SizedBox(width: 8.w),
        Expanded(
          child: Text(
            value,
            style: TextStyle(
              color: Colors.white.withOpacity(0.9),
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  Widget _buildReportsSection() {
    return _buildModernExpansionTile(
      icon: Icons.analytics_rounded,
      title: 'Reports',
      iconColor: Colors.blue,
      children: _reportsItems,
    );
  }

  Widget _buildModernExpansionTile({
    required IconData icon,
    required String title,
    required List<Widget> children,
    Color? iconColor,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Theme(
        data: ThemeData(
          dividerColor: Colors.transparent,
          splashColor: Colors.grey[100],
        ),
        child: ExpansionTile(
          tilePadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
          childrenPadding: EdgeInsets.only(bottom: 8.h),
          leading: Container(
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              color: (iconColor ?? kPrimaryColor).withOpacity(0.1),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(icon, color: iconColor ?? kPrimaryColor, size: 20.sp),
          ),
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15.sp,
              color: Colors.grey[800],
            ),
          ),
          iconColor: Colors.grey[600],
          collapsedIconColor: Colors.grey[600],
          children: children,
        ),
      ),
    );
  }

  List<Widget> get _reportsItems => [
    _buildDrawerItem(
      icon: Icons.calendar_today_outlined,
      title: 'Day Summary',
      onTap: (context) {
        context.read<ReportCubit>().initState();
        context.read<ReportCubit>().loadDaySummary(
          storeId: selectedStore?.storeId,
        );
        context.push(routeDaySummary);
      },
    ),
    _buildDrawerItem(
      icon: Icons.trending_up_rounded,
      title: 'Profit/Loss',
      onTap: (context) {
        context.read<ReportCubit>().initState();
        context.read<ReportCubit>().loadProfitAndLoss(
          storeId: selectedStore?.storeId,
        );
        context.push(routeProfitloss);
      },
    ),
    _buildDrawerItem(
      icon: Icons.shopping_cart_outlined,
      title: 'Sales',
      onTap: (context) {
        context.read<ReportCubit>().initState();
        context.read<ReportCubit>().loadSalesReport(
          selectedStoreId: selectedStore?.storeId,
        );
        context.push(routeSale);
      },
    ),
    _buildDrawerItem(
      icon: Icons.account_balance_wallet_outlined,
      title: 'Revenue Report',
      onTap: (context) {
        context.read<ReportCubit>().initState();
        context.read<ReportCubit>().loadReveneueReport(
          storeId: selectedStore?.storeId,
        );
        context.push(routeRevenue);
      },
    ),
    _buildDrawerItem(
      icon: Icons.receipt_long_outlined,
      title: 'Expense Report',
      onTap: (context) {
        final accountId = selectedAccount?.accountHeadId;
        final storeId = selectedStore?.storeId;
        final date = DateFormat('yyyy-MM-dd').format(DateTime.now());
        context.read<ReportCubit>().initState();
        _navigateToExpense(storeId ?? 0, accountId ?? 0, date, context);
      },
    ),
    _buildDrawerItem(
      icon: Icons.shopping_bag_outlined,
      title: 'Purchase',
      onTap: (context) {
        context.read<ReportCubit>().initState();
        context.read<ReportCubit>().loadPurchaseReport(
          storeId: selectedStore?.storeId,
        );
        context.push(routePurchase);
      },
    ),
    _buildDrawerItem(
      icon: Icons.people_outline,
      title: 'Customers',
      onTap: (context) {
        context.read<ReportCubit>().initState();
        context.read<ReportCubit>().loadCustomersReport(
          storeId: selectedStore?.storeId,
        );
        context.push(routeCustomers);
      },
    ),
    _buildDrawerItem(
      icon: Icons.delivery_dining_outlined,
      title: 'Delivery Charge',
      onTap: (context) {
        context.read<ReportCubit>().initState();
        context.read<ReportCubit>().loadDeliveryChargeReport(
          storeId: selectedStore?.storeId,
        );
        context.push(routeDeliveryCharge);
      },
    ),
    _buildDrawerItem(
      icon: Icons.pie_chart_outline,
      title: 'Tax Report',
      onTap: (context) {
        context.read<ReportCubit>().initState();
        context.read<ReportCubit>().loadTaxReport(
          storeId: selectedStore?.storeId,
        );
        context.push(routeTax);
      },
    ),
    _buildDrawerItem(
      icon: Icons.category_outlined,
      title: 'Category Sales',
      onTap: (context) {
        context.read<ReportCubit>().initState();
        context.read<ReportCubit>().loadCategorySalesReport(
          storeId: selectedStore?.storeId,
        );
        context.push(routeCategorySales);
      },
    ),
    _buildDrawerItem(
      icon: Icons.local_offer_outlined,
      title: 'Sale on Deals',
      onTap: (context) {
        context.read<ReportCubit>().initState();
        context.read<ReportCubit>().loadSalesDealsReport(
          storeId: selectedStore?.storeId,
        );
        context.push(routeSaleDeals);
      },
    ),
    _buildDrawerItem(
      icon: Icons.star_outline,
      title: 'Most Selling Products',
      onTap: (context) {
        context.read<ReportCubit>().initState();
        final productCubit = context.read<ReportCubit>();
        context.read<DashboardCubit>().loadProductsCategory(
          selectedStore?.storeId,
        );
        productCubit.loadProductReport(storeId: selectedStore?.storeId ?? 0);
        context.push(routeSellingProducts);
      },
    ),
  ];

  Widget _buildOffersSection() {
    return _buildModernExpansionTile(
      icon: Icons.local_offer_rounded,
      title: 'Offers',
      iconColor: Colors.orange,
      children: [
        _buildDrawerItem(
          icon: Icons.discount_outlined,
          title: 'Product Offers',
          onTap: (context) {
            final date = DateFormat('yyyy-MM-dd').format(DateTime.now());
            context.read<ReportCubit>().loadProductName(
              storeId: selectedStore?.storeId,
            );
            context.read<ReportCubit>().initState();
            context.read<ReportCubit>().loadProductOffers(
              storeId: selectedStore?.storeId,
              fromDate: date,
              toDate: date,
            );
            context.push(routeProductOffers);
          },
        ),
      ],
    );
  }

  Widget _buildInventory(int storeId) {
    return _buildModernExpansionTile(
      icon: Icons.inventory_2_rounded,
      title: 'Inventory',
      iconColor: Colors.green,
      children: [
        _buildDrawerItem(
          icon: Icons.widgets_outlined,
          title: 'Products',
          onTap: (context) {
            final productCubit = context.read<ProductCubit>();
            productCubit.product(storeId: storeId);
            productCubit.selectProduct(Product());
            productCubit.catgeory(storeId);
            productCubit.stockStatus();
            productCubit.clearEvent();
            context.push(routeProducts);
          },
        ),
      ],
    );
  }

  Widget _buildTopStoresSection() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: _buildDrawerItem(
        icon: Icons.store_rounded,
        title: 'Top Stores',
        showLeadingContainer: true,
        iconColor: Colors.purple,
        onTap: (context) {
          context.read<ReportCubit>().loadTopStores();
          context.push(routeTopStores);
        },
      ),
    );
  }

  Widget _buildOrders() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: _buildDrawerItem(
        icon: Icons.shopping_bag_rounded,
        title: 'Orders',
        showLeadingContainer: true,
        iconColor: Colors.teal,
        onTap: (context) {
          final storeId = selectedStore?.storeId;
          final date = DateFormat('yyyy-MM-dd').format(DateTime.now());
          _navigateToOrders(storeId ?? 0, date, context);
        },
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String title,
    String? route,
    void Function(BuildContext)? onTap,
    bool showLeadingContainer = false,
    Color? iconColor,
  }) {
    return Builder(
      builder: (context) => Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            if (onTap != null) {
              onTap(context);
            } else if (route != null) {
              context.push(route);
            }
          },
          borderRadius: BorderRadius.circular(8.r),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            child: Row(
              children: [
                if (showLeadingContainer)
                  Container(
                    padding: EdgeInsets.all(8.w),
                    decoration: BoxDecoration(
                      color: (iconColor ?? kPrimaryColor).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Icon(
                      icon,
                      color: iconColor ?? kPrimaryColor,
                      size: 20.sp,
                    ),
                  )
                else
                  Icon(icon, color: Colors.grey[600], size: 20.sp),
                SizedBox(width: 16.w),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
                Icon(Icons.chevron_right, color: Colors.grey[400], size: 20.sp),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLogoutSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => _showLogoutConfirmation(context),
          borderRadius: BorderRadius.circular(12.r),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: const Color(0xFFFFE5E5)),
              color: const Color(0xFFFFF5F5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.logout_rounded,
                  color: const Color(0xFFDC2626),
                  size: 20.sp,
                ),
                SizedBox(width: 12.w),
                Text(
                  'Sign Out',
                  style: TextStyle(
                    color: const Color(0xFFDC2626),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _navigateToExpense(
    int storeId,
    int accountId,
    String date,
    BuildContext context,
  ) {
    try {
      final reportCubit = context.read<ReportCubit>();
      final dashboardCubit = context.read<DashboardCubit>();

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

  void _navigateToOrders(int storeId, String date, BuildContext context) {
    try {
      final orderCubit = context.read<OrderCubit>();
      orderCubit.orderStatus();
      orderCubit.orders(
        isEdit: false,
        req: OrderRequest(storeId: storeId, fromDate: date, toDate: date),
      );
      context.push(routeOrders);
    } catch (e) {
      log('Failed to load orders');
    }
  }

  void _showLogoutConfirmation(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
          contentPadding: EdgeInsets.all(24.w),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF5F5),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.logout_rounded,
                  color: const Color(0xFFDC2626),
                  size: 32.sp,
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Sign Out',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(height: 12.h),
              Text(
                'Are you sure you want to sign out from your account?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey[600],
                  height: 1.5,
                ),
              ),
              SizedBox(height: 24.h),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () => Navigator.of(dialogContext).pop(),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 14.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          side: BorderSide(color: Colors.grey[300]!),
                        ),
                      ),
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(dialogContext).pop();
                        Helper().logout(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFDC2626),
                        padding: EdgeInsets.symmetric(vertical: 14.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        elevation: 0,
                      ),
                      child: Text(
                        'Sign Out',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
