import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';

class FontPalette {
  static const themeFont = "Manrope";

  static TextTheme get textLightTheme {
    return Typography.englishLike2018.apply(
      fontSizeFactor: 0.8.rf,
      bodyColor: kBlack,
      fontFamily: FontPalette.themeFont,
    );
  }

  static TextStyle hW700S23 = TextStyle(
    fontSize: 23.rf,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    color: kBlack,
  );

  static TextStyle hW800S26 = TextStyle(
    fontSize: 26.rf,
    fontWeight: FontWeight.w800,
    letterSpacing: 0,
    color: kBlack,
  );
  static TextStyle hW700S20 = TextStyle(
    fontSize: 20.rf,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    color: kBlack,
  );
  static TextStyle hW700S16 = TextStyle(
    fontSize: 16.rf,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
  );
  static TextStyle hW500S16CGrey = TextStyle(
    fontSize: 16.rf,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    color: Color(0xff666C6D),
  );

  static TextStyle hW700S14 = TextStyle(
    fontSize: 14.rf,
    fontWeight: FontWeight.w700,
  );
  static TextStyle hW400S14 = TextStyle(
    fontSize: 14.rf,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
  );
  static TextStyle hW600S14 = TextStyle(
    fontSize: 14.rf,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
  );
  static TextStyle hW600S20 = TextStyle(
    fontSize: 20.rf,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
  );
  static TextStyle hW600S12 = TextStyle(
    fontSize: 12.rf,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
  );
  static TextStyle hW700S13 = TextStyle(
    fontSize: 13.rf,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    // height: 24.6.h,
  );
  static TextStyle hW400S13 = TextStyle(
    fontSize: 13.rf,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    // height: 24.6.h,
  );
  static TextStyle hW600S13 = TextStyle(
    fontSize: 13.rf,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    // height: 24.6.h,
  );
  static TextStyle hW800S40 = TextStyle(
    fontSize: 40.rf,
    fontWeight: FontWeight.w800,
    letterSpacing: 0,
    // height: 24.6.h,
  );
  static TextStyle hW700S9 = TextStyle(
    fontSize: 9.rf,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    // height: 24.6.h,
  );
  static TextStyle hW600S11 = TextStyle(
    fontSize: 11.rf,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    // height: 28.8.h,
  );

  static TextStyle hW500S14 = TextStyle(
    fontSize: 14.rf,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    // height: 28.8.h,
  );
  static TextStyle hW800S16 = TextStyle(
    fontSize: 16.rf,
    fontWeight: FontWeight.w800,
    letterSpacing: 0,

    // height: 36.h,
  );
  static TextStyle hW800S20 = TextStyle(
    fontSize: 20.rf,
    fontWeight: FontWeight.w800,
    letterSpacing: 0,
    // height: 36.h,
  );
  static TextStyle hW500S13 = TextStyle(
    fontSize: 13.rf,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    // height: 40.8.h,
  );
  static TextStyle hW500S11 = TextStyle(
    fontSize: 11.rf,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    // height: 40.8.h,
  );
  static TextStyle hW500S12 = TextStyle(
    fontSize: 12.rf,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    // height: 40.8.h,
  );
  static TextStyle hW500S10 = TextStyle(
    fontSize: 10.rf,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    // height: 40.8.h,
  );
  static TextStyle hW500S16 = TextStyle(
    fontSize: 16.rf,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    // height: 40.8.h,
  );

  static TextStyle hW400S10 = TextStyle(
    fontSize: 10.rf,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    // height: 45.6.h,
  );
  static TextStyle hW700S11 = TextStyle(
    fontSize: 11.rf,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    // height: 50.4.h,
  );
  static TextStyle hW700S26 = TextStyle(
    fontSize: 26.rf,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    // height: 50.4.h,
  );
}

extension ResponsiveFontSize on num {
  double get rf {
    try {
      final screenWidth = ScreenUtil().screenWidth;
      if (screenWidth >= 768) {
        return (this * 1.4).sp;
      }
      return sp;
    } catch (e) {
      return toDouble();
    }
  }
}
