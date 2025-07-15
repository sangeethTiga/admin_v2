import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/features/report/domain/models/mostSellingProducts/most_selling_response.dart';
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
import 'package:admin_v2/shared/widgets/text_fields/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MostSellingProducts extends StatelessWidget {
  const MostSellingProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Most Selling Products'),
      body: Column(
        children: [
          dividerWidget(height: 6.h),
          MainPadding(
            child: Column(
              children: [
                BlocBuilder<DashboardCubit, DashboardState>(
                  builder: (context, state) {
                    return commonStoreDropDown(
                      onChanged: (p0) {
                        context.read<DashboardCubit>().selectedStore(p0);
                        context.read<DashboardCubit>().loadProductsCategory(
                          p0.storeId,
                        );

                        context.read<ReportCubit>().clearCategories();
                        context.read<ReportCubit>().loadProductReport(
                          storeId: p0.storeId,
                          categoryId: state.selectedCategory?.categoryId,
                        );
                      },
                    );
                  },
                ),
                8.verticalSpace,
                BlocBuilder<DashboardCubit, DashboardState>(
                  builder: (context, state) {
                    return DropDownFieldWidget(
                      isLoading: state.apiFetchStatus == ApiFetchStatus.loading,
                      // prefixIcon: Container(
                      //   margin: EdgeInsets.only(left: 12.w),
                      //   child: SvgPicture.asset(
                      //     'assets/icons/package-box-pin-location.svg',
                      //     width: 20.w,
                      //     height: 20.h,
                      //     fit: BoxFit.contain,
                      //   ),
                      // ),
                      borderColor: kBlack,
                      inputBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: BorderSide(color: Color(0XFFB7C6C2)),
                      ),
                      fillColor: const Color(0XFFEFF1F1),

                      value: state.selectedCategory,

                      items:
                          state.sellingProductsReport?.map((e) {
                            return DropdownMenuItem<MostSellingResponse>(
                              value: e,
                              child: Text(e.categoryName ?? ''),
                            );
                          }).toList() ??
                          [],

                      onChanged: (categoryId) {
                        context.read<DashboardCubit>().selectCategory(
                          categoryId,
                        );
                        context.read<ReportCubit>().loadProductReport(
                          storeId: state.selectedStore?.storeId,
                          categoryId: categoryId.categoryId,
                        );
                      },

                      labelText: 'select category',
                    );
                  },
                ),
                4.verticalSpace,
                TextFeildWidget(
                  onChanged: (value) {
                    final storeId =
                        context
                            .read<DashboardCubit>()
                            .state
                            .selectedStore
                            ?.storeId ??
                        0;
                    final categoryId = context
                        .read<DashboardCubit>()
                        .state
                        .selectedCategory
                        ?.categoryId;
                    context.read<ReportCubit>().loadProductReport(
                      storeId: storeId,
                      categoryId: categoryId,
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
                  hintText: 'Search products',
                ),
                10.verticalSpace,

                //8.verticalSpace,
                BlocBuilder<ReportCubit, ReportState>(
                  builder: (context, state) {
                    return Row(
                      children: [
                        Expanded(
                          child: DatePickerContainer(
                            hintText: '',
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
                            hintText: '',
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
                      isLoading: state.isMostSelling == ApiFetchStatus.loading,
                      onPressed: () {
                        final categoryId = context
                            .read<DashboardCubit>()
                            .state
                            .selectedCategory
                            ?.categoryId;
                        context.read<ReportCubit>().loadProductReport(
                          storeId: state.selectedStore?.storeId,
                          categoryId: categoryId,
                        );
                      },
                      buttonText: 'View Report',
                    );
                  },
                ),
              ],
            ),
          ),

          BlocBuilder<ReportCubit, ReportState>(
            builder: (context, state) {
              return Expanded(
                child: CommonTableWidget(
                  isLoading: state.isProductReport == ApiFetchStatus.loading,
                  headers: [
                    "#",
                    "Product",
                    "Selling Price",
                    "Order Quantity",
                    "Total Cost",
                    "Total Sales",
                    "Profit",
                  ],
                  columnFlex: [2, 3, 3, 3, 3, 3, 2],
                  data:
                      state.productsReport?.map((e) {
                        int index = state.productsReport?.indexOf(e) ?? 0;
                        return {
                          "#": index + 1,
                          "Product": e.productName ?? '',

                          "Selling Price": e.sellingPrice ?? '',
                          "Order Quantity": e.totalorderqty ?? '',
                          "Total Cost": e.totalCostPrice ?? '',
                          "Total Sales": e.totalAmount ?? '',
                          "Profit": e.profit ?? '',
                        };
                      }).toList() ??
                      [],
                ),
              );
            },
          ),
        ],
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
          onChanged: (store) => _handleStoreChange(context, store),
          labelText: '',
        );
      },
    );
  }

  void _handleStoreChange(BuildContext context, StoreResponse? store) {
    // final reportCubit = context.read<ReportCubit>();
    final dashboardCubit = context.read<DashboardCubit>();
    dashboardCubit.selectedStore(store ?? StoreResponse());
  }
}
