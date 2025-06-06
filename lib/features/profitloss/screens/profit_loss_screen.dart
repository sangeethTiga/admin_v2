import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/date_picker/date_picker_container.dart';
import 'package:admin_v2/shared/widgets/divider/divider_widget.dart';
import 'package:admin_v2/shared/widgets/dropdown_field_widget/dropdown_field_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ProfitLossScreen extends StatelessWidget {
  const ProfitLossScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Profit/Loss'),
      body: Column(
        children: [
          dividerWidget(height: 6.h),
          14.verticalSpace,
          MainPadding(
            child: Column(
              spacing: 12.h,
              children: [
                DropDownFieldWidget(
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(
                      left: 12.h,
                      top: 12.w,
                      bottom: 6.h,
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/package-box-pin-location.svg',
                      height: 20.h,
                      width: 20.w,
                    ),
                  ),
                  borderColor: kBlack,
                  items: [],
                  fillColor: Color(0XFFEFF1F1),
                  // suffixIcon: SvgPicture.asset(
                  //   'assets/icons/Arrow - Right.svg',
                  // ),
                  hintText: 'Demo store',
                ),

                Row(
                  children: [
                    Expanded(
                      child: DatePickerContainer(
                        hintText: 'Pls',
                        changeDate: () {},
                      ),
                    ),
                    12.horizontalSpace,
                    Expanded(
                      child: DatePickerContainer(
                        hintText: 'Pls',
                        changeDate: () {},
                      ),
                    ),
                  ],
                ),

                2.verticalSpace,
                Container(
                  // height: 120.h,
                  width: double.infinity,
                  // padding: EdgeInsets.only(left: 12.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(color: kLightBorderColor),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      12.verticalSpace,
                      Padding(
                        padding: EdgeInsets.only(left: 12.w),
                        child: Text('Revenue', style: FontPalette.hW700S16),
                      ),
                      12.verticalSpace,
                      _rowWidget(name: 'Tea counter', status: '0.0'),
                      _rowWidget(name: 'Sales', status: '0.0'),
                      _rowWidget(name: 'Other receipt', status: '0.0'),
                      _rowWidget(name: 'VAT Receivable', status: '0.0'),
                      _rowWidget(name: 'Customer Service', status: '0.0'),
                      Container(
                        width: double.infinity,
                        height: 45.h,
                        decoration: BoxDecoration(
                          color: kPrimaryColor1,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12.r),
                            bottomRight: Radius.circular(12.r),
                          ),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 12.w),
                              child: Text(
                                'Total Revenue',
                                style: FontPalette.hW700S14,
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(right: 12.w),
                              child: Text('0.0', style: FontPalette.hW700S14),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  // height: 120.h,
                  width: double.infinity,
                  // padding: EdgeInsets.only(left: 12.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(color: kLightBorderColor),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      12.verticalSpace,
                      Padding(
                        padding: EdgeInsets.only(left: 12.w),
                        child: Text('Expense', style: FontPalette.hW700S16),
                      ),
                      12.verticalSpace,
                      _rowWidget(name: 'Tea counter', status: '0.0'),
                      _rowWidget(name: 'Sales', status: '0.0'),
                      _rowWidget(name: 'Other receipt', status: '0.0'),
                      _rowWidget(name: 'VAT Receivable', status: '0.0'),
                      _rowWidget(name: 'Customer Service', status: '0.0'),
                      Container(
                        width: double.infinity,
                        height: 45.h,
                        decoration: BoxDecoration(
                          color: kPrimaryColor1,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12.r),
                            bottomRight: Radius.circular(12.r),
                          ),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 12.w),
                              child: Text(
                                'Total Expense',
                                style: FontPalette.hW700S14,
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(right: 12.w),
                              child: Text('0.0', style: FontPalette.hW700S14),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _rowWidget({String? name, String? status}) {
  return MainPadding(
    left: 12,
    top: 0.h,
    bottom: 8.h,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name ?? '', style: FontPalette.hW400S13),

        Text(status ?? '', style: FontPalette.hW400S13),
      ],
    ),
  );
}
