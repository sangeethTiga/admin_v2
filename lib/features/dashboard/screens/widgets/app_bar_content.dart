import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';



PreferredSizeWidget buildAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: kPrimaryColor,
    toolbarHeight: 40.h,
    iconTheme: IconThemeData(color: kWhite),
    elevation: 0,
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(30.h),
      child: MainPadding(
        left: 8.w,
        right: 0,
        bottom: 8.h,
        child: Builder(
          builder: (context) => Row(
            children: [
              IconButton(
                icon: Icon(Icons.menu, color: kWhite),
                onPressed: () => Scaffold.of(context).openDrawer(),
                tooltip: 'Open menu',
              ),
              4.horizontalSpace,
              SvgPicture.asset('assets/icons/Logo.svg', height: 18, width: 18),
            ],
          ),
        ),
      ),
    ),
  );
}
