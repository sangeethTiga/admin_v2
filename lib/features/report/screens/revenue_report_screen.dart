import 'dart:async';

import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
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

class RevenueReportScreen extends StatefulWidget {
  const RevenueReportScreen({super.key});

  @override
  State<RevenueReportScreen> createState() => _RevenueReportScreenState();
}

class _RevenueReportScreenState extends State<RevenueReportScreen> {
  final ScrollController _scrollController = ScrollController();
  Timer? _debounceTimer;
  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_onScrollChanged);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScrollChanged);

    _scrollController.dispose();
    _debounceTimer?.cancel();
    super.dispose();
  }

  void _onScrollChanged() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      _loadMoreProducts();
    }
  }

  void _loadMoreProducts() {
    context.read<ReportCubit>().loadMoreProducts();
  }

  Future<void> _refreshReport() async {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Revenue Report'),
      body: RefreshIndicator(
        onRefresh: _refreshReport,
        child: BlocBuilder<ReportCubit, ReportState>(
          builder: (context, state) {
            return Column(
              children: [
                dividerWidget(height: 6.h),
                10.verticalSpace,

                MainPadding(
                  child: Column(
                    children: [
                      _buildStoreDropdown(),
                      _handleDate(),
                      12.verticalSpace,
                      _viewReport(),
                      2.verticalSpace,
                      _commonTable(),
                      // _buildPaginationFooter(state),

                      //       BlocBuilder<DashboardCubit, DashboardState>(
                      //         builder: (context, state) {
                      //           return DropDownFieldWidget(
                      //             isLoading:
                      //                 state.apiFetchStatus == ApiFetchStatus.loading,
                      //             prefixIcon: Container(
                      //               margin: EdgeInsets.only(left: 12.w),
                      //               child: SvgPicture.asset(
                      //                 'assets/icons/package-box-pin-location.svg',
                      //                 width: 20.w,
                      //                 height: 20.h,
                      //                 fit: BoxFit.contain,
                      //               ),
                      //             ),
                      //             borderColor: kBlack,
                      //             value: state.selectedStore,
                      //             items:
                      //                 state.storeList?.map((e) {
                      //                   return DropdownMenuItem<StoreResponse>(
                      //                     value: e,
                      //                     child: Text(e.storeName ?? ''),
                      //                   );
                      //                 }).toList() ??
                      //                 [],
                      //             fillColor: const Color(0XFFEFF1F1),

                      //             onChanged: (p0) {
                      //               context.read<DashboardCubit>().selectedStore(p0);
                      //             },
                      //             labelText: '',
                      //           );
                      //         },
                      //       ),
                      //       12.verticalSpace,
                      //       BlocBuilder<ReportCubit, ReportState>(
                      //         builder: (context, state) {
                      //           return Row(
                      //             children: [
                      //               Expanded(
                      //                 child: DatePickerContainer(
                      //                   firstDate: state.fromDate ?? DateTime.now(),
                      //                   hintText: '',
                      //                   changeDate: (DateTime pickedDate) {
                      //                     context.read<ReportCubit>().changeFromDate(
                      //                       pickedDate,
                      //                     );
                      //                   },
                      //                 ),
                      //               ),
                      //               12.horizontalSpace,
                      //               Expanded(
                      //                 child: DatePickerContainer(
                      //                   hintText: '',
                      //                   changeDate: (DateTime pickedDate) {
                      //                     context.read<ReportCubit>().changeToDate(
                      //                       pickedDate,
                      //                     );
                      //                   },
                      //                 ),
                      //               ),
                      //             ],
                      //           );
                      //         },
                      //       ),
                      //       10.verticalSpace,
                      //       BlocBuilder<DashboardCubit, DashboardState>(
                      //         builder: (context, state) {
                      //           return CustomMaterialBtton(
                      //             onPressed: () {
                      //               context.read<ReportCubit>().loadReveneueReport(
                      //                 storeId: state.selectedStore?.storeId,
                      //               );
                      //             },
                      //             buttonText: 'View Report',
                      //           );
                      //         },
                      //       ),
                      //       10.verticalSpace,
                      //     ],
                      //   ),
                      // ),
                      // // Expanded(
                      // //   child: MainPadding(
                      // //     child: BlocBuilder<CommonCubit, CommonState>(
                      // //       builder: (context, store) {
                      // //         return BlocBuilder<ReportCubit, ReportState>(
                      // //           builder: (context, state) {
                      // //             return NotificationListener<ScrollNotification>(
                      // //               onNotification: (ScrollNotification scrollInfo) {
                      // //                 if (scrollInfo.metrics.pixels >=
                      // //                         scrollInfo.metrics.maxScrollExtent - 50 &&
                      // //                     state.isSaleReport !=
                      // //                         ApiFetchStatus.loading) {
                      // //                   context.read<ReportCubit>().loadReveneueReport(
                      // // page: state.currentPage + 1,
                      // // limit: state.pageSize,
                      // //                    //isLoadMore: true,
                      // //                     storeId: store.selectedStore?.storeId,
                      // //                   );
                      // //                 }
                      // //                 return false;
                      // //               },
                      // //  child:
                      // Expanded(
                      //   child: CommonTableWidget(
                      //     isLoading: state.isSaleReport == ApiFetchStatus.loading,
                      //     headers: ["#", "ORDER NUMBER", "DATE", "AMOUNT"],
                      //     columnFlex: [1, 3, 2, 2, 2],
                      //     data:
                      //         state.revenueReport?.map((e) {
                      //           int index = state.revenueReport?.indexOf(e) ?? 0;
                      //           return {
                      //             '#': index + 1,
                      //             'ORDER NUMBER': e.invoiceNumber ?? '',
                      //             'DATE': e.acTransactionDate ?? '',
                      //             'AMOUNT': e.amount ?? '',
                      //           };
                      //         }).toList() ??
                      //         [],
                      //   ),
                      // ),
                      //             );
                      //           },
                      //         );
                      //       },
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildStoreDropdown() {
    return BlocBuilder<DashboardCubit, DashboardState>(
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
          onChanged: (store) => _handleStoreChange(store),
          labelText: '',
          textStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 16,
            letterSpacing: 0.5,
          ),
        );
      },
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
                hintText: '',
                changeDate: (DateTime pickedDate) {
                  context.read<ReportCubit>().changeFromDate(pickedDate);
                },
              ),
            ),
            12.horizontalSpace,
            Expanded(
              child: DatePickerContainer(
                hintText: '',
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

  Widget _viewReport() {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return CustomMaterialBtton(
          onPressed: () {
            context.read<ReportCubit>().loadReveneueReport(
              storeId: state.selectedStore?.storeId,
            );
          },
          buttonText: 'View Report',
        );
      },
    );
  }

  Widget _commonTable() {
    return BlocBuilder<ReportCubit, ReportState>(
      builder: (context, state) {
        return SizedBox(
          height: 560,
          child: CommonTableWidget(
            isLoading: state.isSaleReport == ApiFetchStatus.loading,
            headers: ["#", "ORDER NUMBER", "DATE", "AMOUNT"],
            columnFlex: [1, 3, 2, 2, 2],
            data:
                state.revenueReport?.map((e) {
                  int index = state.revenueReport?.indexOf(e) ?? 0;
                  return {
                    '#': index + 1,
                    'ORDER NUMBER': e.invoiceNumber ?? '',
                    'DATE': e.acTransactionDate ?? '',
                    'AMOUNT': e.amount ?? '',
                  };
                }).toList() ??
                [],
          ),
        );
      },
    );
  }

  Widget _buildPaginationFooter(ReportState state) {
    final isLoadingMore = state.isLoadingMore == true;
    final hasMoreData = state.hasMoreData == true;
    final revenue = state.revenueReport ?? [];
    final currentPage = state.currentPage ?? 0;

    if (revenue.isEmpty) {
      return const SizedBox.shrink();
    }

    return Container(
      margin: EdgeInsets.only(top: 16.h, bottom: 20.h),
      child: Column(
        children: [
          if (isLoadingMore)
            Container(
              padding: EdgeInsets.all(16.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(kPrimaryColor),
                    ),
                  ),
                  12.horizontalSpace,
                  Text(
                    'Loading more products...',
                    style: FontPalette.hW500S14.copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            ),

          if (!isLoadingMore && hasMoreData)
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              child: ElevatedButton(
                onPressed: _loadMoreProducts,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: kPrimaryColor,
                  side: BorderSide(color: kPrimaryColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.expand_more, size: 20.w),
                    8.horizontalSpace,
                    Text('Load More Data', style: FontPalette.hW600S14),
                  ],
                ),
              ),
            ),

          if (!hasMoreData && revenue.isNotEmpty && !isLoadingMore)
            Container(
              padding: EdgeInsets.all(16.h),
              child: Column(
                children: [
                  Container(
                    width: 40.w,
                    height: 2.h,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(1.r),
                    ),
                  ),
                  8.verticalSpace,
                  Text(
                    'No more data to load',
                    style: FontPalette.hW500S12.copyWith(
                      color: Colors.grey[600],
                    ),
                  ),
                  if (currentPage > 0)
                    Text(
                      'Showing ${revenue.length} data',
                      style: FontPalette.hW400S10.copyWith(
                        color: Colors.grey[500],
                      ),
                    ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  void _handleStoreChange(StoreResponse? store) {
    final reportCubit = context.read<ReportCubit>();
    final dashboardCubit = context.read<DashboardCubit>();
    dashboardCubit.selectedStore(store ?? StoreResponse());

    reportCubit.changeStore(store ?? StoreResponse());
    reportCubit.loadReveneueReport(storeId: store?.storeId ?? 0);
  }
}
