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
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomersReportScreen extends StatelessWidget {
  const CustomersReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Customers Report'),
      body: BlocBuilder<ReportCubit, ReportState>(
        builder: (context, state) {
          return Column(
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
                    _handleDate(),
                    10.verticalSpace,
                    _searchCustomer(),

                    10.verticalSpace,
                    _viewResult(),

                    10.verticalSpace,
                  ],
                ),
              ),
              Expanded(child: MainPadding(child: _buildCommonTable())),
            ],
          );
        },
      ),
    );
  }

  Widget _handleDate() {
    return BlocBuilder<ReportCubit, ReportState>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: DatePickerContainer(
                value: apiFormat.format(state.fromDate ?? DateTime.now()),
                labelText: 'From Date',
                changeDate: (DateTime pickedDate) {
                  context.read<ReportCubit>().changeFromDate(pickedDate);
                },
              ),
            ),
            12.horizontalSpace,
            Expanded(
              child: DatePickerContainer(
                labelText: 'To Date',
                value: apiFormat.format(state.toDate ?? DateTime.now()),
                changeDate: (DateTime pickedDate) {
                  context.read<ReportCubit>().changeToDate(pickedDate);
                },
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _searchCustomer() {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return TextFeildWidget(
          onChanged: (value) {
            final storeId =
                context.read<DashboardCubit>().state.selectedStore?.storeId ??
                0;

            context.read<ReportCubit>().custSearch(
              storeId: storeId,
              searchText: value,
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
          // suffixIcon: Padding(
          //   padding: const EdgeInsets.all(12.0),
          //   child: SvgPicture.asset('assets/icons/x-close.svg'),
          // ),
        );
      },
    );
  }

  Widget _viewResult() {
    return BlocBuilder<DashboardCubit, DashboardState>(
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
    );
  }

  Widget _buildCommonTable() {
    final ValueNotifier<bool> showNoMoreData = ValueNotifier(false);

    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, store) {
        return BlocBuilder<ReportCubit, ReportState>(
          builder: (context, state) {
            final ScrollController scrollController = ScrollController();
            return MainPadding(
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: NotificationListener<ScrollNotification>(
                            onNotification: (ScrollNotification scrollInfo) {
                              final maxScroll =
                                  scrollInfo.metrics.maxScrollExtent;
                              final currentScroll = scrollInfo.metrics.pixels;
                              final threshold = maxScroll - 100;

                              final atBottom = currentScroll >= threshold;

                              if (scrollInfo is ScrollEndNotification &&
                                  atBottom) {
                                final reportState = context
                                    .read<ReportCubit>()
                                    .state;

                                if (reportState.hasMoreData == true &&
                                    reportState.isLoadingMore != true) {
                                  _loadMoreData(context);
                                }

                                if (reportState.hasMoreData == false &&
                                    reportState.customersReport?.isNotEmpty ==
                                        true) {
                                  showNoMoreData.value = true;
                                }
                              }
                              if (scrollController.hasClients &&
                                  scrollController
                                          .position
                                          .userScrollDirection ==
                                      ScrollDirection.forward) {
                                showNoMoreData.value = false;
                              }

                              return false;
                            },

                            child: CommonTableWidget(
                              controller: scrollController,
                              isLoading:
                                  state.isCustomersReport ==
                                  ApiFetchStatus.loading,
                              headers: [
                                "#",
                                "Customer",
                                "E-Mail",
                                "Mobile",
                                "Purchase(AED)",
                                "Balance",
                              ],

                              columnFlex: [0, 4, 3, 4, 5, 3],
                              data:
                                  state.customersReport?.asMap().entries.map((
                                    entry,
                                  ) {
                                    int localIndex = entry.key;
                                    var e = entry.value;
                                    int globalIndex = localIndex + 1;

                                    return {
                                      '#': globalIndex,
                                      'Customer': e.custName ?? '',
                                      'E-Mail': e.custEmail ?? '',
                                      'Mobile': e.custMobile ?? '',
                                      'Purchase(AED)': e.totalPurchaseAmount
                                          .toString(),
                                      'Balance': e.balanceAmt.toString(),
                                    };
                                  }).toList() ??
                                  [],
                            ),
                          ),
                        ),

                        if (state.isLoadingMore == true)
                          Container(
                            padding: EdgeInsets.all(16.w),
                            child: CircularProgressIndicator(),
                          ),
                        ValueListenableBuilder<bool>(
                          valueListenable: showNoMoreData,
                          builder: (context, value, _) {
                            if (!value) return SizedBox.shrink();
                            return Padding(
                              padding: EdgeInsets.all(16.w),
                              child: Text(
                                'No more data',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.grey,
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

void _loadMoreData(BuildContext context) {
  final reportState = context.read<ReportCubit>().state;
  final dashboardState = context.read<DashboardCubit>().state;



  if (reportState.hasMoreData == true && reportState.isLoadingMore != true) {
    context.read<ReportCubit>().loadCustomersReport(
      storeId: dashboardState.selectedStore?.storeId,
      isLoadMore: true,
    );
  }
}
