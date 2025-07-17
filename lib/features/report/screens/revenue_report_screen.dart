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
                commonStoreDropDown(),
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
// Widget _buildStoreDropdown() {
//   return BlocBuilder<DashboardCubit, DashboardState>(
//     builder: (context, state) {
//       return DropDownFieldWidget(
//         isLoading: state.apiFetchStatus == ApiFetchStatus.loading,
//         prefixIcon: Container(
//           margin: EdgeInsets.only(left: 12.w),
//           child: SvgPicture.asset(
//             'assets/icons/package-box-pin-location.svg',
//             width: 20.w,
//             height: 20.h,
//             fit: BoxFit.contain,
//           ),
//         ),
//         borderColor: kBlack,
//         value: state.selectedStore,
//         items:
//             state.storeList?.map((e) {
//               return DropdownMenuItem<StoreResponse>(
//                 value: e,
//                 child: Text(e.storeName ?? ''),
//               );
//             }).toList() ??
//             [],
//         fillColor: const Color(0XFFEFF1F1),
//         onChanged: (store) => _handleStoreChange(store),
//         labelText: '',
//         textStyle: TextStyle(
//           color: Colors.black,
//           fontWeight: FontWeight.w500,
//           fontSize: 16,
//           letterSpacing: 0.5,
//         ),
//       );
//     },
//   );
// }

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
  return BlocBuilder<DashboardCubit, DashboardState>(
    builder: (context, state) {
      return CustomMaterialBtton(
        onPressed: () {
          context.read<ReportCubit>().loadReveneueReport(
            storeId: state.selectedStore?.storeId,
          );
        },
        buttonText: 'View Report',
      );
    },
  );
}

Widget _commonTable() {
  return BlocBuilder<ReportCubit, ReportState>(
    builder: (context, state) {
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
                      _showNoMoreDataOverlay(context);
                    }
                  }
                  return false;
                },
                child: CommonTableWidget(
                  isLoading: state.isSaleReport == ApiFetchStatus.loading,
                  headers: ["#", "ORDER NUMBER", "DATE", "AMOUNT"],
                  columnFlex: [1, 3, 2, 2, 2],
                  data:
                      state.revenueReport?.asMap().entries.map((entry) {
                        int localIndex = entry.key;
                        var e = entry.value;
                        int globalIndex = localIndex + 1;
                        return {
                          '#': globalIndex,
                          'ORDER NUMBER': e.invoiceNumber ?? '',
                          'DATE': formatDateString(e.acTransactionDate ?? ''),
                          'AMOUNT': e.amount ?? '',
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

OverlayEntry? _overlayEntry;

void _showNoMoreDataOverlay(BuildContext context) {
  if (_overlayEntry != null) return;

  _overlayEntry = OverlayEntry(
    builder: (context) => Positioned(
      bottom: 18,
      left: 0,
      right: 0,
      child: Center(
        child: const Text(
          'No more data',
          style: TextStyle(fontSize: 14, color: Colors.black),
        ),
      ),
    ),
  );

  Overlay.of(context).insert(_overlayEntry!);

  Future.delayed(const Duration(seconds: 1), () {
    _overlayEntry?.remove();
    _overlayEntry = null;
  });
}
