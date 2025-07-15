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

class CustomersReportScreen extends StatefulWidget {
  const CustomersReportScreen({super.key});

  @override
  State<CustomersReportScreen> createState() => _CustomersReportScreenState();
}

class _CustomersReportScreenState extends State<CustomersReportScreen> {
  void _loadMoreData() {
    final reportState = context.read<ReportCubit>().state;
    final dashboardState = context.read<DashboardCubit>().state;

    print('_loadMoreData called');
    print('hasMoreData: ${reportState.hasMoreData}');
    print('isLoadingMore: ${reportState.isLoadingMore}');
    print('currentPage: ${reportState.currentPage}');
    print('total records: ${reportState.customersReport?.length}');

    if (reportState.hasMoreData == true && reportState.isLoadingMore != true) {
      context.read<ReportCubit>().loadCustomersReport(
        storeId: dashboardState.selectedStore?.storeId,
        isLoadMore: true,
      );
    }
  }

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

                        // Fixed: Call loadCustomersReport instead of loadSuppliersReport
                        context.read<ReportCubit>().loadCustomersReport(
                          storeId: storeId,
                          // Add search query parameter if your API supports it
                          // query: value?.trim(),
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
                          return Column(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: NotificationListener<ScrollNotification>(
                                        onNotification:
                                            (ScrollNotification scrollInfo) {
                                              // More detailed scroll detection
                                              if (scrollInfo
                                                  is ScrollEndNotification) {
                                                final maxScroll = scrollInfo
                                                    .metrics
                                                    .maxScrollExtent;
                                                final currentScroll =
                                                    scrollInfo.metrics.pixels;
                                                final threshold =
                                                    maxScroll -
                                                    100; // Reduced threshold

                                                print(
                                                  'Scroll - Current: $currentScroll, Max: $maxScroll, Threshold: $threshold',
                                                );

                                                if (currentScroll >=
                                                    threshold) {
                                                  print(
                                                    'Triggering load more...',
                                                  );
                                                  _loadMoreData();
                                                }
                                              }
                                              return false;
                                            },
                                        child: CommonTableWidget(
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

                                          columnFlex: [1, 3, 3, 4, 3, 2],
                                          data:
                                              state.customersReport
                                                  ?.asMap()
                                                  .entries
                                                  .map((entry) {
                                                    int localIndex = entry.key;
                                                    var e = entry.value;
                                                    int globalIndex =
                                                        localIndex + 1;

                                                    return {
                                                      '#': globalIndex,
                                                      'Customer':
                                                          e.custName ?? '',
                                                      'E-Mail':
                                                          e.custEmail ?? '',
                                                      'Mobile':
                                                          e.custMobile ?? '',
                                                      'Purchase(AED)': e
                                                          .totalPurchaseAmount
                                                          .toString(),
                                                      'Balance': e.balanceAmt
                                                          .toString(),
                                                    };
                                                  })
                                                  .toList() ??
                                              [],
                                        ),
                                      ),
                                    ),
                                    if (state.isLoadingMore == true)
                                      Container(
                                        padding: EdgeInsets.all(16.w),
                                        child: CircularProgressIndicator(),
                                      ),
                                    if (state.hasMoreData == false &&
                                        state.customersReport?.isNotEmpty ==
                                            true)
                                      Container(
                                        padding: EdgeInsets.all(16.w),
                                        child: Text(
                                          'No more data',
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              _buildPageInfo(context, state),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

Widget _buildPageInfo(BuildContext context, ReportState state) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
    child: Text(
      'Page ${(state.currentPage ?? 0) + 1} • ${state.customersReport?.length ?? 0} customers',
      style: TextStyle(fontSize: 12.sp, color: Colors.grey),
    ),
  );
}
