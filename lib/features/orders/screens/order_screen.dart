import 'dart:developer';

import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/orders/cubit/order_cubit.dart';
import 'package:admin_v2/features/orders/domain/models/order_request/order_request.dart';
import 'package:admin_v2/features/orders/domain/models/status/order_status_response.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/app/list/common_map.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/routes/routes.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/utils/helper/helper.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/date_picker/date_picker_container.dart';
import 'package:admin_v2/shared/widgets/divider/divider_widget.dart';
import 'package:admin_v2/shared/widgets/dropdown_field_widget/dropdown_field_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'New Orders'),
      body: BlocBuilder<OrderCubit, OrderState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                dividerWidget(height: 6.h),
                8.verticalSpace,
                BlocBuilder<DashboardCubit, DashboardState>(
                  builder: (context, common) {
                    return SizedBox(
                      height: 60.h,
                      child: ListView.builder(
                        padding: EdgeInsets.only(left: 12.w),
                        scrollDirection: Axis.horizontal,
                        itemCount: state.statusList?.length,
                        shrinkWrap: true,
                        itemBuilder: (context, i) {
                          return GestureDetector(
                            onTap: () {
                              context.read<OrderCubit>().chnageStatus(
                                state.statusList?[i] ?? OrderStatusResponse(),
                              );
                              context.read<OrderCubit>().orders(
                                req: OrderRequest(
                                  orderStatusId:
                                      state.statusList?[i].orderStatusId,
                                  storeId: common.selectedStore?.storeId,
                                  fromDate: parsedDate(
                                    state.fromDate ?? DateTime.now(),
                                  ),
                                  toDate: parsedDate(
                                    state.toDate ?? DateTime.now(),
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(right: 8.w),
                              height: 40.h,
                              width: 106.w,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      state.selectedOrder?.orderStatusId ==
                                          state.statusList?[i].orderStatusId
                                      ? kPrimaryColor
                                      : kLightBorderColor,
                                ),
                                color:
                                    state.selectedOrder?.orderStatusId ==
                                        state.statusList?[i].orderStatusId
                                    ? kPrimaryColor
                                    : kWhite,
                                borderRadius: BorderRadius.circular(44.r),
                              ),
                              child: Text(
                                textAlign: TextAlign.center,
                                state.statusList?[i].orderStatusName ?? '',
                                style: FontPalette.hW700S13.copyWith(
                                  color:
                                      state.selectedOrder?.orderStatusId ==
                                          state.statusList?[i].orderStatusId
                                      ? kWhite
                                      : kBlack,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
                4.verticalSpace,
                Divider(),
                MainPadding(
                  child: Column(
                    children: [
                      5.verticalSpace,
                      BlocBuilder<DashboardCubit, DashboardState>(
                        builder: (context, state) {
                          return DropDownFieldWidget(
                            isLoading:
                                state.apiFetchStatus == ApiFetchStatus.loading,
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
                              context.read<OrderCubit>().orders(
                                req: OrderRequest(
                                  storeId: state.selectedStore?.storeId,
                                  fromDate: parsedDate(DateTime.now()),
                                  toDate: parsedDate(DateTime.now()),
                                ),
                              );
                            },

                            // fillColor: Color(0XFFEFF1F1),
                            // suffixWidget: Padding(
                            //   padding: const EdgeInsets.all(15.0),
                            //   child: SvgPicture.asset(
                            //     'assets/icons/Arrow - Right.svg',
                            //   ),
                            // ),
                            labelText: '',
                          );
                        },
                      ),
                      4.verticalSpace,
                      Container(
                        height: 112.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: kLightBorderColor),
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: BlocBuilder<DashboardCubit, DashboardState>(
                          builder: (context, common) {
                            return Column(
                              children: [
                                Row(
                                  children: mapItems.map((item) {
                                    return BlocBuilder<OrderCubit, OrderState>(
                                      builder: (context, state) {
                                        final isSelected = state.selectedIds
                                            ?.contains(item.id);

                                        return Padding(
                                          padding: EdgeInsets.only(
                                            left: 9.w,
                                            right: 9.w,
                                          ),
                                          child: Row(
                                            children: [
                                              Checkbox(
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,

                                                side: BorderSide(
                                                  color: Color(0xFFCBD7D4),
                                                  width: 1.5,
                                                ),
                                                activeColor: kPrimaryColor,
                                                shape: const CircleBorder(),
                                                value: isSelected ?? false,
                                                onChanged: (v) {
                                                  context
                                                      .read<OrderCubit>()
                                                      .ordersDatesEvent(
                                                        item.id,
                                                      );

                                                  context
                                                      .read<OrderCubit>()
                                                      .orders(
                                                        req: OrderRequest(
                                                          filterId:
                                                              state.selectedIds,
                                                          storeId: common
                                                              .selectedStore
                                                              ?.storeId,
                                                          fromDate: parsedDate(
                                                            DateTime.now(),
                                                          ),
                                                          toDate: parsedDate(
                                                            DateTime.now(),
                                                          ),
                                                        ),
                                                      );
                                                  log(
                                                    "What ans this = -=- =- ${state.selectedIds?.length}",
                                                  );
                                                },
                                              ),
                                              Text(
                                                item.title,
                                                style: FontPalette.hW500S12,
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  }).toList(),
                                ),
                                7.verticalSpace,
                                // SingleChildScrollView(
                                //   scrollDirection: Axis.horizontal,
                                //   child: Row(
                                //     children: [
                                //       _rowCheckBox('Order date', (v) {}, true),
                                //       _rowCheckBox('Delivery date', (v) {}, true),
                                //       _rowCheckBox('Pick Up date', (v) {}, true),
                                //     ],
                                //   ),
                                // ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 12.w,
                                    right: 12.w,
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: DatePickerContainer(
                                          firstDate:
                                              state.fromDate ?? DateTime.now(),

                                          hintText: '',
                                          changeDate: (DateTime pickedDate) {
                                            context
                                                .read<OrderCubit>()
                                                .chnageFromDate(pickedDate);
                                            context.read<OrderCubit>().orders(
                                              req: OrderRequest(
                                                filterId: state.selectedIds,
                                                storeId: common
                                                    .selectedStore
                                                    ?.storeId,
                                                fromDate: parsedDate(
                                                  DateTime.now(),
                                                ),
                                                toDate: parsedDate(
                                                  DateTime.now(),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                      8.horizontalSpace,
                                      Expanded(
                                        child: DatePickerContainer(
                                          firstDate:
                                              state.toDate ?? DateTime.now(),
                                          hintText: '',
                                          changeDate: (DateTime pickedDate) {
                                            context
                                                .read<OrderCubit>()
                                                .chnageToDate(pickedDate);
                                            context.read<OrderCubit>().orders(
                                              req: OrderRequest(
                                                filterId: state.selectedIds,
                                                storeId: common
                                                    .selectedStore
                                                    ?.storeId,
                                                fromDate: parsedDate(
                                                  DateTime.now(),
                                                ),
                                                toDate: parsedDate(
                                                  DateTime.now(),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                      8.horizontalSpace,
                                      Container(
                                        width: 39.w,
                                        height: 44.h,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            8.r,
                                          ),
                                          border: Border.all(
                                            color: kPrimaryColor,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: SvgPicture.asset(
                                            'assets/icons/Frame 2147226159.svg',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      12.verticalSpace,
                      if (state.isLoading == ApiFetchStatus.loading) ...{
                        shimmerOrderCard(),
                      } else if (state.orderList?.isEmpty ?? false) ...{
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 110.h),
                            child: Text(
                              'No orders found!',
                              style: FontPalette.hW700S13,
                            ),
                          ),
                        ),
                      } else ...{
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: state.orderList?.length,
                          itemBuilder: (context, i) {
                            final data = state.orderList?[i];

                            final dateTime = DateFormat(
                              "dd-MMM-yyyy hh:mm:ss a",
                            ).parse(data?.orderDate ?? '');

                            final timeOnly = DateFormat(
                              "hh:mm a",
                            ).format(dateTime);
                            return Container(
                              margin: EdgeInsets.only(bottom: 12.h),
                              width: 351.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: kWhite,
                                border: Border.all(color: kLightBorderColor),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 12.w,
                                      top: 12.h,
                                      right: 16.w,
                                      bottom: 6.h,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Order: #${data?.prodOrderId}',
                                          style: FontPalette.hW700S13.copyWith(
                                            color: kBlack,
                                          ),
                                        ),
                                        Spacer(),

                                        3.horizontalSpace,
                                        Text(
                                          'Delivery',
                                          style: FontPalette.hW700S14.copyWith(
                                            color: kPrimaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  dividerWidget(color: kLightBorderColor),
                                  10.verticalSpace,
                                  _rowWidget(
                                    isPrimary: true,
                                    label: 'Customer name',
                                    label1: "Mobile number",
                                    name: data?.billCustName ?? 'N/A',
                                    name2: data?.billMobile ?? 'N/A',
                                  ),
                                  16.verticalSpace,
                                  _rowWidget(
                                    label: 'Date',
                                    label1: "Time",
                                    name:
                                        data?.orderDate?.substring(0, 10) ?? '',
                                    name2: timeOnly,
                                  ),
                                  10.verticalSpace,

                                  _containerWidget(
                                    name: 'Total :',
                                    status: ' AED ${data?.totalNetAmount ?? 0}',
                                  ),
                                  10.verticalSpace,

                                  _containerWidget(
                                    name: 'Delivery agent :',
                                    status: data?.deliveryBoyName ?? 'N/A',
                                  ),
                                  10.verticalSpace,
                                  Row(
                                    children: [
                                      10.horizontalSpace,
                                      Expanded(
                                        child: InkWell(
                                          onTap: () {
                                            _dialogBuilder(context);
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(
                                              top: 10.h,
                                              left: 10.w,
                                              right: 10.w,
                                            ),
                                            height: 44.h,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: kPrimaryColor,
                                              ),
                                              color: kWhite,
                                              borderRadius:
                                                  BorderRadius.circular(8.r),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  data?.orderStatusName ?? '',
                                                  style: FontPalette.hW700S14
                                                      .copyWith(
                                                        color: kPrimaryColor,
                                                      ),
                                                ),
                                                4.horizontalSpace,
                                                SvgPicture.asset(
                                                  'assets/icons/Arrow - Right.svg',
                                                  color: kPrimaryColor,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: GestureDetector(
                                          onTap: () {
                                            context
                                                .read<OrderCubit>()
                                                .orderDetail(
                                                  data?.prodOrderId ?? 0,
                                                );
                                            context.push(routeOrderDetail);
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(
                                              top: 10.h,
                                              left: 10.w,
                                              right: 10.w,
                                            ),
                                            height: 44.h,
                                            decoration: BoxDecoration(
                                              color: kPrimaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(8.r),
                                            ),
                                            child: Text(
                                              'View order',
                                              style: FontPalette.hW700S14
                                                  .copyWith(color: kWhite),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  10.verticalSpace,
                                ],
                              ),
                            );
                          },
                        ),
                      },
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

Widget _rowWidget({
  String? label,
  String? label1,
  String? name,
  String? name2,
  bool isPrimary = false,
}) {
  return MainPadding(
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Text(
                label ?? '',
                style: FontPalette.hW500S11.copyWith(color: Color(0XFF5E6566)),
              ),
            ),

            Expanded(
              flex: 3,
              child: Text(
                label1 ?? '',
                style: FontPalette.hW500S11.copyWith(color: Color(0XFF5E6566)),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Text(name ?? '', style: FontPalette.hW500S13),
            ),

            Expanded(
              flex: 3,
              child: Row(
                children: [
                  if (isPrimary) SvgPicture.asset('assets/icons/Call.svg'),
                  4.horizontalSpace,
                  Text(
                    name2 ?? '',
                    style: FontPalette.hW500S13.copyWith(
                      color: isPrimary ? kPrimaryColor : kBlack,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _containerWidget({String? name, String? status}) {
  return Container(
    height: 41.h,
    width: double.infinity,
    padding: EdgeInsets.only(top: 10.h, left: 12.w),
    margin: EdgeInsets.only(left: 10.w, right: 12.w),
    decoration: BoxDecoration(
      color: kBorderColor,
      borderRadius: BorderRadius.circular(8.r),
    ),
    child: RichText(
      text: TextSpan(
        text: name,
        style: FontPalette.hW500S13.copyWith(color: kBlack),
        children: [
          TextSpan(
            text: status,
            style: FontPalette.hW700S13.copyWith(color: kPrimaryColor),
          ),
        ],
      ),
    ),
  );
}

Widget shimmerOrderCard() {
  return Shimmer.fromColors(
    baseColor: Colors.grey.shade300,
    highlightColor: Colors.grey.shade100,
    child: Container(
      margin: EdgeInsets.only(bottom: 12.h),
      height: 220.h,
      width: 351.w,
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        // color: Colors.white,
        border: Border.all(color: kLightBorderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: 16.h, width: 120.w, color: Colors.white),
          8.verticalSpace,
          Container(height: 12.h, width: double.infinity, color: Colors.white),
          16.verticalSpace,
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 12.h,
                  width: 100.w,
                  color: Colors.white,
                ),
              ),
              12.horizontalSpace,
              Expanded(
                child: Container(
                  height: 12.h,
                  width: 100.w,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          16.verticalSpace,
          Container(height: 12.h, width: double.infinity, color: Colors.white),
          16.verticalSpace,
          Container(height: 12.h, width: double.infinity, color: Colors.white),
          16.verticalSpace,
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 44.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Colors.white,
                  ),
                ),
              ),
              8.horizontalSpace,
              Expanded(
                child: Container(
                  height: 44.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Future<void> _dialogBuilder(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return BlocBuilder<OrderCubit, OrderState>(
        builder: (context, state) {
          return AlertDialog(
            backgroundColor: kWhite,
            title: const Text('Status'),
            content: SizedBox(
              height: 260.h,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    state.statusList?.length ?? 0,
                    (i) => MainPadding(
                      top: 10.h,
                      child: Text(state.statusList?[i].orderStatusName ?? ''),
                    ),
                  ),
                ),
              ),
            ),

            actions: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge,
                ),
                child: const Text('Disable'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge,
                ),
                child: const Text('Enable'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    },
  );
}
