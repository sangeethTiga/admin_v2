import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/buttons/custom_material_button.dart';
import 'package:admin_v2/shared/widgets/date_picker/date_picker_container.dart';
import 'package:admin_v2/shared/widgets/divider/divider_widget.dart';
import 'package:admin_v2/shared/widgets/dropdown_field_widget/dropdown_field_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:admin_v2/shared/widgets/tables/custom_table.dart';
import 'package:flutter/material.dart';
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

                CustomMaterialBtton(
                  onPressed: () {},
                  buttonText: 'View Results',
                ),

                SizedBox(
                  height: 260.h,
                  child: CommonTableWidget(
                    headers: [
                      "#",
                      "BILL NO",
                      "ORDER DATE",
                      "COUNT",
                      "PARCEL CHARGE",
                    ],
                    columnFlex: [2, 2, 2, 2, 2],
                    data: [],
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
