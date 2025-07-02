import 'package:admin_v2/features/common/cubit/common_cubit.dart';
import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/date_picker/date_picker_container.dart';
import 'package:admin_v2/shared/widgets/divider/divider_widget.dart';
import 'package:admin_v2/shared/widgets/dropdown_field_widget/dropdown_field_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';

class ProfitLossScreen extends StatelessWidget {
  const ProfitLossScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Profit/Loss'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            dividerWidget(height: 6.h),
            14.verticalSpace,
            MainPadding(
              child: Column(
                spacing: 12.h,
                children: [
                  BlocBuilder<CommonCubit, CommonState>(
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
                        fillColor: const Color(0XFFEFF1F1),
                        suffixWidget: SvgPicture.asset(
                          'assets/icons/Arrow - Right.svg',
                        ),
                        onChanged: (p0) {
                          context.read<DashboardCubit>().selectedStore(p0);
                        },
                        labelText: '',
                      );
                    },
                  ),

                  Row(
                    children: [
                      Expanded(
                        child: DatePickerContainer(
                          hintText: 'Pls',
                          changeDate: () {},
                        ),
                      ),
                      12.horizontalSpace,
                      Expanded(
                        child: DatePickerContainer(
                          hintText: 'Pls',
                          changeDate: () {},
                        ),
                      ),
                    ],
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
                                        status: data?.amount.toString(),
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
                                      'Total Revenue',
                                      style: FontPalette.hW700S14,
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(right: 12.w),
                                    child: Text(
                                      '0.0',
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
                        // height: 120.h,
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
                                        status: data?.amount.toString(),
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
                                      '0.0',
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
