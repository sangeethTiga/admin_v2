import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget dateCardWidget({String? name, String? date}) {
  return Container(
    margin: EdgeInsets.only(left: 3.w),
    height: 48.h,
    width: 40.w,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0Xff08493d),
          Color(0Xff08493d),
          Color(0Xff08493d).withOpacity(0.5),
        ],
        stops: [0.0, 0.0, 0.6],
      ),
      borderRadius: BorderRadius.circular(6.r),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(name ?? '', style: FontPalette.hW700S13.copyWith(color: kWhite)),
        Text(date ?? '', style: FontPalette.hW400S10.copyWith(color: kWhite)),
      ],
    ),
  );
}
