import 'package:admin_v2/features/common/cubit/common_cubit.dart';
import 'package:admin_v2/features/common/domain/models/account/account_response.dart';
import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
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

class ExpenseReportScreen extends StatelessWidget {
  const ExpenseReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Expense Report'),
      body: Column(
        children: [
          dividerWidget(height: 6.h),

          MainPadding(
            child: Column(
              children: [
                BlocBuilder<CommonCubit, CommonState>(
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
                        context.read<CommonCubit>().selectedStore(p0);
                      },
                      labelText: '',
                    );
                  },
                ),
                BlocBuilder<CommonCubit, CommonState>(
                  builder: (context, state) {
                    return DropDownFieldWidget(
                      isLoading: state.apiFetchStatus == ApiFetchStatus.loading,

                      borderColor: kBlack,
                      value: state.selectedAccount,
                      items:
                          state.accountList?.map((e) {
                            return DropdownMenuItem<AccountDataResponse>(
                              value: e,
                              child: Text(e.accountHeadName ?? ''),
                            );
                          }).toList() ??
                          [],
                      fillColor: const Color(0XFFEFF1F1),
                      // suffixWidget: SvgPicture.asset(
                      //   'assets/icons/Arrow - Right.svg',
                      // ),
                      onChanged: (p0) {
                        context.read<CommonCubit>().selectedAccount(p0);
                      },
                      labelText: '',
                    );
                  },
                ),
                12.verticalSpace,
                BlocBuilder<ReportCubit, ReportState>(
                  builder: (context, state) {
                    return Row(
                      children: [
                        Expanded(
                          child: DatePickerContainer(
                            firstDate: state.fromDate ?? DateTime.now(),
                            hintText: '',
                            changeDate: (DateTime pickedDate) {
                              context.read<ReportCubit>().changeFromDate(
                                pickedDate,
                              );
                            },
                          ),
                        ),
                        12.horizontalSpace,
                        Expanded(
                          child: DatePickerContainer(
                            firstDate: state.fromDate ?? DateTime.now(),

                            hintText: '',
                            changeDate: (DateTime pickedDate) {
                              context.read<ReportCubit>().changeToDate(
                                pickedDate,
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  },
                ),
                10.verticalSpace,
                BlocBuilder<CommonCubit, CommonState>(
                  builder: (context, state) {
                    return CustomMaterialBtton(
                      onPressed: () {
                        context.read<ReportCubit>().loadExpenseReport(
                          storeId: state.selectedStore?.storeId,
                          accountId: state.selectedAccount?.accountHeadId ?? 0,
                        );
                      },
                      buttonText: 'View Report',
                    );
                  },
                ),
                10.verticalSpace,
              ],
            ),
          ),
          Expanded(
            child: MainPadding(
              child: BlocBuilder<CommonCubit, CommonState>(
                builder: (context, store) {
                  return BlocBuilder<ReportCubit, ReportState>(
                    builder: (context, state) {
                      return NotificationListener<ScrollNotification>(
                        onNotification: (ScrollNotification scrollInfo) {
                          if (scrollInfo.metrics.pixels >=
                                  scrollInfo.metrics.maxScrollExtent - 50 &&
                              state.isSaleReport != ApiFetchStatus.loading) {
                            context.read<ReportCubit>().loadReveneueReport(
                              page: state.currentPage + 1,
                              limit: state.pageSize,
                              isLoadMore: true,
                              storeId: store.selectedStore?.storeId,
                            );
                          }
                          return false;
                        },
                        child: CommonTableWidget(
                          isLoading:
                              state.isSaleReport == ApiFetchStatus.loading,
                          headers: [
                            "#",
                            "INVOICE NO",
                            "TRAN DATE",
                            "DESCRIPTION",
                            "ACCOUNT",
                            "AMOUNT",
                          ],
                          columnFlex: [1, 3, 5, 3, 3, 3],
                          data:
                              state.expenseReport?.map((e) {
                                int index =
                                    state.expenseReport?.indexOf(e) ?? 0;
                                return {
                                  '#': index + 1,
                                  'INVOICE NO': e.invoiceNumber ?? '',
                                  'TRAN DATE': e.acTransactionDate ?? '',
                                  'DESCRIPTION': e.description ?? '',
                                  "ACCOUNT": e.accountName ?? '',
                                  'AMOUNT': e.amount ?? '',
                                };
                              }).toList() ??
                              [],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
