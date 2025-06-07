import 'package:admin_v2/features/products/widgets/stock_update_card.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/divider/divider_widget.dart';
import 'package:admin_v2/shared/widgets/dropdown_field_widget/dropdown_field_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Products'),
      body: Column(
        children: [
          dividerWidget(height: 6.h),
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
                  suffixWidget: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SvgPicture.asset('assets/icons/Arrow - Right.svg'),
                  ),
                  labelText: 'Demo store',
                ),
                14.verticalSpace,
                Row(
                  children: [
                    Expanded(
                      child: DropDownFieldWidget(
                        hintStyle: FontPalette.hW500S12,

                        labelText: 'All business types',
                        inputBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide(color: Color(0XFFB7C6C2)),
                        ),
                        items: [],
                        suffixWidget: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: SvgPicture.asset(
                            'assets/icons/Arrow - Right (2).svg',
                            height: 16.h,
                          ),
                        ),
                      ),
                    ),
                    10.horizontalSpace,
                    Expanded(
                      child: DropDownFieldWidget(
                        hintStyle: FontPalette.hW500S14,
                        labelText: 'Select category',
                        items: [],
                        inputBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide(color: Color(0XFFB7C6C2)),
                        ),
                        suffixWidget: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: SvgPicture.asset(
                            'assets/icons/Arrow - Right (2).svg',
                          ),
                        ),
                        // suffixWidget: Padding(
                        //   padding: const EdgeInsets.only(left: 1, right: 1),
                        //   child: SvgPicture.asset(
                        //     'assets/icons/Arrow - Right (2).svg',
                        //   ),
                        // ),
                      ),
                    ),
                  ],
                ),

                DropDownFieldWidget(
                  hintStyle: FontPalette.hW500S14,
                  labelText: 'All products',
                  items: [],
                  inputBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(color: Color(0XFFB7C6C2)),
                  ),
                  suffixWidget: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: SvgPicture.asset(
                      'assets/icons/Arrow - Right (2).svg',
                    ),
                  ),
                  // suffixWidget: Padding(
                  //   padding: const EdgeInsets.only(left: 1, right: 1),
                  //   child: SvgPicture.asset(
                  //     'assets/icons/Arrow - Right (2).svg',
                  //   ),
                  // ),
                ),
                DropDownFieldWidget(
                  hintStyle: FontPalette.hW500S14,
                  labelText: 'All products',
                  items: [],
                  inputBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(color: Color(0XFFB7C6C2)),
                  ),
                  suffixWidget: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: SvgPicture.asset('assets/icons/Scaner.svg'),
                  ),
                  // suffixIcon: Padding(
                  //   padding: const EdgeInsets.only(left: 1, right: 1),
                  //   child: SvgPicture.asset(
                  //     'assets/icons/Arrow - Right (2).svg',
                  //   ),
                  // ),
                ),
                14.verticalSpace,
                Container(
                  height: 122.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(color: Color(0XFFF4F5F5)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Row(
                        children: [
                          7.horizontalSpace,
                          Image.asset('assets/images/image 18079.png'),
                          12.horizontalSpace,

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Banan Marrow',
                                      style: FontPalette.hW700S13,
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
                                    6.horizontalSpace,
                                  ],
                                ),
                                6.verticalSpace,

                                Row(
                                  children: [
                                    Text(
                                      'Price : 120',
                                      style: FontPalette.hW500S13,
                                    ),
                                    10.horizontalSpace,
                                    Text(
                                      'QTY : 120',
                                      style: FontPalette.hW500S13,
                                    ),
                                  ],
                                ),
                                4.verticalSpace,
                                Text(
                                  'Prod Code : 8977878',
                                  style: FontPalette.hW500S13,
                                ),
                                4.verticalSpace,

                                GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(12.r),
                                          topRight: Radius.circular(12.r),
                                        ),
                                      ),
                                      backgroundColor: kWhite,
                                      context: context,
                                      isScrollControlled: true,
                                      builder: (context) {
                                        return StockUpdateCard();
                                      },
                                    );
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 32.h,
                                    width: 108.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6.r),
                                      border: Border.all(color: kPrimaryColor),
                                    ),
                                    child: Text(
                                      'Stock Update',
                                      style: FontPalette.hW700S13.copyWith(
                                        color: kPrimaryColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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
