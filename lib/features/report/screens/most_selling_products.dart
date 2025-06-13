import 'package:admin_v2/features/common/cubit/common_cubit.dart';
import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/features/report/domain/models/mostSellingProducts/most_selling_response.dart';
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
              //spacing: 14.h,
              children: [
                BlocBuilder<CommonCubit, CommonState>(
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
                        context.read<CommonCubit>().selectedStore(p0);
                      },
                      labelText: '',
                    );
                  },
                ),
                BlocBuilder<CommonCubit, CommonState>(
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
                      fillColor: const Color(0XFFEFF1F1),
                      value: state.selectedProducts,

                      items:
                          state.sellingProductsReport?.map((e) {
                            return DropdownMenuItem<MostSellingResponse>(
                              value: e,
                              child: Text(e.categoryName ?? ''),
                            );
                          }).toList() ??
                          [],
                      suffixWidget: SvgPicture.asset(
                        'assets/icons/Arrow - Right.svg',
                      ),
                      onChanged: (p0) {
                        context.read<CommonCubit>().selectedProducts(p0);
                      },
                      labelText: 'select category',
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
                            hintText: '',
                            firstDate: state.fromDate ?? DateTime.now(),
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
                            firstDate: state.fromDate ?? DateTime.now(),
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
                BlocBuilder<CommonCubit, CommonState>(
                  builder: (context, state) {
                    return CustomMaterialBtton(
                      onPressed: () {
                        context.read<ReportCubit>().loadProductReport(
                          storeId: state.selectedStore?.storeId,
                          categoryId: state.selectedProducts?.categoryId
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
              return SizedBox(
                height: 500,
                child: CommonTableWidget(
                  isLoading: state.isProductReport == ApiFetchStatus.loading,
                  headers: [
                    "#",
                    "Product",
                    // "Cost Price",
                    "Selling Price",
                    "Order Quantity",
                    "Total Cost",
                    "Total Sales",
                    "Profit",

                    // "Profit (%)"
                  ],
                  columnFlex: [1, 2, 2, 2, 2, 2, 2],
                  data:
                      state.productsReport?.map((e) {
                        int index = state.productsReport?.indexOf(e) ?? 0;
                        return {
                          "#": index + 1,
                          "Product": e.productName ?? '',
                          // "Cost Price": e.costPrice ?? '',
                          "Selling Price": e.sellingPrice ?? '',
                          "Order Quantity": e.totalorderqty ?? '',
                          "Total Cost": e.totalCostPrice ?? '',
                          "Total Sales": e.totalAmount ?? '',
                          "Profit": e.profit ?? '',

                          // "Profit (%)":e.profitPercentage ?? ''
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
}
