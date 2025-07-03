//import 'dart:math';

import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/buttons/custom_material_button.dart';
import 'package:admin_v2/shared/widgets/date_picker/date_picker_container.dart';
import 'package:admin_v2/shared/widgets/divider/divider_widget.dart';
import 'package:admin_v2/shared/widgets/dropdown_field_widget/dropdown_field_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';

class DaySummaryReportScreen extends StatelessWidget {
  const DaySummaryReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'DaySummary'),
      body: Column(
        children: [
          dividerWidget(height: 6.0),
          MainPadding(
            child: Column(
              children: [
                BlocBuilder<DashboardCubit, DashboardState>(
                  builder: (context, state) {
                    return DropDownFieldWidget(
                      isLoading: state.apiFetchStatus == ApiFetchStatus.loading,
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
                      // suffixWidget: SvgPicture.asset(
                      //   'assets/icons/Arrow - Right.svg',
                      // ),
                      onChanged: (p0) {
                        context.read<DashboardCubit>().selectedStore(p0);
                      },
                      labelText: '',
                    );
                  },
                ),

                12.verticalSpace,
                BlocBuilder<ReportCubit, ReportState>(
                  builder: (context, state) {
                    return DatePickerContainer(
                      hintText: '',
                      changeDate: (DateTime pickedDate) {
                        context.read<ReportCubit>().changeToDate(pickedDate);
                      },
                    );
                  },
                ),

                BlocBuilder<DashboardCubit, DashboardState>(
                  builder: (context, state) {
                    print('.,.,.,storeId.,.,.:${state.selectedStore}');
                    return CustomMaterialBtton(
                      onPressed: () {
                        context.read<ReportCubit>().loadDaySummary(
                          storeId: state.selectedStore?.storeId,
                        );
                      },
                      buttonText: 'View Report',
                    );
                  },
                ),

                10.verticalSpace,

                BlocBuilder<ReportCubit, ReportState>(
                  builder: (context, state) {
                    return Container(
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

                            child: Text('Mode Of Payments'),
                          ),
                          12.verticalSpace,
                          state.isDaySummary == ApiFetchStatus.loading
                              ? _shimmerDaySummaryList()
                              : ListView.builder(
                                  shrinkWrap: true,

                                  itemCount:
                                      state
                                          .daySummary?[0]
                                          .modeOfPayments
                                          ?.length ??
                                      0,
                                  itemBuilder: (context, i) {
                                    final data =
                                        state.daySummary?[0].modeOfPayments?[i];
                                    print('.,.,.,gc.,.,.,:$data');

                                    return _rowWidget(name: data!.cash ?? 0);
                                  },
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
    );
  }
}

Widget _shimmerDaySummaryList() {
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

Widget _rowWidget({dynamic name, String? status}) {
  return MainPadding(
    left: 12,
    top: 0.h,
    bottom: 8.h,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name ?? '', style: FontPalette.hW400S13),

        // Text(status ?? '', style: FontPalette.hW400S13),
      ],
    ),
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





    // Container(
                //   height: 0.065,
                //   decoration: BoxDecoration(
                //     borderRadius: const BorderRadius.only(
                //       topLeft: Radius.circular(10),
                //       topRight: Radius.circular(10),
                //     ),
                //   ),
                //   child: titleAndValue(
                //     whilte: true,
                //     bold: true,

                //     title: 'Day Summary',
                //     label: '',
                //     value: '',
                //   ),
                // ),

                // BlocBuilder<ReportCubit, ReportState>(
                //   builder: (context, state) {
                //     if (state.isDaySummary == ApiFetchStatus.loading) {
                //       return Expanded(
                //         child: Shimmer.fromColors(
                //           baseColor: Colors.grey[300]!,
                //           highlightColor: Colors.grey[100]!,
                //           child: ListView(
                //             shrinkWrap: true,
                //             children: [
                //               Container(
                //                 margin: EdgeInsets.symmetric(
                //                   horizontal: 0.12,
                //                   vertical: .2,
                //                 ),
                //                 height: 0.065,
                //                 color: Colors.grey[300],
                //               ),
                //               const SizedBox(height: 10),
                //               Container(height: 0.05, color: Colors.grey[200]),
                //               for (int i = 0; i < 3; i++)
                //                 Container(
                //                   height: 0.05,
                //                   margin: const EdgeInsets.symmetric(
                //                     vertical: 4.0,
                //                   ),
                //                   color: Colors.grey[200],
                //                 ),
                //               Container(height: 0.05, color: Colors.grey[200]),
                //               for (int i = 0; i < 3; i++)
                //                 Container(
                //                   height: 0.05,
                //                   margin: const EdgeInsets.symmetric(
                //                     vertical: 4.0,
                //                   ),
                //                   color: Colors.grey[200],
                //                 ),
                //               Container(height: 0.05, color: Colors.grey[200]),
                //               Container(height: 0.05, color: Colors.grey[200]),
                //             ],
                //           ),
                //         ),
                //       );
                //     } else {
                //       return ListView(
                //         shrinkWrap: true,
                //         physics: const AlwaysScrollableScrollPhysics(),
                //         children: [
                //           Container(
                //             height:
                //                 50,
                //             color: Colors.black,
                //             child: titleAndValue(
                //               whilte: true,
                //               title: "Bill Type Details",
                //               bold: true,
                //               value: "Amount",
                //               label: 'count',
                //             ),
                //           ),
                //           ListView.builder(
                //             shrinkWrap: true,
                //             physics:
                //                 const NeverScrollableScrollPhysics(), // Prevent nested scrolling
                //             itemCount: state.daySummary?.length ?? 0,
                //             itemBuilder: (context, index) {
                //               final bill = state.daySummary![index];
                //               return titleAndValue(
                //                 label: bill.billTypeDetails,
                //                 title: '',
                //                 value: '',
                //               );
                //             },
                //           ),
                //         ],
                //       );

                //       // return ListView(
                //       //   shrinkWrap: true,
                //       //   physics: const AlwaysScrollableScrollPhysics(),
                //       //   children: [
                //       //   //  if (state.daySummary!.isNotEmpty) ...{
                //       //       Container(
                //       //         height: 0.05,
                //       //         color: Colors.black,
                //       //         child: titleAndValue(
                //       //           whilte: true,
                //       //           title: "Bill Type Details",
                //       //           bold: true,
                //       //           value: "Amount",
                //       //           label: 'count',
                //       //         ),
                //       //       ),
                //       //       ListView.builder(
                //       //         itemCount: state.daySummary?.length,

                //       //         itemBuilder: (context, index) {
                //       //           final data = state.daySummary?[index];
                //       //           return Column(
                //       //             crossAxisAlignment: CrossAxisAlignment.start,
                //       //             children: [
                //       //               ListView.builder(
                //       //                 physics:
                //       //                     const NeverScrollableScrollPhysics(),
                //       //                 itemCount: state.daySummary?.length,

                //       //                 shrinkWrap: true,

                //       //                 itemBuilder: (context, i) {
                //       //                   final bill = state.daySummary?[i];
                //       //                   return titleAndValue(
                //       //                     label: bill?.billTypeDetails,
                //       //                     title: '',
                //       //                     value: '',
                //       //                   );
                //     }
                //     ;
                //   },
                // ),




                // Container titleAndValue({
//   required title,
//   required label,
//   required value,
//   String? extra,
//   bool isExtraNeed = false,
//   bool bold = false,
//   bool whilte = false,
// }) {
//   return Container(
//     padding: EdgeInsets.symmetric(horizontal: 0.04),
//     child: Row(
//       children: [
//         Expanded(
//           child: Text(
//             title,
//             style: TextStyle(
//               color: whilte ? Colors.white : Colors.black,
//               fontWeight: bold ? FontWeight.w800 : FontWeight.normal,
//             ),
//           ),
//         ),
//         Expanded(
//           child: Text(
//             label,
//             style: TextStyle(
//               color: whilte ? Colors.white : Colors.black,
//               fontWeight: bold ? FontWeight.w800 : FontWeight.normal,
//             ),
//           ),
//         ),
//         if (isExtraNeed) ...{
//           Expanded(
//             child: Text(
//               extra ?? '',
//               style: TextStyle(
//                 color: whilte ? Colors.white : Colors.black,
//                 fontWeight: bold ? FontWeight.w800 : FontWeight.normal,
//               ),
//             ),
//           ),
//         },
//         Text(
//           value.toString(),
//           style: TextStyle(
//             color: whilte ? Colors.white : Colors.black,
//             fontWeight: bold ? FontWeight.w800 : FontWeight.normal,
//           ),
//         ),
//       ],
//     ),
//   );