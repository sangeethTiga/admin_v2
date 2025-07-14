import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/features/report/screens/purchase_screen.dart';
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
            bottom: 0,
            child: Column(
              children: [
                commonStoreDropDown(
                  onChanged: (p0) {
                    context.read<DashboardCubit>().selectedStore(p0);
                  },
                ),

                BlocBuilder<DashboardCubit, DashboardState>(
                  builder: (context, state) {
                    return DropDownFieldWidget(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 17.h,
                      ),
                      isLoading: state.apiFetchStatus == ApiFetchStatus.loading,

                      borderColor: kBlack,
                      value: state.selectedAccount?.accountHeadId,
                      items:
                          state.accountList?.map((e) {
                            return DropdownMenuItem<int>(
                              value: e.accountHeadId,
                              child: Text(e.accountHeadName ?? ''),
                            );
                          }).toList() ??
                          [],
                      fillColor: const Color(0XFFEFF1F1),

                      onChanged: (selectedAccount) {
                        final select = state.accountList?.firstWhere(
                          (e) => e.accountHeadId == selectedAccount,
                        );
                        if (select != null &&
                            select.accountHeadId !=
                                state.selectedAccount?.accountHeadId) {
                          context.read<DashboardCubit>().selectedAccount(
                            select,
                          );
                        }
                      },
                      labelText: '',
                    );
                  },
                ),
                10.verticalSpace,
                BlocBuilder<ReportCubit, ReportState>(
                  builder: (context, state) {
                    return Row(
                      children: [
                        Expanded(
                          child: DatePickerContainer(
                            value: apiFormat.format(
                              state.fromDate ?? DateTime.now(),
                            ),
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
                            value: apiFormat.format(
                              state.fromDate ?? DateTime.now(),
                            ),
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
                BlocBuilder<DashboardCubit, DashboardState>(
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
              ],
            ),
          ),
          Expanded(
            child: MainPadding(
              child: BlocBuilder<DashboardCubit, DashboardState>(
                builder: (context, store) {
                  return BlocBuilder<ReportCubit, ReportState>(
                    builder: (context, state) {
                      return CommonTableWidget(
                        isLoading: state.isSaleReport == ApiFetchStatus.loading,
                        headers: [
                          "#",
                          "INV. NO",
                          "TRS DATE",
                          "DESC",
                          "ACC. NAME",
                          "AMOUNT",
                        ],
                        columnFlex: [1, 3, 5, 5, 4, 3],
                        data:
                            state.expenseReport?.map((e) {
                              int index = state.expenseReport?.indexOf(e) ?? 0;
                              return {
                                '#': index + 1,
                                'INV. NO': e.invoiceNumber ?? '',
                                'TRS DATE': formatDateString(
                                  e.acTransactionDate ?? '',
                                ),
                                'DESC': e.description ?? '',
                                "ACC. NAME": e.accountName ?? '',
                                'AMOUNT': e.amount ?? '',
                              };
                            }).toList() ??
                            [],
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

String formatDateString(String? dateString) {
  if (dateString == null || dateString.isEmpty) return '';

  List<String> parts = dateString.split(' ');
  if (parts.isNotEmpty) {
    return parts[0];
  }
  return dateString;
}
