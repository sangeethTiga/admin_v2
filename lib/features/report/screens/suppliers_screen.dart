import 'package:admin_v2/features/common/cubit/common_cubit.dart';
import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/buttons/custom_material_button.dart';
import 'package:admin_v2/shared/widgets/dropdown_field_widget/dropdown_field_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:admin_v2/shared/widgets/tables/custom_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SuppliersReportScreen extends StatelessWidget {
  const SuppliersReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Supplier'),

      body: Column(
        children: [
          MainPadding(
            child: Column(
              children: [
                BlocBuilder<DashboardCubit, DashboardState>(
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
                      suffixWidget: SvgPicture.asset(
                        'assets/icons/Arrow - Right.svg',
                      ),
                      onChanged: (p0) {
                        context.read<DashboardCubit>().selectedStore(p0);
                      },
                      labelText: '',
                    );
                  },
                ),

                
                10.verticalSpace,

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
                    columnFlex: [1, 2, 2, 2, 1],

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
