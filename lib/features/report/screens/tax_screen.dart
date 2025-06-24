import 'package:admin_v2/features/common/cubit/common_cubit.dart';
import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';

import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/buttons/custom_material_button.dart';
import 'package:admin_v2/shared/widgets/date_picker/date_picker_container.dart';
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
            12.verticalSpace,
            BlocBuilder<ReportCubit, ReportState>(
              builder: (context, state) {
                final taxResponse = state.taxReport;

                if (taxResponse != null) {
                  return Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Total Tax Collected',
                          style: FontPalette.hW600S13,
                          textAlign: TextAlign.center,
                        ),
                        11.verticalSpace,
                        Text(
                          '${taxResponse.totalTaxCollected?.toStringAsFixed(2) ?? 0.00}',
                          textAlign: TextAlign.center,
                          style: FontPalette.hW800S40,
                        ),
                        8.verticalSpace,
                        Text(
                          'Total Tax Paid',
                          style: FontPalette.hW600S13,
                          textAlign: TextAlign.center,
                        ),
                        11.verticalSpace,
                        Text(
                          '${taxResponse.totalTaxPaid?.toStringAsFixed(2) ?? 0}',
                          textAlign: TextAlign.center,
                          style: FontPalette.hW800S40,
                        ),
                        8.verticalSpace,
                        Text(
                          'Net Payable',
                          style: FontPalette.hW600S13,
                          textAlign: TextAlign.center,
                        ),
                        11.verticalSpace,
                        Text(
                          ' ${taxResponse.netPayable?.toStringAsFixed(2) ?? 0.00}',
                          textAlign: TextAlign.center,
                          style: FontPalette.hW800S40,
                        ),
                      ],
                    ),
                  );
                }
                return const Text(
                  'No Tax Data Available',
                  textAlign: TextAlign.center,
                );
              },
            ),
            Spacer(),
            BlocBuilder<CommonCubit, CommonState>(
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.all(12.0),
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
                      context.read<CommonCubit>().selectedStore(p0);
                    },
                    labelText: '',
                  ),
                );
              },
            ),
        

            BlocBuilder<ReportCubit, ReportState>(
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: DatePickerContainer(
                          hintText: '',
                          firstDate: state.fromDate ?? DateTime.now(),
                          changeDate: (DateTime pickDate) {
                            context.read<ReportCubit>().changeFromDate(
                              pickDate,
                            );
                          },
                        ),
                      ),
                      12.horizontalSpace,
                      Expanded(
                        child: DatePickerContainer(
                          hintText: '',
                          firstDate: state.fromDate ?? DateTime.now(),
                          changeDate: (DateTime pickDate) {
                            context.read<ReportCubit>().changeToDate(pickDate);
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            8.verticalSpace,
            BlocBuilder<CommonCubit, CommonState>(
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.all(12.0),
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
            ),
          ],
        ),
      ),
    );
  }
}
