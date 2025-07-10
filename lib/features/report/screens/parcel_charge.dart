import 'package:admin_v2/features/common/cubit/common_cubit.dart';
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
              //spacing: 14.h,
              children: [
                _buildStoreDropdown(),
                _buildOrderOptionDropDown(),
                _handleDate(),
                8.verticalSpace,
                _viewResult(),
                _commonTable(),
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

  Widget _buildOrderOptionDropDown() {
    return BlocBuilder<CommonCubit, CommonState>(
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

          onChanged: (selectedOption) {
            final select = state.optionList?.firstWhere(
              (e) => e.orderOptionId == selectedOption,
            );
            if (select != null &&
                select.orderOptionId != state.selectedOption?.orderOptionId) {
              context.read<CommonCubit>().selectedOption(select);
            }
          },
          labelText: 'order option',
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
        );
      },
    );
  }

  Widget _viewResult() {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, commonState) {
        return BlocBuilder<ReportCubit, ReportState>(
          builder: (context, reportState) {
            return CustomMaterialBtton(
              onPressed: () {
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
    return BlocBuilder<ReportCubit, ReportState>(
      builder: (context, state) {
        return SizedBox(
          height: 490,
          child: CommonTableWidget(
            isLoading: state.isParcelCharge == ApiFetchStatus.loading,
            headers: ["#", "ORDER", "ORDER DATE", "PARCEL CHARGE"],
            columnFlex: [1, 2, 2, 2],
            data:
                state.parcelChargeList?.map((e) {
                  int index = state.parcelChargeList?.indexOf(e) ?? 0;
                  return {
                    "#": index + 1,
                    "ORDER": e.billNo ?? '',
                    "ORDER DATE": e.orderDate ?? '',
                    "PARCEL CHARGE": e.parcelCharge ?? '',
                  };
                }).toList() ??
                [],
          ),
        );
      },
    );
  }
}
