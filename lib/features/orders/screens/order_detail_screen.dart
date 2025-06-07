import 'package:admin_v2/features/products/screens/product_offers_screen.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/divider/divider_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Order Details'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            dividerWidget(height: 6.h),
            12.verticalSpace,
            Container(
              margin: EdgeInsets.only(bottom: 12.h, left: 12.w, right: 12.w),
              height: 235.h,
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
                          'Order: 76574657778',
                          style: FontPalette.hW700S13.copyWith(color: kBlack),
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
                  rowWidget(name: 'Reference number', status: "ONL -1234"),
                  8.verticalSpace,
                  rowWidget(name: 'Order date', status: '27 Mar 2025'),
                  8.verticalSpace,
                  rowWidget(name: 'Payment Mode', status: "Pay by cash"),
                  8.verticalSpace,

                  rowWidget(name: 'Payment status', status: "Not paid"),
                  8.verticalSpace,

                  rowWidget(name: 'Expected delivery', status: "28-Mar 2025"),
                  8.verticalSpace,
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
                  Text(
                    'View all',
                    style: FontPalette.hW600S14.copyWith(
                      color: kPrimaryColor,
                      decoration: TextDecoration.underline,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Banana - Robusta', style: FontPalette.hW700S13),
                      Text('AED 7.45', style: FontPalette.hW700S14),
                    ],
                  ),
                  6.verticalSpace,

                  Text('Unit price : AED 2.00', style: FontPalette.hW500S13),
                  4.verticalSpace,

                  Text('QTY : 12', style: FontPalette.hW500S13),

                  Divider(color: kBorderColor),
                ],
              ),
            ),

            MainPadding(
              top: 16.h,
              child: addItemDetails(
                image: 'Component 806.svg',
                expand: () {},
                label: 'Shipping Address',
                expandedWidget: Container(
                  decoration: BoxDecoration(color: kGreenColor),
                ),
                isExpand: true,
              ),
            ),
            MainPadding(
              top: 0.h,
              child: addItemDetails(
                image: 'Component 806 (1).svg',
                expand: () {},
                label: 'Billing Address',
                expandedWidget: Container(
                  decoration: BoxDecoration(color: kGreenColor),
                ),
                isExpand: true,
              ),
            ),
            MainPadding(
              child: Text(
                'PRIEC DETAILS',
                style: FontPalette.hW700S11.copyWith(color: Color(0XFF5E6566)),
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
                          'Mutton Tikka',
                          style: FontPalette.hW700S13.copyWith(color: kBlack),
                        ),
                        Spacer(),
                        SvgPicture.asset('assets/icons/Edit.svg'),
                        3.horizontalSpace,
                        Text(
                          'Edit',
                          style: FontPalette.hW700S14.copyWith(
                            color: kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),

                  dividerWidget(color: kLightBorderColor),
                  10.verticalSpace,
                  _rowWidget(name: 'Grand total', status: "AED 134.00"),
                  8.verticalSpace,
                  _rowWidget(name: 'Total before tax', status: 'AED 123'),
                  8.verticalSpace,
                  _rowWidget(name: 'Tax Incl', status: "AED 0.00"),
                  8.verticalSpace,

                  _rowWidget(name: 'Parcel Charge', status: "AED 0.00"),
                  8.verticalSpace,

                  _rowWidget(name: 'Discount', status: "AED 0.00"),
                  8.verticalSpace,

                  _rowWidget(name: 'Shipping Charge', status: "0.00"),
                  Divider(color: kBorderColor),
                  MainPadding(
                    bottom: 10.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Amount payable', style: FontPalette.hW700S14),
                        Text('AED 134.00', style: FontPalette.hW700S14),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
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
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
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
