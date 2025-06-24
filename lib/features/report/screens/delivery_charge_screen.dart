import 'package:admin_v2/features/common/cubit/common_cubit.dart';
import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
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

class DeliveryChargeScreen extends StatelessWidget {
  const DeliveryChargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Delivery Charge'),
      body: Column(
        children: [
          dividerWidget(height: 6.h),
          MainPadding(
            child: Column(
              spacing: 14.h,
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
                   
                      onChanged: (p0) {
                        context.read<CommonCubit>().selectedStore(p0);
                      },
                      labelText: '',
                    );
                  },
                ),

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

                BlocBuilder<CommonCubit, CommonState>(
                  builder: (context, state) {
                    return CustomMaterialBtton(
                      onPressed: () {
                        context.read<ReportCubit>().loadDeliveryChargeReport(
                        
                          storeId: state.selectedStore?.storeId,
                        );
                      },
                      buttonText: 'View Results',
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
                              state.isDeliverychargeReport !=
                                  ApiFetchStatus.loading) {
                            context
                                .read<ReportCubit>()
                                .loadDeliveryChargeReport(
                                  pageSize: state.page,
                                  offset: state.offset,
                                  isLoadMore: true,

                                  accountId:
                                      store.selectedAccount?.accountHeadId ?? 0,

                                  storeId: store.selectedStore?.storeId,
                                );
                          }
                          return false;
                        },

                        child: CommonTableWidget(
                          isLoading: state.isDeliverychargeReport == ApiFetchStatus.loading,
                          headers: [
                            "#",
                            "BILL NO",
                            "ORDER DATE",
                            "COUNT",
                            "SHIPPING CHARGE",
                          ],
                          columnFlex: [2, 2, 2, 2, 2],
                          data:state.deliverychargeReport?.map((e){
                            int index=state.deliverychargeReport?.indexOf(e) ?? 0;
                            return{
                               "#":index +1,
                            "BILL NO":e.billNo ?? '',
                            "ORDER DATE":e.orderDate ?? '',
                            "COUNT":e.rawCount ?? '',
                            "SHIPPING CHARGE":e.shippingCharge ?? '',
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
