import 'package:admin_v2/features/common/cubit/common_cubit.dart';
import 'package:admin_v2/features/common/domain/models/deliveryOption/option_response.dart';
import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/orders/domain/models/order/order_response.dart';
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

class ParcelCharge extends StatelessWidget {
  const ParcelCharge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Parcel Charge'),
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
                      value: state.selectedOption,

                      items:
                          state.optionList?.map((e) {
                            return DropdownMenuItem<OptionResponse>(
                              value: e,
                              child: Text(e.orderOptionName ?? ''),
                            );
                          }).toList() ??
                          [],
                      suffixWidget: SvgPicture.asset(
                        'assets/icons/Arrow - Right.svg',
                      ),
                      onChanged: (p0) {
                       
                        context.read<CommonCubit>().selectedOption(p0);
                      },
                      labelText: 'order option',
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
                        context.read<ReportCubit>().loadParcelCharge(
                          storeId: state.selectedStore?.storeId,
                          orderOptionId: state.selectedOption?.orderOptionId
                        );
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
                      return NotificationListener<ScrollEndNotification>(
                        onNotification: (ScrollNotification scrollInfo) {
                          if (scrollInfo.metrics.pixels >=
                                  scrollInfo.metrics.maxScrollExtent - 50 &&
                              state.isParcelCharge != ApiFetchStatus.loading) {
                            context.read<ReportCubit>().loadParcelCharge(
                              pageFirstLimit: state.page,
                              resultPerPage: state.pageSize,
                              isLoadMore: true,
                              orderOptionId: store.selectedOption?.orderOptionId,
                              storeId: store.selectedStore?.storeId,
                            );
                          }
                          return false;
                        },

                        child: CommonTableWidget(
                          isLoading:
                              state.isDeliverychargeReport ==
                              ApiFetchStatus.loading,
                          headers: [
                            "#",
                            "Order"
                                "ORDER DATE",

                            "PARCEL CHARGE",
                          ],
                          columnFlex: [2, 2, 2, 2],
                          data:
                              state.parcelChargeList?.map((e) {
                                int index =
                                    state.parcelChargeList?.indexOf(e) ?? 0;
                                return {
                                  "#": index + 1,
                                  "ORDER": e.billNo ?? '',
                                  "ORDER DATE": e.orderDate ?? '',

                                  "PARCEL CHARGE": e.parcelCharge ?? '',
                                };
                              }).toList() ??
                              [],
                        ),
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
