import 'package:admin_v2/features/common/cubit/common_cubit.dart';
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/features/report/screens/purchase_screen.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/date_picker/date_picker_container.dart';
import 'package:admin_v2/shared/widgets/divider/divider_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ProfitLossScreen extends StatelessWidget {
  const ProfitLossScreen({super.key});
  double calculateTotalExpense(ReportState state) {
    final result = state.profitlossReport?[0].paymentData;
    if (result == null) return 0.0;
    return result.fold(0.0, (sum, item) => sum + (item.amount ?? 0.0));
  }

  double calculateTotalRevenue(ReportState state) {
    final receipts = state.profitlossReport?[0].receiptsData;
    if (receipts == null) return 0.0;
    return receipts.fold<double>(
      0.0,
      (sum, item) => sum + (item.amount ?? 0.0),
    );
  }

  double calculateProfitorLoss(ReportState state) {
    final revenue = calculateTotalRevenue(state);
    final expense = calculateTotalExpense(state);
    return revenue - expense;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Profit/Loss'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            dividerWidget(height: 6.h),
            MainPadding(
              top: 0.h,
              child: Column(
                spacing: 6.h,
                children: [
                  commonStoreDropDown(
                    onChanged: (p0) {
                      context.read<DashboardCubit>().selectedStore(p0);
                      context.read<CommonCubit>().selectedStoreforProfitloss(
                        p0,
                      );

                      final reportCubit = context.read<ReportCubit>();
                      reportCubit.loadProfitAndLoss(storeId: p0.storeId ?? 0);
                    },
                  ),

                  BlocBuilder<ReportCubit, ReportState>(
                    builder: (context, state) {
                      return Row(
                        children: [
                          Expanded(
                            child: DatePickerContainer(
                              hintText: '',
                              value: apiFormat.format(
                                state.fromDate ?? DateTime.now(),
                              ),
                              changeDate: (DateTime pickDate) {
                                context.read<ReportCubit>().changeFromDate(
                                  pickDate,
                                );
                                final storeId =
                                    context
                                        .read<DashboardCubit>()
                                        .state
                                        .selectedStore
                                        ?.storeId ??
                                    0;

                                context.read<ReportCubit>().loadProfitAndLoss(
                                  storeId: storeId,
                                );
                              },
                            ),
                          ),
                          12.horizontalSpace,
                          Expanded(
                            child: DatePickerContainer(
                              hintText: '',
                              value: apiFormat.format(
                                state.toDate ?? DateTime.now(),
                              ),
                              changeDate: (DateTime pickDate) {
                                context.read<ReportCubit>().changeToDate(
                                  pickDate,
                                );
                                final storeId =
                                    context
                                        .read<DashboardCubit>()
                                        .state
                                        .selectedStore
                                        ?.storeId ??
                                    0;

                                context.read<ReportCubit>().loadProfitAndLoss(
                                  storeId: storeId,
                                );
                              },
                            ),
                          ),
                        ],
                      );
                    },
                  ),

                  2.verticalSpace,
                  BlocBuilder<ReportCubit, ReportState>(
                    builder: (context, state) {
                      return Container(
                        // height: 120.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(color: kLightBorderColor),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            12.verticalSpace,
                            Padding(
                              padding: EdgeInsets.only(left: 12.w),
                              child: Text(
                                'Revenue',
                                style: FontPalette.hW700S16,
                              ),
                            ),
                            12.verticalSpace,
                            state.isSaleReport == ApiFetchStatus.loading
                                ? _shimmerExpenseList()
                                : ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: state
                                        .profitlossReport?[0]
                                        .receiptsData
                                        ?.length,
                                    itemBuilder: (context, i) {
                                      final data = state
                                          .profitlossReport?[0]
                                          .receiptsData?[i];
                                      return _rowWidget(
                                        name: data?.accountHeadName ?? '',
                                        status: data?.amount?.toStringAsFixed(
                                          2,
                                        ),
                                      );
                                    },
                                  ),

                            Container(
                              width: double.infinity,
                              height: 47.h,
                              decoration: BoxDecoration(
                                color: kPrimaryColor1,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12.r),
                                  bottomRight: Radius.circular(12.r),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 12.w),
                                    child: Text(
                                      'Total Revenue',
                                      style: FontPalette.hW700S14,
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(right: 12.w),
                                    child: Text(
                                      calculateTotalRevenue(
                                        state,
                                      ).toStringAsFixed(2),

                                      style: FontPalette.hW700S14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),

                  BlocBuilder<ReportCubit, ReportState>(
                    builder: (context, state) {
                      return Container(
                        // height: 120.h,===
                        width: double.infinity,
                        // padding: EdgeInsets.only(left: 12.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(color: kLightBorderColor),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            12.verticalSpace,
                            Padding(
                              padding: EdgeInsets.only(left: 12.w),
                              child: Text(
                                'Expense',
                                style: FontPalette.hW700S16,
                              ),
                            ),
                            12.verticalSpace,
                            state.isSaleReport == ApiFetchStatus.loading
                                ? _shimmerExpenseList()
                                : ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: state
                                        .profitlossReport?[0]
                                        .paymentData
                                        ?.length,
                                    itemBuilder: (context, i) {
                                      final data = state
                                          .profitlossReport?[0]
                                          .paymentData?[i];
                                      return _rowWidget(
                                        name: data?.accountHeadName ?? '',
                                        status: data?.amount?.toStringAsFixed(
                                          2,
                                        ),
                                      );
                                    },
                                  ),
                            Container(
                              width: double.infinity,
                              height: 45.h,
                              decoration: BoxDecoration(
                                color: kPrimaryColor1,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12.r),
                                  bottomRight: Radius.circular(12.r),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 12.w),
                                    child: Text(
                                      'Total Expense',
                                      style: FontPalette.hW700S14,
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(right: 12.w),
                                    child: Text(
                                      calculateTotalExpense(
                                        state,
                                      ).toStringAsFixed(2),

                                      style: FontPalette.hW700S14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  BlocBuilder<ReportCubit, ReportState>(
                    builder: (context, state) {
                      return Container(
                        width: double.infinity,
                        height: 45.h,
                        decoration: BoxDecoration(
                          color: kPrimaryColor1,
                          borderRadius: BorderRadius.circular(
                            12,
                            // bottomLeft: Radius.circular(12.r),
                            // bottomRight: Radius.circular(12.r),
                          ),
                        ),

                        child: Padding(
                          padding: EdgeInsets.only(left: 12.w),
                          child: Row(
                            children: [
                              Text(
                                'Net Profit/Loss',
                                style: FontPalette.hW700S14,
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(right: 12.w),
                                child: Text(
                                  calculateProfitorLoss(
                                    state,
                                  ).toStringAsFixed(2),

                                  style: FontPalette.hW700S14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  8.verticalSpace,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _rowWidget({String? name, String? status}) {
  return MainPadding(
    left: 12,
    top: 0.h,
    bottom: 8.h,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name ?? '', style: FontPalette.hW400S13),

        Text(status ?? '', style: FontPalette.hW400S13),
      ],
    ),
  );
}

Widget _shimmerExpenseList() {
  return ListView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: 8,
    itemBuilder: (context, index) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShimmerWidget.rectangular(width: 200.w, height: 25.h),
            ShimmerWidget.rectangular(width: 60.w, height: 25.h),
          ],
        ),
      );
    },
  );
}

class ShimmerWidget extends StatelessWidget {
  final double width;
  final double height;
  final ShapeBorder shapeBorder;

  const ShimmerWidget.rectangular({
    super.key,
    required this.width,
    required this.height,
  }) : shapeBorder = const RoundedRectangleBorder();

  const ShimmerWidget.circular({
    super.key,
    required this.width,
    required this.height,
  }) : shapeBorder = const CircleBorder();

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        width: width,
        height: height,
        decoration: ShapeDecoration(
          color: Colors.grey[400]!,
          shape: shapeBorder,
        ),
      ),
    );
  }
}
