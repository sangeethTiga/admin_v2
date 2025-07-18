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

class RevenueReportScreen extends StatelessWidget {
  const RevenueReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Revenue Report'),
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
                10.verticalSpace,
                _handleDate(),
                12.verticalSpace,
                _viewReport(),
                2.verticalSpace,
              ],
            ),
          ),
          Expanded(child: _commonTable()),
        ],
      ),
    );
  }
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

Widget _viewReport() {
  final ValueNotifier<bool> showNoMoreData = ValueNotifier(false);
  return BlocBuilder<DashboardCubit, DashboardState>(
    builder: (context, state) {
      return CustomMaterialBtton(
        onPressed: () {
          showNoMoreData.value = false;
          final storeId = context
              .read<DashboardCubit>()
              .state
              .selectedStore
              ?.storeId;
          context.read<ReportCubit>().loadReveneueReport(
            storeId: storeId,
            //isLoadMore: true,
          );
        },
        buttonText: 'View Report',
      );
    },
  );
}

Widget _commonTable() {
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
                        reportState.revenueReport?.isNotEmpty == true) {
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
                  isLoading: state.isSaleReport == ApiFetchStatus.loading,
                  headers: [
                    "#",
                    "INVOICE NUMBER",
                    "TRANSACTION DATE",
                    "AMOUNT",
                  ],
                  columnFlex: [1, 3, 2, 2, 2],
                  data:
                      state.revenueReport?.asMap().entries.map((entry) {
                        int localIndex = entry.key;
                        var e = entry.value;
                        int globalIndex = localIndex + 1;
                        return {
                          '#': globalIndex,
                          'INVOICE NUMBER': e.invoiceNumber ?? '',
                          'TRANSACTION DATE': formatDateString(
                            e.acTransactionDate ?? '',
                          ),
                          'AMOUNT': e.amount?.toStringAsFixed(2) ?? '',
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
            // if (state.hasMoreData == false &&
            //     state.parcelChargeList?.isNotEmpty == true)
            //   Container(
            //     padding: EdgeInsets.all(16.w),
            //     child: Text(
            //       'No more data',
            //       style: TextStyle(fontSize: 12.sp, color: Colors.grey),
            //     ),
            //   ),
          ],
        ),
      );
    },
  );
}

void _loadMoreData(BuildContext context) {
  final reportState = context.read<ReportCubit>().state;
  final dashboardState = context.read<DashboardCubit>().state;
  if (reportState.hasMoreData == true && reportState.isLoadingMore != true) {
    context.read<ReportCubit>().loadReveneueReport(
      storeId: dashboardState.selectedStore?.storeId,
      isLoadMore: true,
    );
  }
}
