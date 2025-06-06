import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppbarWidget({
    super.key,
    this.title,
    this.logo = false,
    this.centerTitle = false,
    this.actions = const [],
    this.color = kWhite,
    this.iconColor,
    this.actionTitle,
    this.titleColor,
    this.shadow = false,
    this.hideLeading = false,
    this.height = kToolbarHeight,
  });

  final String? title, actionTitle;
  final bool logo, shadow, centerTitle;
  final List<Widget> actions;
  final Color? color, iconColor;
  final bool hideLeading;
  final Color? titleColor;
  final double height;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: height,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(color: iconColor, size: 20),
      backgroundColor: color,
      elevation: shadow ? null : 0,
      leadingWidth: logo ? 22.w : null,
      shape: Border(
        bottom: BorderSide(
          color: shadow ? kBlack : Colors.transparent,
          width: 0.25,
        ),
      ),
      leading: hideLeading
          ? null
          : IconButton(
              onPressed: () {
                Navigator.maybePop(context);
              },
              icon: Icon(Icons.arrow_back_ios, color: iconColor ?? kBlack),
            ),
      titleSpacing: Navigator.canPop(context) == true ? 0 : null,
      title: title != null ? Text(title!, style: FontPalette.hW700S14) : null,
      centerTitle: true,
      actions: actionTitle != null ? [const VerticalDivider()] : actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
