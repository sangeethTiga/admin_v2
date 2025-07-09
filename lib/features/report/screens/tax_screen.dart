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
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
            _buildStoreDropdown(),
            16.verticalSpace,
            _handleDate(),
            24.verticalSpace,
            _submit(),
            12.verticalSpace,
          ],
        ),
      ),
    );
  }

  Widget _taxResponse() {
    return BlocBuilder<ReportCubit, ReportState>(
      builder: (context, state) {
        final taxResponse = state.taxReport;

        if (taxResponse != null) {
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
                  ' ${(taxResponse.totalTaxCollected ?? 0.0).toStringAsFixed(2)}',
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
                  '${taxResponse.totalTaxPaid?.toStringAsFixed(2) ?? 0.00}',
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
                  ' ${taxResponse.netPayable?.toStringAsFixed(2) ?? 0.00}',
                  textAlign: TextAlign.center,
                  style: FontPalette.hW800S40,
                ),
              ],
            ),
          );
        }
        return BlocBuilder<ReportCubit, ReportState>(
          builder: (context, state) {
            return Column(
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
                  (taxResponse?.totalTaxPaid ?? 0.00).toStringAsFixed(2),
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
                  (taxResponse?.netPayable ?? 0.00).toStringAsFixed(2),
                  textAlign: TextAlign.center,
                  style: FontPalette.hW800S40,
                ),
              ],
            );
          },
        );
      },
    );
  }

  Widget _buildStoreDropdown() {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: DropDownFieldWidget(
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

            onChanged: (p0) {
              context.read<DashboardCubit>().selectedStore(p0);
            },
            labelText: '',
            textStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 16,
              letterSpacing: 0.5,
            ),
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
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            children: [
              Expanded(
                child: DatePickerContainer(
                  hintText: '',
                  firstDate: state.fromDate,
                  changeDate: (DateTime pickDate) {
                    context.read<ReportCubit>().changeFromDate(pickDate);
                  },
                ),
              ),
              12.horizontalSpace,
              Expanded(
                child: DatePickerContainer(
                  hintText: '',
                  firstDate: state.toDate,
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
