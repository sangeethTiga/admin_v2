import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/features/report/screens/purchase_screen.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/buttons/custom_material_button.dart';
import 'package:admin_v2/shared/widgets/date_picker/date_picker_container.dart';
import 'package:admin_v2/shared/widgets/divider/divider_widget.dart';
import 'package:admin_v2/shared/widgets/dropdown_field_widget/dropdown_field_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:admin_v2/shared/widgets/tables/custom_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ParcelCharge extends StatelessWidget {
  const ParcelCharge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Parcel Charge'),
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

                _buildOrderOptionDropDown(),
                8.verticalSpace,

                _handleDate(),
                8.verticalSpace,
                _viewResult(),
              ],
            ),
          ),
          Expanded(child: _commonTable()),
        ],
      ),
    );
  }

  Widget _buildOrderOptionDropDown() {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return DropDownFieldWidget(
          // hintText: 'Order Option',
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.w,
            vertical: 15.h,
          ),
          isLoading: state.apiFetchStatus == ApiFetchStatus.loading,
          // prefixIcon: Container(
          //   margin: EdgeInsets.only(left: 12.w),
          //   child: SvgPicture.asset(
          //     'assets/icons/package-box-pin-location.svg',
          //     width: 20.w,
          //     height: 20.h,
          //     fit: BoxFit.contain,
          //   ),
          // ),
          borderColor: kBlack,
          fillColor: const Color(0XFFEFF1F1),
          value: state.selectedOption?.orderOptionId,

          items:
              state.optionList?.map((e) {
                return DropdownMenuItem<int>(
                  value: e.orderOptionId,
                  child: Text(e.orderOptionName ?? ''),
                );
              }).toList() ??
              [],
          inputBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(color: Color(0XFFB7C6C2)),
          ),
          onChanged: (selectedOption) {
            final select = state.optionList?.firstWhere(
              (e) => e.orderOptionId == selectedOption,
            );
            if (select != null &&
                select.orderOptionId != state.selectedOption?.orderOptionId) {
              context.read<DashboardCubit>().selectedOption(select);
            }
            // context.read<DashboardCubit>().orderOption(
            //   state.selectedStore?.storeId,
            //   0,
            // );
          },
        );
      },
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
                // firstDate: DateTime.now(),
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

  Widget _viewResult() {
    final ValueNotifier<bool> showNoMoreData = ValueNotifier(false);
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, commonState) {
        return BlocBuilder<ReportCubit, ReportState>(
          builder: (context, reportState) {
            return CustomMaterialBtton(
              onPressed: () {
                showNoMoreData.value = false;
                final selectedOptionId =
                    commonState.selectedOption?.orderOptionId;
                context.read<ReportCubit>().loadParcelCharge(
                  storeId: commonState.selectedStore?.storeId,
                  orderOptionId: selectedOptionId,
                );
                // print('fghrhrh -=-=-=-=${state.selectedOption?.orderOptionId}');
              },
              buttonText: 'View Report',
            );
          },
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
                          reportState.parcelChargeList?.isNotEmpty == true) {
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
                    isLoading: state.isParcelCharge == ApiFetchStatus.loading,
                    headers: ["#", "ORDER", "ORDER DATE", "PARCEL CHARGE"],
                    columnFlex: [1, 2, 2, 2],
                    data:
                        state.parcelChargeList?.asMap().entries.map((entry) {
                          int localIndex = entry.key;
                          var e = entry.value;
                          int globalIndex = localIndex + 1;
                          return {
                            "#": globalIndex,
                            "ORDER": e.billNo ?? '',
                            "ORDER DATE": e.orderDate ?? '',
                            "PARCEL CHARGE": e.parcelCharge ?? '',
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
                    padding: EdgeInsets.all(14.w),
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
}

void _loadMoreData(BuildContext context) {
  final reportState = context.read<ReportCubit>().state;
  final dashboardState = context.read<DashboardCubit>().state;

  print('_loadMoreData called');
  print('hasMoreData: ${reportState.hasMoreData}');
  print('isLoadingMore: ${reportState.isLoadingMore}');
  print('currentPage: ${reportState.currentPage}');
  print('total records: ${reportState.customersReport?.length}');

  if (reportState.hasMoreData == true && reportState.isLoadingMore != true) {
    context.read<ReportCubit>().loadParcelCharge(
      storeId: dashboardState.selectedStore?.storeId,
      isLoadMore: true,
    );
  }
}
