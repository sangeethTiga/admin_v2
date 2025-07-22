import 'dart:math' as math;

import 'package:admin_v2/features/orders/cubit/order_cubit.dart';
import 'package:admin_v2/features/products/screens/product_offers_screen.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/utils/helper/helper.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/divider/divider_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';

class OrderDetailScreen extends StatefulWidget {
  const OrderDetailScreen({super.key});

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  bool isShippingExpanded = false;
  bool hasShippingLoaded = false;

  bool isBillingExpanded = false;
  bool hasBillingLoaded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Order Details'),
      body: SingleChildScrollView(
        child: BlocBuilder<OrderCubit, OrderState>(
          builder: (context, state) {
            if (state.isLoading == ApiFetchStatus.loading) {
              return _orderDetailShimmer();
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                dividerWidget(height: 6.h),
                12.verticalSpace,
                Container(
                  margin: EdgeInsets.only(
                    bottom: 12.h,
                    left: 12.w,
                    right: 12.w,
                  ),

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
                              'Order: #${state.orderDetail?.prodOrderId ?? 0}',
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
                      rowWidget(
                        name: 'Reference number',
                        status:
                            state.orderDetail?.referenceNo ??
                            ''.replaceAll(':', ''),
                      ),
                      8.verticalSpace,
                      rowWidget(
                        name: 'Order date',
                        status: state.orderDetail?.orderDate ?? '',
                      ),
                      8.verticalSpace,
                      rowWidget(
                        name: 'Payment Mode',
                        status: state.orderDetail?.payMethodName ?? '',
                      ),
                      8.verticalSpace,

                      rowWidget(
                        name: 'Payment status',
                        status: state.orderDetail?.paymentStatusName ?? '',
                      ),
                      8.verticalSpace,

                      rowWidget(
                        name: 'Expected delivery',
                        status: parsedDate(
                          state.orderDetail?.updatedDate ?? DateTime.now(),
                        ),
                      ),
                      12.verticalSpace,
                    ],
                  ),
                ),

                MainPadding(
                  bottom: 8.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ITEMS',
                        style: FontPalette.hW700S11.copyWith(
                          color: Color(0XFF5E6566),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _showMyDialog(context);
                        },
                        child: Text(
                          'View all',
                          style: FontPalette.hW600S14.copyWith(
                            color: kPrimaryColor,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 12.w, right: 12.w),
                  padding: EdgeInsets.all(12.r),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(color: kLightBorderColor),
                  ),
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: math.min(
                      state.orderDetail?.productOrderItem?.length ?? 0,
                      3,
                    ),
                    itemBuilder: (context, i) {
                      final data = state.orderDetail?.productOrderItem?[i];

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                data?.productName ?? '',
                                style: FontPalette.hW700S13,
                              ),
                              Text(
                                'AED ${data?.productPrice ?? 0}',
                                style: FontPalette.hW700S14,
                              ),
                            ],
                          ),
                          6.verticalSpace,

                          Text(
                            'Unit price : AED ${data?.orderItemPrice ?? 0}',
                            style: FontPalette.hW500S13,
                          ),
                          4.verticalSpace,

                          Text(
                            'QTY : ${data?.quantity ?? 0}',
                            style: FontPalette.hW500S13,
                          ),

                          Divider(color: kBorderColor),
                        ],
                      );
                    },
                  ),
                ),

                MainPadding(
                  top: 16.h,
                  child: addItemDetails(
                    image: 'Component 806.svg',
                    expand: () {
                      setState(() {
                        isShippingExpanded = !isShippingExpanded;
                      });
                    },

                    label: 'Shipping Address',

                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    expandedWidget: isShippingExpanded
                        ? Container(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            margin: EdgeInsets.only(left: 6),
                            child: SizedBox(
                              width: double.infinity,
                              //decoration: BoxDecoration(color: kGreenColor),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  rowWidgets(
                                    name: 'Customer',
                                    status: state.orderDetail?.shipCustName,
                                  ),
                                  rowWidgets(
                                    name: 'Flat',
                                    status: state.orderDetail?.shipFlatNo,
                                  ),
                                  rowWidgets(
                                    name: 'Building',
                                    status: state.orderDetail?.shipBuildingNo,
                                  ),
                                  rowWidgets(
                                    name: 'City',
                                    status: state.orderDetail?.shipCity,
                                  ),
                                  rowWidgets(
                                    name: 'Area',
                                    status: state.orderDetail?.shipArea,
                                  ),
                                  rowWidgets(
                                    name: 'Email',
                                    status: state.orderDetail?.shipEmail,
                                  ),
                                  rowWidgets(
                                    name: 'Mobile',
                                    status: state.orderDetail?.shipMobile,
                                  ),
                                ],
                              ),
                            ),
                          )
                        : SizedBox.shrink(),
                    isExpand: true,
                  ),
                ),
                MainPadding(
                  top: 0.h,
                  child: addItemDetails(
                    image: 'Component 806 (1).svg',
                    expand: () {
                      setState(() {
                        isBillingExpanded = !isBillingExpanded;
                      });
                    },
                    label: 'Billing Address',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),

                    expandedWidget: isBillingExpanded
                        ? Container(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            margin: EdgeInsets.only(left: 6),
                            child: SizedBox(
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  rowWidgets(
                                    name: 'Customer',
                                    status: state.orderDetail?.billCustName,
                                  ),
                                  rowWidgets(
                                    name: 'Flat',
                                    status: state.orderDetail?.billFlatNo,
                                  ),
                                  rowWidgets(
                                    name: 'Building',
                                    status: state.orderDetail?.billBuildingNo,
                                  ),
                                  rowWidgets(
                                    name: 'City',
                                    status: state.orderDetail?.billCity,
                                  ),
                                  rowWidgets(
                                    name: 'Area',
                                    status: state.orderDetail?.billArea,
                                  ),
                                  rowWidgets(
                                    name: 'Email',
                                    status: state.orderDetail?.billEmail,
                                  ),
                                  rowWidgets(
                                    name: 'Mobile',
                                    status: state.orderDetail?.billMobile,
                                  ),
                                ],
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                    isExpand: true,
                  ),
                ),
                MainPadding(
                  child: Text(
                    'PRICE DETAILS',
                    style: FontPalette.hW700S11.copyWith(
                      color: Color(0XFF5E6566),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(
                    bottom: 12.h,
                    left: 12.w,
                    right: 12.w,
                    top: 14.h,
                  ),
                  width: 351.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: kWhite,
                    border: Border.all(color: kLightBorderColor),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //     left: 12.w,
                      //     top: 12.h,
                      //     right: 16.w,
                      //     bottom: 6.h,
                      //   ),
                      //   child: Text(
                      //     'Mutton Tikka',
                      //     style: FontPalette.hW700S13.copyWith(color: kBlack),
                      //   ),
                      // ),

                      // dividerWidget(color: kLightBorderColor),
                      10.verticalSpace,
                      _rowWidget(
                        name: 'Grand total',
                        status:
                            "AED ${formatAmount(state.orderDetail?.grandTotal ?? '')}",
                      ),
                      8.verticalSpace,
                      _rowWidget(
                        name: 'Total before tax',
                        status:
                            'AED ${formatAmount(state.orderDetail?.taxableAmount ?? '')}',
                      ),
                      8.verticalSpace,
                      _rowWidget(
                        name: 'Tax Incl',
                        status:
                            "AED ${formatAmount(state.orderDetail?.taxAmount ?? '')}",
                      ),
                      8.verticalSpace,

                      _rowWidget(
                        name: 'Parcel Charge',
                        status:
                            "AED ${formatAmount(state.orderDetail?.parcelCharge ?? '')}",
                      ),
                      8.verticalSpace,

                      _rowWidget(
                        name: 'Discount',
                        status:
                            "AED ${formatAmount(state.orderDetail?.spotDiscountAmt ?? '')}",
                      ),
                      8.verticalSpace,

                      _rowWidget(
                        name: 'Shipping Charge',
                        status:
                            "AED ${formatAmount("${state.orderDetail?.shippingCharge}")}",
                      ),
                      Divider(color: kBorderColor),
                      MainPadding(
                        bottom: 10.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Amount payable', style: FontPalette.hW700S14),
                            Text(
                              'AED ${formatAmount(state.orderDetail?.netAmount ?? '')}',
                              style: FontPalette.hW700S14,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                16.verticalSpace,
              ],
            );
          },
        ),
      ),
    );
  }
}

Widget addItemDetails({
  required String label,
  String? image,
  required Function expand,
  required Widget expandedWidget,
  bool inside = false,
  Icon? icon,
  Widget? widget,
  Widget? addWidget,
  Widget? columnWidgets,
  required bool isExpand,
  Color? color,
  required TextStyle labelStyle,
}) {
  return Container(
    clipBehavior: Clip.antiAliasWithSaveLayer,
    padding: const EdgeInsets.only(bottom: 5, top: 5),
    margin: EdgeInsets.only(bottom: inside ? 0 : 10),
    decoration: BoxDecoration(
      color: Color(0XFFDFE8E9),
      borderRadius: BorderRadius.circular(12.r),
    ),
    child:
        columnWidgets ??
        Column(
          children: [
            InkWell(
              onTap: () {
                expand();
              },
              child: Padding(
                padding: EdgeInsets.only(
                  left: icon == null && image == null ? 0 : 15,
                ),
                child: Row(
                  children: [
                    icon ??
                        (image != null
                            ? SvgPicture.asset('assets/icons/$image')
                            : const SizedBox()),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          label,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Color(0xff1A202C),
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    if (addWidget != null) addWidget,
                    widget ??
                        IconButton(
                          splashRadius: 15,
                          onPressed: () {
                            expand();
                          },
                          icon: isExpand
                              ? SvgPicture.asset(
                                  'assets/icons/Arrow - Right.svg',
                                )
                              : SvgPicture.asset(
                                  'assets/icons/Arrow - Right.svg',
                                ),
                        ),
                  ],
                ),
              ),
            ),
            if (isExpand)
              Padding(
                padding: EdgeInsets.all(inside ? 5.0 : 0),
                child: expandedWidget,
              ),
          ],
        ),
  );
}

Widget _rowWidget({String? name, String? status}) {
  return MainPadding(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(name ?? '', style: FontPalette.hW600S13),

        Text(status ?? '', style: FontPalette.hW400S13),
      ],
    ),
  );
}

Widget _orderDetailShimmer() {
  return Padding(
    padding: EdgeInsets.all(12.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShimmerWidget.rectangular(height: 235.h, width: 351.w),
        12.verticalSpace,
        ShimmerWidget.rectangular(height: 20.h, width: 100.w),
        6.verticalSpace,
        ShimmerWidget.rectangular(height: 120.h, width: double.infinity),
        12.verticalSpace,
        ShimmerWidget.rectangular(height: 20.h, width: 100.w),
        6.verticalSpace,
        ShimmerWidget.rectangular(height: 120.h, width: double.infinity),
        6.verticalSpace,
        ShimmerWidget.rectangular(height: 120.h, width: double.infinity),
      ],
    ),
  );
}

class ShimmerWidget extends StatelessWidget {
  final double width;
  final double height;
  final ShapeBorder shapeBorder;

  const ShimmerWidget.rectangular({
    super.key,
    required this.width,
    required this.height,
  }) : shapeBorder = const RoundedRectangleBorder();

  const ShimmerWidget.circular({
    super.key,
    required this.width,
    required this.height,
  }) : shapeBorder = const CircleBorder();

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
    baseColor: Colors.grey.shade300,
    highlightColor: Colors.grey.shade100,
    child: Container(
      width: width,
      height: height,
      decoration: ShapeDecoration(color: Colors.grey[400]!, shape: shapeBorder),
    ),
  );
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: kWhite,
        title: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [const Text('Items in Order'), dividerWidget()],
        ),
        content: BlocBuilder<OrderCubit, OrderState>(
          builder: (context, state) {
            final items = state.orderDetail?.productOrderItem ?? [];

            if (items.isEmpty) {
              return const Text('No items in order');
            }

            return SizedBox(
              width: double.maxFinite,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, i) {
                  final data = items[i];

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              data.productName ?? 'Unknown Product',
                              style: FontPalette.hW700S13,
                            ),
                          ),
                          Text(
                            'AED ${data.productPrice ?? 0}',
                            style: FontPalette.hW700S14,
                          ),
                        ],
                      ),
                      6.verticalSpace,
                      Text(
                        'Unit price: AED ${data.orderItemPrice ?? 0}',
                        style: FontPalette.hW500S13,
                      ),
                      4.verticalSpace,
                      Text(
                        'QTY: ${data.quantity ?? 0}',
                        style: FontPalette.hW500S13,
                      ),
                      if (i < items.length - 1) Divider(color: kBorderColor),
                    ],
                  );
                },
              ),
            );
          },
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

Widget rowWidgets({String? name, String? status, Color? statusColor}) {
  return MainPadding(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(flex: 2, child: Text(name ?? '', style: FontPalette.hW600S13)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Text(':'),
        ),
        Expanded(
          flex: 3,
          child: Text(
            status ?? '',
            style: FontPalette.hW400S13.copyWith(color: statusColor ?? kBlack),
          ),
        ),
      ],
    ),
  );
}

String formatAmount(String raw) {
  if (raw.isEmpty) return '0.00';

  String normalized = raw.replaceFirst(',', '.');

  double? value = double.tryParse(normalized);

  if (value == null || value == 0) {
    return '0.00';
  } else {
    return value.toStringAsFixed(2);
  }
}
