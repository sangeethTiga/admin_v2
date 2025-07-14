import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/features/report/screens/purchase_screen.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/buttons/custom_material_button.dart';
import 'package:admin_v2/shared/widgets/divider/divider_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:admin_v2/shared/widgets/tables/custom_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuppliersReportScreen extends StatelessWidget {
  const SuppliersReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Supplier'),

      body: Column(
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

                BlocBuilder<DashboardCubit, DashboardState>(
                  builder: (context, state) {
                    return CustomMaterialBtton(
                      onPressed: () {
                        context.read<ReportCubit>().loadSuppliersReport(
                          storeId: state.selectedStore?.storeId,
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
              child: BlocBuilder<ReportCubit, ReportState>(
                builder: (context, state) {
                  // print('????supliername???:${state.suppliersReport}');
                  return CommonTableWidget(
                    isLoading: state.isSupplierReport == ApiFetchStatus.loading,

                    headers: ["#", "Name", "Phone", "Email", "Balance"],
                    columnFlex: [1, 2, 3, 3, 3],

                    data:
                        state.suppliersReport?.map((e) {
                          int index = state.suppliersReport?.indexOf(e) ?? 0;
                          return {
                            '#': index + 1,
                            "Name": e.supplierName ?? '',
                            "Phone": e.phone,
                            "Email": e.email ?? '',
                            "Balance": e.balanceAmt ?? '',
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
