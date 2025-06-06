import 'package:admin_v2/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget dividerWidget({double ?height,Color?color}) {
  return Divider(
    color:color?? kPrimaryColor1,
    thickness:height?? 1.h,
  );
}