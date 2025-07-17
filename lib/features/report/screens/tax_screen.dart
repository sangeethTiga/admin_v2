import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/features/report/screens/purchase_screen.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/buttons/custom_material_button.dart';
import 'package:admin_v2/shared/widgets/date_picker/date_picker_container.dart';
import 'package:admin_v2/shared/widgets/divider/divider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TaxScreen extends StatelessWidget {
  const TaxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Tax'),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            dividerWidget(height: 6.h),
            70.verticalSpace,
            _taxResponse(),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: commonStoreDropDown(
                onChanged: (p0) {
                  context.read<DashboardCubit>().selectedStore(p0);
                },
              ),
            ),
            8.verticalSpace,
            _handleDate(),
            16.verticalSpace,
            _submit(),
            20.verticalSpace,
          ],
        ),
      ),
    );
  }

  Widget _taxResponse() {
    return BlocBuilder<ReportCubit, ReportState>(
      builder: (context, state) {
        final taxResponse = state.taxReport;

        // if (taxResponse != null) {
        //   return
        return Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Total tax collected',
                style: FontPalette.hW600S13,
                textAlign: TextAlign.center,
              ),
              3.verticalSpace,
              Text(
                ' ${(taxResponse?.totalTaxCollected ?? 0.00).toStringAsFixed(2)}',
                textAlign: TextAlign.center,
                style: FontPalette.hW800S40,
              ),
              28.verticalSpace,
              Text(
                'Total tax paid',
                style: FontPalette.hW600S13,
                textAlign: TextAlign.center,
              ),
              3.verticalSpace,
              Text(
                '${(taxResponse?.totalTaxPaid ?? 0.00).toStringAsFixed(2)}',
                textAlign: TextAlign.center,
                style: FontPalette.hW800S40,
              ),
              28.verticalSpace,
              Text(
                'Net payable',
                style: FontPalette.hW600S13,
                textAlign: TextAlign.center,
              ),
              3.verticalSpace,
              Text(
                ' ${(taxResponse?.netPayable ?? 0.00).toStringAsFixed(2)}',
                textAlign: TextAlign.center,
                style: FontPalette.hW800S40,
              ),
            ],
          ),
        );
      },

      // return BlocBuilder<ReportCubit, ReportState>(
      //   builder: (context, state) {
      //     return Column(
      //       children: [
      //         Text(
      //           'Total tax collected',
      //           style: FontPalette.hW600S13,
      //           textAlign: TextAlign.center,
      //         ),

      //         3.verticalSpace,
      //         Text(
      //           ' ${(taxResponse?.totalTaxCollected ?? 0.00).toStringAsFixed(2)}',
      //           textAlign: TextAlign.center,
      //           style: FontPalette.hW800S40,
      //         ),
      //         28.verticalSpace,
      //         Text(
      //           'Total tax paid',
      //           style: FontPalette.hW600S13,
      //           textAlign: TextAlign.center,
      //         ),
      //         3.verticalSpace,
      //         Text(
      //           (taxResponse?.totalTaxPaid ?? 0.00).toStringAsFixed(2),
      //           textAlign: TextAlign.center,
      //           style: FontPalette.hW800S40,
      //         ),
      //         28.verticalSpace,
      //         Text(
      //           'Net payable',
      //           style: FontPalette.hW600S13,
      //           textAlign: TextAlign.center,
      //         ),
      //         3.verticalSpace,
      //         Text(
      //           (taxResponse?.netPayable ?? 0.00).toStringAsFixed(2),
      //           textAlign: TextAlign.center,
      //           style: FontPalette.hW800S40,
      //         ),
    );
  }

  Widget _handleDate() {
    return BlocBuilder<ReportCubit, ReportState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
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
          ),
        );
      },
    );
  }

  Widget _submit() {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: CustomMaterialBtton(
            height: 56,
            onPressed: () {
              context.read<ReportCubit>().loadTaxReport(
                storeId: state.selectedStore?.storeId,
              );
            },
            buttonText: 'Submit',
          ),
        );
      },
    );
  }
}
