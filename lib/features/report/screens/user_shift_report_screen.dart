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

class UserShiftReportScreen extends StatelessWidget {
  const UserShiftReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'User Shift Report'),
      body: Column(
        children: [
          dividerWidget(height: 6.0),
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
                      // suffixWidget: SvgPicture.asset(
                      //   'assets/icons/Arrow - Right.svg',
                      // ),
                      onChanged: (p0) {
                        context.read<DashboardCubit>().selectedStore(p0);
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
                        context.read<ReportCubit>().loadUserShiftReport(
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
                       return 
                      // NotificationListener<ScrollNotification>(
                      //   onNotification: (ScrollNotification scrollInfo) {
                      //     if (scrollInfo.metrics.pixels >=
                      //             scrollInfo.metrics.maxScrollExtent - 50 &&
                      //         state.isUserShiftReport !=
                      //             ApiFetchStatus.loading) {
                      //       context.read<ReportCubit>().loadUserShiftReport(
                      //         page: state.currentPage + 1,
                      //         limit: state.pageSize,
                      //         isLoadMore: true,
                      //         storeId: store.selectedStore?.storeId,
                      //       );
                      //     }
                      //     return false;
                      //   },

                        // child:
                         CommonTableWidget(
                          isLoading:
                              state.isUserShiftReport == ApiFetchStatus.loading,
                          headers: [
                            "#",
                            "Shift ",
                            "Role",
                            "User",
                            "Device ",
                            "Open",
                            "Opening Balance",
                            "Close",
                            "Closing Balance",
                          ],

                          columnFlex: [1, 2, 2, 2, 2, 2, 2, 2, 1],
                          data:
                              state.userShiftReport?.map((e) {
                                int index =
                                    state.userShiftReport?.indexOf(e) ?? 0;
                                return {
                                  '#': index + 1,
                                  'Shift ': e.shiftName ?? '',
                                  'Role': e.roleName ?? '',
                                  'User': e.userName ?? '',
                                  'Device ': e.deviceName ?? '',
                                  'Open': e.openingTime ?? '',
                                  'Opening Balance': e.openingBalance
                                      .toString(),
                                  'Close': e.closingTime ?? '',
                                  'Closing Balance': e.closingBalance ?? '',

                                  // Placeholder for action button
                                };
                              }).toList() ??
                              [],
                        );}
                      );
                }
                    
                  ),
                
              ),
            ),
          
        ],
      ),
    );
  }
}
