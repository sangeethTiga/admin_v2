import 'package:admin_v2/features/common/cubit/common_cubit.dart';
import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/orders/cubit/order_cubit.dart';
import 'package:admin_v2/features/orders/domain/models/order_request/order_request.dart';
import 'package:admin_v2/features/products/cubit/product_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/app/list/common_map.dart';
import 'package:admin_v2/shared/app/list/helper.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/routes/routes.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/utils/auth/auth_utils.dart';
import 'package:admin_v2/shared/widgets/dropdown_field_widget/dropdown_field_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
        toolbarHeight: 30.h,
        iconTheme: IconThemeData(color: kWhite),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30.h),
          child: MainPadding(
            left: 8.w,
            right: 0,
            bottom: 8.h,
            child: Builder(
              builder: (context) => Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.menu, color: kWhite),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ),
                  4.horizontalSpace,
                  SvgPicture.asset(
                    'assets/icons/Logo.svg',
                    height: 18,
                    width: 18,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      drawer: Drawer(
        child: BlocBuilder<CommonCubit, CommonState>(
          builder: (context, state) {
            return ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  margin: EdgeInsets.only(bottom: 0, top: 0),
                  decoration: BoxDecoration(color: kPrimaryColor),
                  child: FutureBuilder(
                    future: AuthUtils.instance.readUserData(),
                    builder: (context, asyncSnapshot) {
                      return Column(
                        spacing: 6.h,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Admin',
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                          Text(
                            asyncSnapshot.data?.user?.userName ?? '',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Text(
                            asyncSnapshot.data?.user?.userEmail ?? '',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Text(
                            asyncSnapshot.data?.user?.userPhone.toString() ??
                                '',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Product offers'),
                  onTap: () {
                    context.push(routeProductOffers);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Delivery Charge'),
                  onTap: () {
                    context.push(routeDeliveryCharge);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Parcel Charge'),
                  onTap: () {
                    context.read<CommonCubit>().orderOption(
                      state.selectedStore?.storeId,
                      0,
                    );
                    context.push(routeParcel);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.money),
                  title: Text('Tax Report'),
                  onTap: () {
                    context.push(routeTax);
                  },
                ),

                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text('Category Sales '),
                  onTap: () {
                    context.push(routeCategorySales);
                  },
                ),

                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text('Mess Report '),
                  onTap: () {
                    context.push(routeMess);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text('Supplier '),
                  onTap: () {
                    context.push(routeSupplier);
                  },
                ),

                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('User Shift'),
                  onTap: () {
                    context.push(routeUserShift);
                  },
                ),

                ListTile(
                  leading: Icon(Icons.attach_money),
                  title: Text('Sale on Deals'),
                  onTap: () {
                    context.read<ReportCubit>().loadSalesDealsReport();
                    context.push(routeSaleDeals);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.attach_money),
                  title: Text('Top Stores'),
                  onTap: () {
                    context.read<ReportCubit>().loadTopStores();
                    context.push(routeTopStores);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.local_offer),
                  title: Text('Offers'),
                  onTap: () {
                    //context.read<ReportCubit>().loadOffers();
                    context.push(routeOffers);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.money_rounded),
                  title: Text('Cheque Transaction'),
                  onTap: () {
                    context.read<ReportCubit>().loadStatus();
                    context.push(routeCheque);
                  },
                ),
                ListTile(
                  title: Text('Most Selling Products'),
                  leading: Icon(Icons.gif_box_outlined),
                  onTap: () {
                    context.read<CommonCubit>().loadSellingProducts(
                      state.selectedStore?.storeId,
                      0,
                    );
                    context.push(routeSellingProducts);
                  },
                ),
                GestureDetector(
                  onTap: () {
                    Helper().logout(context);
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 12.w, right: 12.w),
                    margin: EdgeInsets.only(
                      left: 12.w,
                      right: 12.w,
                      bottom: 12.h,
                      top: 8.h,
                    ),
                    height: 52.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: kWhite,
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/Exit, Log out.svg'),
                        5.horizontalSpace,
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sign out',
                                style: FontPalette.hW500S14.copyWith(
                                  color: Color(0XFFAE270F),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),

      body: MainPadding(
        top: 16.h,
        child: BlocBuilder<CommonCubit, CommonState>(
          builder: (context, state) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: BlocBuilder<CommonCubit, CommonState>(
                        builder: (context, state) {
                          return DropDownFieldWidget(
                            isLoading:
                                state.apiFetchStatus == ApiFetchStatus.loading,
                            prefixIcon: Container(
                              margin: EdgeInsets.only(left: 12.w),
                              child: SvgPicture.asset(
                                'assets/icons/package-box-pin-location.svg',
                                width: 20.w,
                                height: 20.h,
                                fit: BoxFit.contain,
                              ),
                            ),

                            borderColor: kBlack,
                            value: state.selectedStore,

                            items:
                                state.storeList?.map((e) {
                                  return DropdownMenuItem<StoreResponse>(
                                    value: e,
                                    child: Text(e.storeName ?? ''),
                                  );
                                }).toList() ??
                                [],
                            fillColor: Color(0XFFEFF1F1),
                            // suffixWidget: SvgPicture.asset(
                            //   'assets/icons/Arrow - Right.svg',
                            // ),
                            onChanged: (p0) {
                              context.read<CommonCubit>().selectedStore(p0);
                            },
                            labelText: '',
                          );
                        },
                      ),
                    ),

                    36.horizontalSpace,
                    SizedBox(
                      width: 120.w,
                      child: BlocBuilder<CommonCubit, CommonState>(
                        builder: (context, state) {
                          return DropDownFieldWidget(
                            borderColor: kBlack,

                            value: state.selectDate,

                            items: custDate.map((e) {
                              return DropdownMenuItem<ListOfDemo>(
                                value: e,
                                child: Text(e.name ?? ''),
                              );
                            }).toList(),
                            fillColor: Color(0XFFEFF1F1),
                            // suffixWidget: SvgPicture.asset(
                            //   'assets/icons/Arrow - Right.svg',
                            // ),
                            onChanged: (p0) {
                              context.read<CommonCubit>().selectedDate(p0);
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
                20.verticalSpace,
                Expanded(
                  child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: accountList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                    itemBuilder: (context, i) {
                      final data = accountList[i];
                      return GestureDetector(
                        onTap: () {
                          switch (data.name) {
                            case 'Product':
                              context.read<ProductCubit>().priduct(
                                state.selectedStore?.storeId ?? 0,
                                0,
                                '',
                                ''
                              );
                              context.read<ProductCubit>().catgeory(
                                state.selectedStore?.storeId ?? 0,
                              );
                              context.read<ProductCubit>().stockStatus();
                              context.push(routeProducts);
                              break;
                            case 'Profit/loss':
                              context.read<ReportCubit>().loadProfitAndLoss(
                                storeId: state.selectedStore?.storeId,
                                fromDate: parsedDate(DateTime.now()),
                                toDate: parsedDate(DateTime.now()),
                              );

                              context.push(routeProfitloss);
                              break;
                            case 'Orders':
                              context.read<OrderCubit>().orderStatus();
                              context.read<OrderCubit>().orders(
                                req: OrderRequest(
                                  storeId: state.selectedStore?.storeId,
                                  fromDate: parsedDate(DateTime.now()),
                                  toDate: parsedDate(DateTime.now()),
                                ),
                              );
                              context.push(routeOrders);
                              break;
                            case 'Sales':
                              context.read<ReportCubit>().loadSalesReport(
                                storeId: state.selectedStore?.storeId,
                                fromDate: '2024-06-07',
                                toDate: '2025-06-07',
                              );
                              context.push(routeSale);
                              break;
                            case 'Revenue':
                              context.read<ReportCubit>().loadReveneueReport(
                                storeId: state.selectedStore?.storeId,
                                fromDate: parsedDate(DateTime.now()),
                                toDate: parsedDate(DateTime.now()),
                              );
                              context.push(routeRevenue);
                              break;
                            case 'Expense':
                              context.read<ReportCubit>().loadExpenseReport(
                                accountId:
                                    state.selectedAccount?.accountHeadId ?? 0,
                                storeId: state.selectedStore?.storeId,
                                fromDate: parsedDate(DateTime.now()),
                                toDate: parsedDate(DateTime.now()),
                              );
                              context.read<CommonCubit>().account();
                              context.push(routeExpense);
                              break;
                            case 'Customers':
                              context.push(routeCustomers);
                              break;

                            case 'Purchase':
                              context.read<CommonCubit>().purchaseType();
                              context.push(routePurchase);

                              break;
                            case 'Day Summary':
                              context.push(routeDaySummary);
                              break;

                            default:
                          }
                        },
                        child: Container(
                          height: 138.h,
                          width: 170.w,
                          decoration: BoxDecoration(
                            color: Color(0XFFEFF1F1),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                data.image ?? '',
                                width: 90.w,
                                height: 66.h,
                              ),
                              Text(
                                data.name ?? '',
                                style: FontPalette.hW700S13,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<DashboardCubit>().loadRevenueGraph();
                    context.push(routeRevenueGraph);
                  },
                  child: Text('Marwa ~ Revenue'),
                ),

                ElevatedButton(
                  onPressed: () {
                    context.read<DashboardCubit>().loadOrderGraph();
                    context.push(routeOrderGraph);
                  },
                  child: Text('ORDERS'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
