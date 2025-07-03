import 'package:admin_v2/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void commonnShowBottomSheet({
  required BuildContext context,
  required Widget child,
}) {
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
    builder: (context) => child,
  );
}
