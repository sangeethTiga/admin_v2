import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/buttons/custom_material_button.dart';
import 'package:admin_v2/shared/widgets/divider/divider_widget.dart';
import 'package:admin_v2/shared/widgets/dropdown_field_widget/dropdown_field_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:admin_v2/shared/widgets/tables/custom_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ChequetransScreen extends StatelessWidget {
  const ChequetransScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'ChequeTransaction'),
      body: Column(
        children: [
          dividerWidget(height: 6.h),
          Expanded(
            child: MainPadding(
              child: Column(
                spacing: 14.h,
                children: [
                  _buildStoreDropdown(),
                  _buildStatusOption(),
                  _buildViewReport(),
                  _buildCommonTable(),
                ],
              ),
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

  Widget _buildStatusOption() {
    return BlocBuilder<ReportCubit, ReportState>(
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
          value: state.selectedStatus?.chequeStatusId,

          items:
              state.chequeStatus?.map((e) {
                return DropdownMenuItem<int>(
                  value: e.chequeStatusId,
                  child: Text(e.chequeStatusName ?? ''),
                );
              }).toList() ??
              [],

          onChanged: (selectStatus) {
            final select = state.chequeStatus?.firstWhere(
              (e) => e.chequeStatusId == selectStatus,
            );
            if (select != null &&
                select.chequeStatusId != state.selectedStatus?.chequeStatusId) {
              context.read<ReportCubit>().selectedStatus(select);
            }
          },
          labelText: 'status',
        );
      },
    );
  }

  Widget _buildViewReport() {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, commonState) {
        return BlocBuilder<ReportCubit, ReportState>(
          builder: (context, reportState) {
            return CustomMaterialBtton(
              isLoading: reportState.isChequeReport == ApiFetchStatus.loading,
              onPressed: () {
                final selectedStatusId =
                    reportState.selectedStatus?.chequeStatusId;

                context.read<ReportCubit>().loadChequeTrans(
                  storeId: commonState.selectedStore?.storeId,
                  status: selectedStatusId?.toString(),
                );
              },
              buttonText: 'View Report',
            );
          },
        );
      },
    );
  }

  Widget _buildCommonTable() {
    return Expanded(
      child: BlocBuilder<ReportCubit, ReportState>(
        builder: (context, state) {
          return CommonTableWidget(
            isLoading: state.isChequeReport == ApiFetchStatus.loading,
            headers: [
              // "#",
              "CHEQUE NUMBER",
              "BANK NAME",
              "CHEQUE ISSUE DATE",
              //"CHEQUE DATE",
              "STATUS",
              "AMOUNT",
            ],
            columnFlex: [4, 3, 5, 4, 4],
            data:
                state.chequeTransReport?.map((e) {
                  int index = state.chequeTransReport?.indexOf(e) ?? 0;
                  return {
                    // "#": index + 1,
                    "CHEQUE NUMBER": e.chequeNumber ?? '',
                    "BANK NAME": e.bankName ?? '',
                    "CHEQUE ISSUE DATE": e.chequeIssueDate ?? '',
                    // "CHEQUE DATE": e.chequeDate ?? '',
                    "STATUS": e.statusName ?? '',
                    "AMOUNT": e.amount ?? '',
                  };
                }).toList() ??
                [],
          );
        },
      ),
    );
  }
}
