import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/features/report/screens/purchase_screen.dart';
import 'package:admin_v2/features/report/widgets/sales_report_filter.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/buttons/custom_material_button.dart';
import 'package:admin_v2/shared/widgets/common_widgets/common_show_dialogue/common_show_dialogue.dart';
import 'package:admin_v2/shared/widgets/date_picker/date_picker_container.dart';
import 'package:admin_v2/shared/widgets/divider/divider_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:admin_v2/shared/widgets/tables/custom_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SalesReportScreen extends StatelessWidget {
  const SalesReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Sales Report'),
      body: Column(
        children: [
          dividerWidget(height: 6.h),

          MainPadding(
            child: Column(
              children: [
                BlocBuilder<DashboardCubit, DashboardState>(
                  builder: (context, state) {
                    return Row(
                      children: [
                        Expanded(
                          child: commonStoreDropDown(
                            onChanged: (p0) {
                              context.read<DashboardCubit>().selectedStore(p0);
                            },
                          ),
                        ),

                        IconButton(
                          onPressed: () {
                            context.read<DashboardCubit>().clearData();

                            commonnShowBottomSheet(
                              context: context,
                              child: SalesReportFilter(),
                            );
                            context.read<DashboardCubit>().getDeliveryAgent();
                            context.read<DashboardCubit>().getPaymethod();
                            context.read<DashboardCubit>().getWaiters();
                            context.read<DashboardCubit>().getKiosk();
                            context.read<DashboardCubit>().getCashier();
                          },
                          icon: Icon(Icons.tune_outlined),
                        ),
                      ],
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
                                   labelText: 'From Date',
                                 
                                  changeDate: (DateTime pickedDate) {
                                    context
                                        .read<ReportCubit>()
                                        .changeFromDate(pickedDate);
                                  },
                                ),
                              ),
                              12.horizontalSpace,
                              Expanded(
                                child: DatePickerContainer(
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
                    return Column(
                      children: [
                        CustomMaterialBtton(
                          onPressed: () {
                            
                           final reportCubit=context.read<ReportCubit>().state;

                            context.read<ReportCubit>().loadSalesReport(
                              selectedStoreId: state.selectedStore?.storeId,
                              fromDate: reportCubit.fromDate.toString(),
                              toDate: reportCubit.toDate.toString(),
                              selectedDuration: 5,
                              selectedPaymentMethodId: '',
                              selectedCashierId: '',
                              selectedDeliveryAgentId: '',
                              selectedGroupBy: '',
                              selectedKIOSK: '',
                              selectedShiftId: '',
                              selectedWaiterId: '',
                            );
                          },
                          buttonText: 'View Report',
                        ),
                      ],
                    );
                  },
                ),
                10.verticalSpace,
              ],
            ),
          ),

          Expanded(
            child: MainPadding(
              child: BlocBuilder<ReportCubit, ReportState>(
                builder: (context, state) {
                  return CommonTableWidget(
                    isLoading: state.isSaleReport == ApiFetchStatus.loading,
                    headers: [
                      "#",
                      "MONTH",
                      "TOTAL ORDERS",
                      "TOTAL SALES",
                      "TAX PAYABLE",
                    ],
                    columnFlex: [1, 3, 4, 3, 3],
                    data:
                        state.salesReport?.map((e) {
                          int index = state.salesReport?.indexOf(e) ?? 0;
                          return {
                            '#': index + 1,
                            'MONTH': e.itemHeading ?? '',
                            'TOTAL ORDERS': e.totalOrders ?? '',
                            'TOTAL SALES':
                                e.totalSales?.toStringAsFixed(2) ?? '',
                            'TAX PAYABLE':
                                e.taxPayable?.toStringAsFixed(2) ?? '',
                          };
                        }).toList() ??
                        [],
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
