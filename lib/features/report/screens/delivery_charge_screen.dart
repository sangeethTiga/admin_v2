import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/features/report/screens/expense_report_screen.dart';
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

class DeliveryChargeScreen extends StatelessWidget {
  const DeliveryChargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Delivery Charge'),
      body: Column(
        children: [
          dividerWidget(height: 6.h),
          MainPadding(
            child: Column(
              children: [
                commonStoreDropDown(
                  onChanged: (p0) {
                    context.read<DashboardCubit>().selectedStore(p0);
                  },
                ),
                8.verticalSpace,
                _handleDate(),
                8.verticalSpace,
                _viewResults(),
                8.verticalSpace,
              ],
            ),
          ),
          Expanded(child: _buildCommonTable()),
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
                labelText: 'From Date',
                value: apiFormat.format(state.fromDate ?? DateTime.now()),
                changeDate: (DateTime pickDate) {
                  context.read<ReportCubit>().changeFromDate(pickDate);
                },
              ),
            ),
            12.horizontalSpace,
            Expanded(
              child: DatePickerContainer(
                labelText: 'To Date',

                value: apiFormat.format(state.toDate ?? DateTime.now()),
                changeDate: (DateTime pickDate) {
                  context.read<ReportCubit>().changeToDate(pickDate);
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
            context.read<ReportCubit>().loadDeliveryChargeReport(
              storeId: state.selectedStore?.storeId,
              // isLoadMore: true,
            );
          },
          buttonText: 'View Results',
        );
      },
    );
  }

  Widget _buildCommonTable() {
    final ValueNotifier<bool> showNoMoreData = ValueNotifier(false);
    return BlocBuilder<ReportCubit, ReportState>(
      builder: (context, state) {
        final ScrollController scrollController = ScrollController();
        return MainPadding(
          child: Column(
            children: [
              Expanded(
                child: NotificationListener<ScrollNotification>(
                  onNotification: (ScrollNotification scrollInfo) {
                    final maxScroll = scrollInfo.metrics.maxScrollExtent;
                    final currentScroll = scrollInfo.metrics.pixels;
                    final threshold = maxScroll - 100;

                    final atBottom = currentScroll >= threshold;

                    if (scrollInfo is ScrollEndNotification && atBottom) {
                      final reportState = context.read<ReportCubit>().state;

                      if (reportState.hasMoreData == true &&
                          reportState.isLoadingMore != true) {
                        _loadMoreData(context);
                      }

                      if (reportState.hasMoreData == false &&
                          reportState.deliverychargeReport?.isNotEmpty ==
                              true) {
                        showNoMoreData.value = true;
                      }
                    }
                    if (scrollController.hasClients &&
                        scrollController.position.userScrollDirection ==
                            ScrollDirection.forward) {
                      showNoMoreData.value = false;
                    }

                    return false;
                  },
                  child: CommonTableWidget(
                    controller: scrollController,
                    isLoading:
                        state.isDeliverychargeReport == ApiFetchStatus.loading,
                    headers: [
                      "#",
                      "BILL NO",
                      "ORDER DATE",
                      "COUNT",
                      "SHIPPING CHARGE",
                    ],
                    columnFlex: [0, 3, 3, 2, 3],
                    data:
                        state.deliverychargeReport?.asMap().entries.map((
                          entry,
                        ) {
                          // int localIndex = entry.key;
                          var e = entry.value;
                          int globalIndex =
                              ((state.currentPage - 1) * 20) + entry.key + 1;
                          return {
                            "#": globalIndex,
                            "BILL NO": e.billNo ?? '',
                            "ORDER DATE": formatDateString(e.orderDate ?? ''),
                            "COUNT": e.rawCount ?? '',
                            "SHIPPING CHARGE": e.shippingCharge != null
                                ? double.tryParse(
                                        e.shippingCharge!,
                                      )?.toStringAsFixed(2) ??
                                      ''
                                : '',
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
    context.read<ReportCubit>().loadDeliveryChargeReport(
      storeId: dashboardState.selectedStore?.storeId,
      isLoadMore: true,
    );
  }
}
