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

class DeliveryChargeScreen extends StatelessWidget {
  const DeliveryChargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Delivery Charge'),
<<<<<<< HEAD
      body: SingleChildScrollView(
        child: Column(
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
                  _buildCommonTable(),
                ],
              ),
=======
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
              ],
>>>>>>> 7347236e7c70b67bfa630a0440246eb90def4577
            ),
          ],
        ),
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
            columnFlex: [0, 3, 3, 2, 3],
            data:
                state.deliverychargeReport?.map((e) {
                  int index = state.deliverychargeReport?.indexOf(e) ?? 0;
                  return {
                    "#": index + 1,
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
        );
      },
    );
  }
}
