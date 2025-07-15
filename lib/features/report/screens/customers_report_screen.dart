import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/features/report/screens/purchase_screen.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/buttons/custom_material_button.dart';
import 'package:admin_v2/shared/widgets/date_picker/date_picker_container.dart';
import 'package:admin_v2/shared/widgets/divider/divider_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:admin_v2/shared/widgets/tables/custom_table.dart';
import 'package:admin_v2/shared/widgets/text_fields/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomersReportScreen extends StatelessWidget {
  const CustomersReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Customers Report'),
      body: Column(
        children: [
          dividerWidget(height: 6.h),

          MainPadding(
            top: 0.h,
            child: Column(
              children: [
                commonStoreDropDown(
                  onChanged: (p0) {
                    context.read<DashboardCubit>().selectedStore(p0);
                  },
                ),

                12.verticalSpace,
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
                            hintText: '',
                            value: apiFormat.format(
                              state.toDate ?? DateTime.now(),
                            ),
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
                TextFeildWidget(
                  onChanged: (value) {
                    final storeId =
                        context
                            .read<DashboardCubit>()
                            .state
                            .selectedStore
                            ?.storeId ??
                        0;

                    context.read<ReportCubit>().loadSuppliersReport(
                      storeId: storeId,
                      query: value?.trim(),
                    );
                  },

                  borderColor: kBlack,
                  hight: 48.h,
                  fillColor: kWhite,
                  inputBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(color: Color(0XFFB7C6C2)),
                  ),
                  prefix: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset('assets/icons/Search.svg'),
                  ),
                  hintText: 'Search customers',
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset('assets/icons/x-close.svg'),
                  ),
                ),
                10.verticalSpace,
                BlocBuilder<DashboardCubit, DashboardState>(
                  builder: (context, state) {
                    return CustomMaterialBtton(
                      onPressed: () {
                        context.read<ReportCubit>().loadCustomersReport(
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
              child: BlocBuilder<DashboardCubit, DashboardState>(
                builder: (context, store) {
                  return BlocBuilder<ReportCubit, ReportState>(
                    builder: (context, state) {
                      return CommonTableWidget(
                        isLoading:
                            state.isCustomersReport == ApiFetchStatus.loading,
                        headers: [
                          "#",
                          "Customer",
                          "E-Mail",
                          "Mobile",
                          // "Reg.Date",
                          // "Order Count",
                          "Purchase(AED)",
                          "Balance",
                          // "Action",
                        ],

                        columnFlex: [1, 3, 3, 4, 3, 2],
                        data:
                            state.customersReport?.map((e) {
                              int index =
                                  state.customersReport?.indexOf(e) ?? 0;
                              return {
                                '#': index + 1,
                                'Customer': e.custName ?? '',
                                'E-Mail': e.custEmail ?? '',
                                'Mobile': e.custMobile ?? '',
                                // 'Reg.Date': e.createdDate?.toString() ?? '',
                                // 'Order Count': e.orderCount.toString(),
                                'Purchase(AED)': e.totalPurchaseAmount
                                    .toString(),
                                'Balance': e.balanceAmt.toString(),
                                // 'Action':
                                //     'Action', // Placeholder for action button
                              };
                            }).toList() ??
                            [],
                      );

                      //);
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
