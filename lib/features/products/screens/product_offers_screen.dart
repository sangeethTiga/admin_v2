import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/date_picker/date_picker_container.dart';
import 'package:admin_v2/shared/widgets/divider/divider_widget.dart';
import 'package:admin_v2/shared/widgets/dropdown_field_widget/dropdown_field_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:admin_v2/shared/widgets/text_fields/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ProductOffersScreen extends StatelessWidget {
  const ProductOffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.r),
        ),
        backgroundColor: kPrimaryColor,
        onPressed: () {},
        child: Icon(Icons.add, color: kWhite, size: 25.h),
      ),
      appBar: AppbarWidget(title: 'Product Offers'),
      body: Column(
        children: [
          dividerWidget(height: 6.h),
          16.verticalSpace,
          MainPadding(
            child: Column(
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
                14.verticalSpace,
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
                12.verticalSpace,
                TextFeildWidget(
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
                  hintText: 'Search product offers',
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset('assets/icons/x-close.svg'),
                  ),
                ),
                16.verticalSpace,
                Container(
                  margin: EdgeInsets.only(bottom: 12.h),
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
                              'Mutton Tikka',
                              style: FontPalette.hW700S13.copyWith(
                                color: kBlack,
                              ),
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
                      rowWidget(name: 'Offer', status: "Big deals"),
                      8.verticalSpace,
                      rowWidget(name: 'Offer price', status: 'AED 123'),
                      8.verticalSpace,
                      rowWidget(name: 'Discount', status: "10%"),
                      8.verticalSpace,

                      rowWidget(name: 'From date', status: "23-mar-2025"),
                      8.verticalSpace,

                      rowWidget(name: 'To date', status: "28-mar 2025"),
                      8.verticalSpace,

                      rowWidget(name: 'Status', status: "Paid"),
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

Widget rowWidget({String? name, String? status}) {
  return MainPadding(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(flex: 3, child: Text(name ?? '', style: FontPalette.hW600S13)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Text(':'),
        ),
        Expanded(
          flex: 3,
          child: Text(status ?? '', style: FontPalette.hW400S13),
        ),
      ],
    ),
  );
}
