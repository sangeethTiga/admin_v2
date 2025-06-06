import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/widgets/buttons/custom_material_button.dart';
import 'package:admin_v2/shared/widgets/date_picker/date_picker_container.dart';
import 'package:admin_v2/shared/widgets/dropdown_field_widget/dropdown_field_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:admin_v2/shared/widgets/text_fields/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class StockUpdateCard extends StatelessWidget {
  const StockUpdateCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600.h,

      child: Column(
        children: [
          MainPadding(
            top: 19.5.h,
            left: 12.w,
            right: 12.w,
            bottom: 15.5.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Stock Details', style: FontPalette.hW700S14),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset('assets/icons/x-close.svg'),
                ),
              ],
            ),
          ),
          Divider(color: kBorderColor, thickness: 1),
          10.verticalSpace,
          MainPadding(
            top: 0,
            child: Column(
              children: [
                DropDownFieldWidget(
                  labelText: 'All products',
                  items: [],
                  inputBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(color: Color(0XFFB7C6C2)),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: SvgPicture.asset(
                      'assets/icons/Arrow - Right (2).svg',
                    ),
                  ),
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
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 14.h,
                    horizontal: 8.w,
                  ),

                  hintText: 'Search product offers',
                  hintStyle: FontPalette.hW500S12,
                ),
                12.verticalSpace,
                Container(
                  // alignment: Alignment.center,
                  height: 64.h,
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 12.h, left: 12.w),
                  decoration: BoxDecoration(
                    color: Color(0XFFEFF1F1),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Current stock : 10', style: FontPalette.hW500S13),
                      Text('Total stock : 0', style: FontPalette.hW500S13),
                    ],
                  ),
                ),
                10.verticalSpace,
                DatePickerContainer(hintText: '', changeDate: () {}),
                10.verticalSpace,

                TextFeildWidget(
                  borderColor: kBlack,
                  hight: 48.h,
                  fillColor: kWhite,

                  inputBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(color: Color(0XFFB7C6C2)),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 14.h,
                    horizontal: 8.w,
                  ),

                  hintText: 'Enter a price per unit',
                  hintStyle: FontPalette.hW500S12,
                ),
                10.verticalSpace,

                TextFeildWidget(
                  borderColor: kBlack,
                  hight: 48.h,
                  fillColor: kWhite,

                  inputBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(color: Color(0XFFB7C6C2)),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 14.h,
                    horizontal: 8.w,
                  ),

                  hintText: '0.0',
                  hintStyle: FontPalette.hW500S12,
                ),
              ],
            ),
          ),
          10.verticalSpace,
          Divider(color: kBorderColor, thickness: 1),
          10.verticalSpace,
          MainPadding(
            child: Row(
              children: [
                Expanded(
                  child: CustomMaterialBtton(
                    onPressed: () {},
                    buttonText: 'Cancel',
                    color: kWhite,
                    textColor: kPrimaryColor,
                  ),
                ),
                10.horizontalSpace,
                Expanded(
                  child: CustomMaterialBtton(
                    onPressed: () {},
                    buttonText: 'Submit',
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
