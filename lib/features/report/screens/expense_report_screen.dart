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
                            labelText: 'From Date',
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
                            labelText: 'To Date',
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
                      return Column(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  child: NotificationListener<ScrollNotification>(
                                    onNotification:
                                        (ScrollNotification scrollInfo) {
                                          final maxScroll = scrollInfo
                                              .metrics
                                              .maxScrollExtent;
                                          final currentScroll =
                                              scrollInfo.metrics.pixels;
                                          final threshold = maxScroll - 100;

                                          final atBottom =
                                              currentScroll >= threshold;

                                          if (scrollInfo
                                                  is ScrollEndNotification &&
                                              atBottom) {
                                            _loadMoreData(context);
                                            final reportState = context
                                                .read<ReportCubit>()
                                                .state;
                                            if (reportState.hasMoreData ==
                                                    false &&
                                                reportState
                                                        .expenseReport
                                                        ?.isNotEmpty ==
                                                    true) {
                                              _showNoMoreDataOverlay(context);
                                            }
                                          }

                                          return false;
                                        },

                                    child: CommonTableWidget(
                                      isLoading:
                                          state.isSaleReport ==
                                          ApiFetchStatus.loading,
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
                                          state.expenseReport
                                              ?.asMap()
                                              .entries
                                              .map((entry) {
                                                int localIndex = entry.key;
                                                var e = entry.value;
                                                int globalIndex =
                                                    localIndex + 1;

                                                return {
                                                  '#': globalIndex,
                                                  'INV. NO':
                                                      e.invoiceNumber ?? '',
                                                  'TRS DATE': formatDateString(
                                                    e.acTransactionDate ?? '',
                                                  ),
                                                  'DESC': e.description ?? '',
                                                  "ACC. NAME":
                                                      e.accountHeadName ?? '',
                                                  'AMOUNT': e.amount ?? '',
                                                };
                                              })
                                              .toList() ??
                                          [],
                                    ),
                                  ),
                                ),
                                if (state.isLoadingMore == true)
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 16.h,
                                    ),
                                    child: CircularProgressIndicator(),
                                  ),
                              ],
                            ),
                          ),
                        ],
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

void _loadMoreData(BuildContext context) {
  final reportState = context.read<ReportCubit>().state;
  final dashboardState = context.read<DashboardCubit>().state;

  print('_loadMoreData called');
  print('hasMoreData: ${reportState.hasMoreData}');
  print('isLoadingMore: ${reportState.isLoadingMore}');
  print('currentPage: ${reportState.currentPage}');
  print('total records: ${reportState.customersReport?.length}');

  if (reportState.hasMoreData == true && reportState.isLoadingMore != true) {
    context.read<ReportCubit>().loadExpenseReport(
      storeId: dashboardState.selectedStore?.storeId,
      accountId: dashboardState.selectedAccount?.accountHeadId ?? 0,
      isLoadMore: true,
    );
  }
}

OverlayEntry? _overlayEntry;

void _showNoMoreDataOverlay(BuildContext context) {
  if (_overlayEntry != null) return;

  _overlayEntry = OverlayEntry(
    builder: (context) => Positioned(
      bottom: 18,
      left: 0,
      right: 0,
      child: Center(
        child: const Text(
          'No more data',
          style: TextStyle(fontSize: 14, color: Colors.black),
        ),
      ),
    ),
  );

  Overlay.of(context).insert(_overlayEntry!);

  Future.delayed(const Duration(seconds: 1), () {
    _overlayEntry?.remove();
    _overlayEntry = null;
  });
}
