import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/orders/screens/order_detail_screen.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/features/report/screens/purchase_screen.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/buttons/custom_material_button.dart';
import 'package:admin_v2/shared/widgets/date_picker/date_picker_container.dart';
import 'package:admin_v2/shared/widgets/divider/divider_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:admin_v2/shared/widgets/tables/custom_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategorySalesReportScreen extends StatelessWidget {
  const CategorySalesReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Category Sales Report'),
      body: Column(
        children: [
          dividerWidget(height: 6.0),
          MainPadding(
            child: Column(
              children: [
                commonStoreDropDown(
                  onChanged: (p0) {
                    context.read<DashboardCubit>().selectedStore(p0);
                    context.read<ReportCubit>().loadCategorySalesReport(
                      storeId: p0.storeId,
                    );
                  },
                ),
                10.verticalSpace,

                _handleDate(),

                10.verticalSpace,
                _viewResults(),

                10.verticalSpace,
              ],
            ),
          ),
          Expanded(child: _buildCommonTable()),

          // Expanded(
          //   child: MainPadding(
          //     child: BlocBuilder<ReportCubit, ReportState>(
          //       builder: (context, state) {
          //         return CommonTableWidget(
          //           isLoading: state.isCategorySales == ApiFetchStatus.loading,

          //           headers: [
          //             "#",
          //             "Category Name",
          //             "Order count",
          //             "Total Amount",
          //           ],
          //           columnFlex: [1, 2, 2, 1],
          //           data:
          //               state.categorySales?.map((e) {
          //                 int index = state.categorySales?.indexOf(e) ?? 0;
          //                 return {
          //                   '#': index + 1,
          //                   "Category Name": e.categoryName,
          //                   "Order count": e.orderCount,
          //                   "Total Amount": formatAmount(e.totalAmount ?? ''),
          //                 };
          //               }).toList() ??
          //               [],
          //         );
          //       },
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget _handleDate() {
    return BlocBuilder<ReportCubit, ReportState>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: DatePickerContainer(
                value: apiFormat.format(state.fromDate ?? DateTime.now()),
                labelText: 'From Date',
                changeDate: (DateTime pickedDate) {
                  context.read<ReportCubit>().changeFromDate(pickedDate);
                },
              ),
            ),
            12.horizontalSpace,
            Expanded(
              child: DatePickerContainer(
                labelText: 'To Date',
                value: apiFormat.format(state.toDate ?? DateTime.now()),
                changeDate: (DateTime pickedDate) {
                  context.read<ReportCubit>().changeToDate(pickedDate);
                },
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _viewResults() {
    final ValueNotifier<bool> showNoMoreData = ValueNotifier(false);
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return CustomMaterialBtton(
          onPressed: () {
            showNoMoreData.value = false;
            context.read<ReportCubit>().loadCategorySalesReport(
              storeId: state.selectedStore?.storeId,
            );
          },
          buttonText: 'View Report',
        );
      },
    );
  }

  Widget _buildCommonTable() {
    final ValueNotifier<bool> showNoMoreData = ValueNotifier(false);
    return BlocBuilder<ReportCubit, ReportState>(
      builder: (context, state) {
     //   final ScrollController scrollController = ScrollController();
        return MainPadding(
          child: Column(
            children: [
              Expanded(
                child: NotificationListener<ScrollNotification>(
                  // onNotification: (ScrollNotification scrollInfo) {
                  //   final maxScroll = scrollInfo.metrics.maxScrollExtent;
                  //   final currentScroll = scrollInfo.metrics.pixels;
                  //   final threshold = maxScroll - 100;

                  //   final atBottom = currentScroll >= threshold;

                  //   if (scrollInfo is ScrollEndNotification && atBottom) {
                  //     final reportState = context.read<ReportCubit>().state;

                  //     if (reportState.hasMoreData == true &&
                  //         reportState.isLoadingMore != true) {
                  //       _loadMoreData(context);
                  //     }

                  //     if (reportState.hasMoreData == false &&
                  //         reportState.deliverychargeReport?.isNotEmpty ==
                  //             true) {
                  //       showNoMoreData.value = true;
                  //     }
                  //   }
                  //   if (scrollController.hasClients &&
                  //       scrollController.position.userScrollDirection ==
                  //           ScrollDirection.forward) {
                  //     showNoMoreData.value = false;
                  //   }

                  //   return false;
                  // },

                  child: CommonTableWidget(
                    isLoading: state.isCategorySales == ApiFetchStatus.loading,

                    headers: [
                      "#",
                      "Category Name",
                      "Order count",
                      "Total Amount",
                    ],
                    columnFlex: [1, 2, 2, 1],
                    data:
                        state.categorySales?.map((e) {
                          int index = state.categorySales?.indexOf(e) ?? 0;
                          return {
                            '#': index + 1,
                            "Category Name": e.categoryName,
                            "Order count": e.orderCount,
                            "Total Amount": formatAmount(e.totalAmount ?? ''),
                          };
                        }).toList() ??
                        [],
                  ),
                ),
              ),
              if (state.isLoadingMore == true)
                Container(
                  padding: EdgeInsets.all(16.w),
                  child: CircularProgressIndicator(),
                ),
              ValueListenableBuilder<bool>(
                valueListenable: showNoMoreData,
                builder: (context, value, _) {
                  if (!value) return SizedBox.shrink();
                  return Padding(
                    padding: EdgeInsets.all(16.w),
                    child: Text(
                      'No more data',
                      style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

void _loadMoreData(BuildContext context) {
  final reportState = context.read<ReportCubit>().state;
  final dashboardState = context.read<DashboardCubit>().state;

  print('_loadMoreData called');
  print('hasMoreData: ${reportState.hasMoreData}');
  print('isLoadingMore: ${reportState.isLoadingMore}');
  print('currentPage: ${reportState.currentPage}');
  print('total records: ${reportState.deliverychargeReport?.length}');

  if (reportState.hasMoreData == true && reportState.isLoadingMore != true) {
    context.read<ReportCubit>().loadCategorySalesReport(
      storeId: dashboardState.selectedStore?.storeId,
      isLoadMore: true,
    );
  }
}
