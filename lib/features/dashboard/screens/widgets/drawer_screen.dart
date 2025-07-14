import 'package:admin_v2/features/common/cubit/common_cubit.dart';
import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
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

  const _DrawerContent({required this.userDataFuture, this.selectedStore});

  @override
  Widget build(BuildContext context) {
    final int storeId =
        context.read<DashboardCubit>().state.selectedStore?.storeId ?? 0;
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        _buildDrawerHeader(),
        _buildReportsSection(),
        _buildOffersSection(),
        _buildTopStoresSection(),
        _buildInventory(storeId),
        _buildLogoutSection(context),
      ],
    );
  }

  Widget _buildDrawerHeader() {
    return DrawerHeader(
      margin: const EdgeInsets.only(bottom: 0, top: 0),
      decoration: BoxDecoration(color: kPrimaryColor),
      child: FutureBuilder(
        future: userDataFuture,
        builder: (context, snapshot) {
          final userData = snapshot.data?.user;
          return Column(
            spacing: 5.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Admin',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (userData != null) ...[
                _buildUserInfo('Name', userData.userName),
                _buildUserInfo('Email', userData.userEmail),
                _buildUserInfo('Phone', userData.userPhone?.toString()),
              ],
            ],
          );
        },
      ),
    );
  }

  Widget _buildUserInfo(String label, String? value) {
    if (value == null || value.isEmpty) return const SizedBox.shrink();

    return Text(
      value,
      style: TextStyle(color: Colors.white, fontSize: 16.sp),
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildReportsSection() {
    return ExpansionTile(
      leading: const Icon(Icons.add_chart_sharp),
      title: const Text(
        'Reports',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      children: _reportsItems,
    );
  }

  List<Widget> get _reportsItems => [
    _buildDrawerItem(
      icon: Icons.delivery_dining_sharp,
      title: Text('Delivery Charge'),
      route: routeDeliveryCharge,
    ),
    _buildDrawerItem(
      icon: Icons.flatware,
      title: Text('Parcel Charge'),
      route: routeParcel,
      onTap: (context) {
        context.read<DashboardCubit>().orderOption(selectedStore?.storeId, 0);
        context.push(routeParcel);
      },
    ),
    _buildDrawerItem(
      icon: Icons.bar_chart_sharp,
      title: Text('Tax Report'),
      route: routeTax,
    ),
    _buildDrawerItem(
      icon: Icons.shopping_cart,
      title: Text('Category Sales'),
      route: routeCategorySales,
    ),
    // _buildDrawerItem(
    //   icon: Icons.dining_rounded,
    //   title: 'Mess Report',
    //   route: routeMess,
    // ),
    _buildDrawerItem(
      icon: Icons.people,
      title: Text('Supplier'),
      route: routeSupplier,
    ),
    // _buildDrawerItem(
    //   icon: Icons.account_circle_outlined,
    //   title: 'User Shift',
    //   route: routeUserShift,
    // ),
    _buildDrawerItem(
      icon: Icons.shopify_outlined,
      title: Text('Sale on Deals'),
      route: routeSaleDeals,
      onTap: (context) {
        context.read<ReportCubit>().loadSalesDealsReport(
          storeId: selectedStore?.storeId,
        );
        context.push(routeSaleDeals);
      },
    ),
    _buildDrawerItem(
      icon: Icons.money_rounded,
      title: Text('Cheque Transaction'),
      route: routeCheque,
      onTap: (context) {
        context.read<ReportCubit>().loadStatus();
        context.push(routeCheque);
      },
    ),
    _buildDrawerItem(
      icon: Icons.sell_sharp,
      title: Text('Most Selling Products'),
      route: routeSellingProducts,
      onTap: (context) {
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
    return ExpansionTile(
      title: const Text(
        'Offers',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      leading: const Icon(Icons.paid_sharp),
      children: [
        _buildDrawerItem(
          icon: Icons.shopify_outlined,
          title: Text('Product offers'),
          route: routeProductOffers,
          onTap: (context) {
            context.read<ReportCubit>().loadProductOffers(
              storeId: selectedStore?.storeId,
            );
            context.push(routeProductOffers);
          },
        ),
        _buildDrawerItem(
          icon: Icons.discount_outlined,
          title: Text('Offer'),
          route: routeOffers,
          onTap: (context) {
            context.read<ReportCubit>().loadOffers(
              storeId: selectedStore?.storeId,
            );
            context.push(routeOffers);
          },
        ),
      ],
    );
  }

  Widget _buildInventory(int storeId) {
    return ExpansionTile(
      title: const Text(
        'Inventory',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      leading: const Icon(Icons.inventory),
      children: [
        _buildDrawerItem(
          icon: Icons.widgets_sharp,
          title: Text('Products'),
          onTap: (context) {
            final productCubit = context.read<ProductCubit>();
            productCubit.product(storeId, 0, '', '', 0);
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
    return _buildDrawerItem(
      icon: Icons.home_work_outlined,
      title: Text('Top Stores', style: TextStyle(fontWeight: FontWeight.bold)),
      route: routeTopStores,
      onTap: (context) {
        context.read<ReportCubit>().loadTopStores();
        context.push(routeTopStores);
      },
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required Widget title,
    String? route,
    void Function(BuildContext)? onTap,
  }) {
    return Builder(
      builder: (context) => ListTile(
        leading: Icon(icon),
        title: title,
        onTap: () {
          if (onTap != null) {
            onTap(context);
          } else if (route != null) {
            context.push(route);
          }
        },
        dense: true,
      ),
    );
  }

  Widget _buildLogoutSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12.w),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => _showLogoutConfirmation(context),

          borderRadius: BorderRadius.circular(12.r),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: kWhite,
            ),
            child: Row(
              children: [
                SvgPicture.asset('assets/icons/Exit, Log out.svg'),
                8.horizontalSpace,
                Text(
                  'Sign out',
                  style: FontPalette.hW500S14.copyWith(
                    color: const Color(0XFFAE270F),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showLogoutConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          title: Text(
            'Confirm Logout',
            style: TextStyle(fontSize: 15.sp),
          ),
          content: Text(
            'Are you sure you want to sign out?',
            style: TextStyle(fontSize: 13.sp),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(dialogContext).pop(); // Close the dialog
                Helper().logout(context); // Proceed to logout
              },
              child: const Text('Logout', style: TextStyle(color: kRedColor)),
            ),
          ],
        );
      },
    );
  }
}
