import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/routes/routes.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/date_picker/date_picker_container.dart';
import 'package:admin_v2/shared/widgets/divider/divider_widget.dart';
import 'package:admin_v2/shared/widgets/dropdown_field_widget/dropdown_field_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'New Orders'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          dividerWidget(height: 6.h),
          8.verticalSpace,
          SizedBox(
            height: 40.h,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 12.w),
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              shrinkWrap: true,
              itemBuilder: (context, i) {
                return Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(right: 8.w),
                  height: 40.h,
                  width: 106.w,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(44.r),
                  ),
                  child: Text('New', style: FontPalette.hW500S16),
                );
              },
            ),
          ),
          MainPadding(
            child: Column(
              children: [
                10.verticalSpace,
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
                16.verticalSpace,
                Container(
                  height: 112.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: kLightBorderColor),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(child: _rowCheckBox()),
                          Expanded(child: _rowCheckBox()),
                          Expanded(child: _rowCheckBox()),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12.w, right: 12.w),
                        child: Row(
                          children: [
                            Expanded(
                              child: DatePickerContainer(
                                hintText: 'Pls',
                                changeDate: () {},
                              ),
                            ),
                            8.horizontalSpace,
                            Expanded(
                              child: DatePickerContainer(
                                hintText: 'Pls',
                                changeDate: () {},
                              ),
                            ),
                            8.horizontalSpace,
                            Container(
                              width: 39.w,
                              height: 44.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                border: Border.all(color: kPrimaryColor),
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
                  ),
                ),
                12.verticalSpace,
                Container(
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
                              'Order: 6756547635',
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
                        name: 'John Doe',
                        name2: '1234567890',
                      ),
                      16.verticalSpace,
                      _rowWidget(
                        label: 'Date',
                        label1: "Time",
                        name: '27 Mar 2025',
                        name2: '01:00 PM',
                      ),
                      10.verticalSpace,

                      _containerWidget(name: 'Total :', status: ' AED 100'),
                      10.verticalSpace,

                      _containerWidget(name: 'Delivery agent :', status: ' NA'),
                      10.verticalSpace,
                      Row(
                        children: [
                          10.horizontalSpace,
                          Expanded(
                            flex: 1,
                            child: DropDownFieldWidget(
                              hintStyle: FontPalette.hW500S12,

                              labelText: 'Order placed',
                              inputBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: BorderSide(
                                  color: Color(0XFFB7C6C2),
                                ),
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
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
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
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                child: Text(
                                  'View order',
                                  style: FontPalette.hW700S14.copyWith(
                                    color: kWhite,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      10.verticalSpace,
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

Widget _rowCheckBox() {
  return Row(
    children: [
      Checkbox(
        side: BorderSide(color: Color(0xFFCBD7D4), width: 1.5),
        activeColor: kPrimaryColor,
        shape: const CircleBorder(),
        value: false,
        onChanged: (v) {},
      ),
      Text('Order date', style: FontPalette.hW500S13),
    ],
  );
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
