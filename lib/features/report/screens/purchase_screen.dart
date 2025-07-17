import 'package:admin_v2/features/common/cubit/common_cubit.dart';
import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/app/list/common_map.dart';
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

class PurchaseScreen extends StatelessWidget {
  const PurchaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Purchase Report'),
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

                BlocBuilder<ReportCubit, ReportState>(
                  builder: (context, state) {
                    return DropDownFieldWidget(
                      isLoading: false,
                      // prefixIcon: Container(
                      //   margin: EdgeInsets.only(left: 12.w),
                      //   child
                      //   : SvgPicture.asset(
                      //     'assets/icons/package-box-pin-location.svg',
                      //     width: 20.w,
                      //     height: 20.h,
                      //     fit: BoxFit.contain,
                      //   ),
                      // ),
                      borderColor: kBlack,
                      labelText: 'Purchase type',
                      value:
                          state.selectedPurchaseType ??
                          PurchaseType(id: 0, name: 'All'),

                      items: purchaseTypes.map((value) {
                        return DropdownMenuItem<PurchaseType>(
                          value: value,
                          child: Text(value.name ?? ''),
                        );
                      }).toList(),

                      fillColor: const Color(0XFFEFF1F1),

                      onChanged: (purchase) {
                        context.read<CommonCubit>().selectedPurchase(purchase);
                        context.read<ReportCubit>().changePucrhaeType(purchase);
                        context.read<ReportCubit>().loadPurchaseReport(
                          storeId: state.selectedStore?.storeId,
                          fromDate: '',
                          toDate: '',
                          purchaseType: purchase?.id,
                        );
                      },
                    );
                  },
                ),
                8.verticalSpace,

                BlocBuilder<ReportCubit, ReportState>(
                  builder: (context, state) {
                    return Row(
                      children: [
                        Expanded(
                          child: DatePickerContainer(
                            labelText: 'From Date',
                            value: apiFormat.format(
                              state.fromDate ?? DateTime.now(),
                            ),
                            changeDate: (DateTime pickDate) {
                              context.read<ReportCubit>().changeFromDate(
                                pickDate,
                              );
                            },
                          ),
                        ),
                        12.horizontalSpace,
                        Expanded(
                          child: DatePickerContainer(
                            labelText: 'To Date',
                            value: apiFormat.format(
                              state.toDate ?? DateTime.now(),
                            ),
                            changeDate: (DateTime pickDate) {
                              context.read<ReportCubit>().changeToDate(
                                pickDate,
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  },
                ),
                12.verticalSpace,
                BlocBuilder<DashboardCubit, DashboardState>(
                  builder: (context, state) {
                    return CustomMaterialBtton(
                      onPressed: () {
                        context.read<ReportCubit>().loadPurchaseReport(
                          storeId: state.selectedStore?.storeId,
                          purchaseType: state.selectedPurchaseType?.id,
                        );
                        // context.read<ReportCubit>().changePucrhaeType();
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
              child: BlocBuilder<CommonCubit, CommonState>(
                builder: (context, store) {
                  return BlocBuilder<ReportCubit, ReportState>(
                    builder: (context, state) {
                      return BlocBuilder<ReportCubit, ReportState>(
                        builder: (context, state) {
                          return Column(
                            children: [
                              Expanded(
                                child: NotificationListener<ScrollNotification>(
                                  onNotification:
                                      (ScrollNotification scrollInfo) {
                                        if (scrollInfo
                                            is ScrollEndNotification) {
                                          final maxScroll = scrollInfo
                                              .metrics
                                              .maxScrollExtent;
                                          final currentScroll =
                                              scrollInfo.metrics.pixels;
                                          final threshold = maxScroll - 100;

                                          if (currentScroll >= threshold) {
                                            _loadMoreData(context);
                                          }
                                        }
                                        return false;
                                      },

                                  child: CommonTableWidget(
                                    isLoading:
                                        state.isPurchaseReport ==
                                        ApiFetchStatus.loading,
                                    headers: [
                                      "#",
                                      "Purchase Date",
                                      "Amount",
                                      "Payment Method",
                                      "Invoice",
                                    ],

                                    columnFlex: [1, 2, 2, 2, 2],
                                    data:
                                        state.purchaseReport?.map((e) {
                                          int index =
                                              state.purchaseReport?.indexOf(
                                                e,
                                              ) ??
                                              0;
                                          return {
                                            '#': index + 1,
                                            'Purchase Date':
                                                e.purchaseDate ?? '',
                                            'Amount': e.totalamount.toString(),
                                            'Payment Method':
                                                e.payMethodName ?? '',
                                            'Invoice': e.invoiceNumber ?? '',
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
                              if (state.hasMoreData == false &&
                                  state.customersReport?.isNotEmpty == true)
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
                          );
                        },
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

Widget commonStoreDropDown({Function(StoreResponse)? onChanged}) {
  return BlocBuilder<DashboardCubit, DashboardState>(
    builder: (context, state) {
      return DropDownFieldWidget(
        contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 15.h),
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
    

        onChanged: (p0) {
          onChanged?.call(p0);
        },
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

void _loadMoreData(BuildContext context) {
  final reportState = context.read<ReportCubit>().state;
  final dashboardState = context.read<DashboardCubit>().state;
  if (reportState.hasMoreData == true && reportState.isLoadingMore != true) {
    context.read<ReportCubit>().loadPurchaseReport(
      storeId: dashboardState.selectedStore?.storeId,
      isLoadMore: true,
    );
  }
}
