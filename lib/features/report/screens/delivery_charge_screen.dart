import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
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
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
              spacing: 14.h,
              children: [
                _buildStoreDropdown(),
                _handleDate(),
                _viewResults(),
                _buildCommonTable(),
                //       BlocBuilder<DashboardCubit, DashboardState>(
                //         builder: (context, state) {
                //           return DropDownFieldWidget(
                //             isLoading: state.apiFetchStatus == ApiFetchStatus.loading,
                //             prefixIcon: Container(
                //               margin: EdgeInsets.only(left: 12.w),
                //               child: SvgPicture.asset(
                //                 'assets/icons/package-box-pin-location.svg',
                //                 width: 20.w,
                //                 height: 20.h,
                //                 fit: BoxFit.contain,
                //               ),
                //             ),
                //             borderColor: kBlack,
                //             value: state.selectedStore,
                //             items:
                //                 state.storeList?.map((e) {
                //                   return DropdownMenuItem<StoreResponse>(
                //                     value: e,
                //                     child: Text(e.storeName ?? ''),
                //                   );
                //                 }).toList() ??
                //                 [],
                //             fillColor: const Color(0XFFEFF1F1),

                //             onChanged: (p0) {
                //               context.read<DashboardCubit>().selectedStore(p0);
                //             },
                //             labelText: '',
                //           );
                //         },
                //       ),

                //       BlocBuilder<ReportCubit, ReportState>(
                //         builder: (context, state) {
                //           return Row(
                //             children: [
                //               Expanded(
                //                 child: DatePickerContainer(
                //                   hintText: '',
                //                   firstDate: state.fromDate ?? DateTime.now(),
                //                   changeDate: (DateTime pickDate) {
                //                     context.read<ReportCubit>().changeFromDate(
                //                       pickDate,
                //                     );
                //                   },
                //                 ),
                //               ),
                //               12.horizontalSpace,
                //               Expanded(
                //                 child: DatePickerContainer(
                //                   hintText: '',
                //                   firstDate: state.toDate,
                //                   changeDate: (DateTime pickDate) {
                //                     context.read<ReportCubit>().changeToDate(
                //                       pickDate,
                //                     );
                //                   },
                //                 ),
                //               ),
                //             ],
                //           );
                //         },
                //       ),

                //       BlocBuilder<DashboardCubit, DashboardState>(
                //         builder: (context, state) {
                //           return CustomMaterialBtton(
                //             onPressed: () {
                //               context.read<ReportCubit>().loadDeliveryChargeReport(
                //                 storeId: state.selectedStore?.storeId,
                //               );
                //             },
                //             buttonText: 'View Results',
                //           );
                //         },
                //       ),
                //     ],
                //   ),
                // ),

                // BlocBuilder<ReportCubit, ReportState>(
                //   builder: (context, state) {
                //     return Expanded(
                //       child: CommonTableWidget(
                //         isLoading:
                //             state.isDeliverychargeReport == ApiFetchStatus.loading,
                //         headers: [
                //           "#",
                //           "BILL NO",
                //           "ORDER DATE",
                //           "COUNT",
                //           "SHIPPING CHARGE",
                //         ],
                //         columnFlex: [1, 2, 2, 1, 1],
                //         data:
                //             state.deliverychargeReport?.map((e) {
                //               int index = state.deliverychargeReport?.indexOf(e) ?? 0;
                //               return {
                //                 "#": index + 1,
                //                 "BILL NO": e.billNo ?? '',
                //                 "ORDER DATE": e.orderDate ?? '',
                //                 "COUNT": e.rawCount ?? '',
                //                 "SHIPPING CHARGE": e.shippingCharge ?? '',
                //               };
                //             }).toList() ??
                //             [],
                //       ),
                //     );
                //   },
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStoreDropdown() {
    return BlocBuilder<DashboardCubit, DashboardState>(
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
          onChanged: (store) => _handleStoreChange(context, store),
          labelText: '',
          textStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 16,
            letterSpacing: 0.5,
          ),
        );
      },
    );
  }

  void _handleStoreChange(BuildContext context, StoreResponse? store) {
    // final reportCubit = context.read<ReportCubit>();
    final dashboardCubit = context.read<DashboardCubit>();
    dashboardCubit.selectedStore(store ?? StoreResponse());
  }

  Widget _handleDate() {
    return BlocBuilder<ReportCubit, ReportState>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: DatePickerContainer(
                hintText: '',
                value: apiFormat.format(state.fromDate ?? DateTime.now()),
                changeDate: (DateTime pickDate) {
                  context.read<ReportCubit>().changeFromDate(pickDate);
                },
              ),
            ),
            12.horizontalSpace,
            Expanded(
              child: DatePickerContainer(
                hintText: '',
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
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return CustomMaterialBtton(
          onPressed: () {
            context.read<ReportCubit>().loadDeliveryChargeReport(
              storeId: state.selectedStore?.storeId,
            );
          },
          buttonText: 'View Results',
        );
      },
    );
  }

  Widget _buildCommonTable() {
    return BlocBuilder<ReportCubit, ReportState>(
      builder: (context, state) {
        return SizedBox(
          height: 540,
          child: CommonTableWidget(
            isLoading: state.isDeliverychargeReport == ApiFetchStatus.loading,
            headers: ["#", "BILL NO", "ORDER DATE", "COUNT", "SHIPPING CHARGE"],
            columnFlex: [0, 3, 3, 2, 2],
            data:
                state.deliverychargeReport?.map((e) {
                  int index = state.deliverychargeReport?.indexOf(e) ?? 0;
                  return {
                    "#": index + 1,
                    "BILL NO": e.billNo ?? '',
                    "ORDER DATE": e.orderDate ?? '',
                    "COUNT": e.rawCount ?? '',
                    "SHIPPING CHARGE": e.shippingCharge ?? '',
                  };
                }).toList() ??
                [],
          ),
        );
      },
    );
  }
}
