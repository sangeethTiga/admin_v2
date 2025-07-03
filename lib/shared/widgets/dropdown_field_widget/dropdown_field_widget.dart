import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class DropDownFieldWidget extends StatelessWidget {
  const DropDownFieldWidget({
    super.key,
    this.labelText,
    this.topLabelText,
    this.hintText,
    this.textStyle,
    this.hintStyle,
    this.isHint = false,
    this.textInputType,
    this.textCapitalization = TextCapitalization.none,
    this.textDirection,
    this.maxLines,
    this.maxLength,
    this.couterText,
    this.controller,
    this.inputBorder = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: Colors.transparent),
    ),
    this.borderColor,
    this.prefixIcon,
    this.suffixWidget,
    this.autovalidateMode,
    this.validator,
    this.errorStyle = true,
    this.focusNode,
    this.enabled,
    this.isDense = true,
    this.contentPadding = const EdgeInsets.all(14),
    this.constraints,
    this.readOnly,
    this.onSaved,
    this.onChanged,
    this.onTap,
    this.obscureText,
    this.floatingLabelBehavior,
    this.fillColor,
    this.dropdownColor = kWhite,
    this.errorColor = kWhite,
    this.fontSize,
    this.hintSize,
    this.textAlign = TextAlign.start,
    this.fontColor,
    this.dropdownKey,
    this.value,
    this.isLoading = false,
    required this.items,
  });

  final GlobalKey<FormFieldState>? dropdownKey;
  final dynamic value;
  final List items;
  final Widget? suffixWidget;
  final String? labelText;
  final String? topLabelText;
  final String? hintText;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final bool isHint;
  final TextInputType? textInputType;
  final TextCapitalization textCapitalization;
  final TextDirection? textDirection;
  final int? maxLines, maxLength;
  final String? couterText;
  final InputBorder? inputBorder;
  final Color? borderColor;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final AutovalidateMode? autovalidateMode;
  final String? Function(dynamic)? validator;
  final FocusNode? focusNode;
  final bool? enabled;
  final bool? readOnly;
  final bool? isDense;
  final Function(dynamic)? onSaved;
  final Function(dynamic)? onChanged;
  final Function()? onTap;
  final BoxConstraints? constraints;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final EdgeInsetsGeometry? contentPadding;
  final bool? obscureText;
  final bool errorStyle;
  final Color? fontColor, fillColor, dropdownColor, errorColor;
  final double? fontSize, hintSize;
  final TextAlign textAlign;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        5.verticalSpace,
        if (topLabelText != null)
          Text(topLabelText!, style: FontPalette.hW500S13),
        5.verticalSpace,
        ShimmerWidget(
          isLoading: isLoading,
          child: SizedBox(
            height: 65.h,
            child: DropdownButtonFormField(
              key: dropdownKey,
              dropdownColor: dropdownColor,
              iconDisabledColor: kRedColor,

              // icon: const SizedBox.shrink(), // Hides default icon in all states
              hint: hintText != null
                  ? Text(hintText!, style: FontPalette.hW500S14)
                  : null,
              decoration: InputDecoration(
                floatingLabelBehavior: floatingLabelBehavior,
                labelText: isHint ? null : labelText,
                border: inputBorder,
                focusedBorder: inputBorder?.copyWith(
                  borderSide: const BorderSide(color: kPrimaryColor),
                ),
                disabledBorder: inputBorder,
                enabledBorder: inputBorder,
                focusedErrorBorder: inputBorder,
                errorBorder: inputBorder,
                labelStyle: FontPalette.hW500S12,
                fillColor: fillColor,
                filled: true,
                prefixIcon: prefixIcon,
                prefixIconConstraints: BoxConstraints(
                  minWidth: 30.w,
                  minHeight: 20.h,
                ),
                suffix: suffixWidget,
                hintStyle:
                    hintStyle ??
                    TextStyle(fontSize: hintSize ?? 12.sp, color: kBlueColor1),
                isDense: isDense,
                errorStyle: errorStyle
                    ? TextStyle(color: errorColor)
                    : const TextStyle(fontSize: 0.01),
                constraints: constraints,
                contentPadding: contentPadding,
              ),
              style:
                  textStyle ??
                  FontPalette.hW400S10.copyWith(
                    color: Colors.black,
                    fontSize: fontSize ?? 13.sp,
                    fontWeight: FontWeight.w400,
                  ),
              isExpanded: true,
              value: items.any((item) => item.value == value) ? value : null,
              items: items.map<DropdownMenuItem<dynamic>>((item) {
                if (item is DropdownMenuItem) return item;
                if (item is String) {
                  return DropdownMenuItem(value: item, child: Text(item));
                }
                throw Exception("Invalid dropdown item type");
              }).toList(),
              onChanged: onChanged,
              validator: validator,
            ),
          ),
        ),
      ],
    );
  }
}

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({
    super.key,
    this.child,
    this.isLoading = true,
    this.isError = false,
    this.shimmerChild,
    this.width,
    this.height,
    this.color = kWhite,
    this.baseColor,
    this.highlightColor,
    this.radius = 4,
  });

  final Widget? child;
  final Widget? shimmerChild;
  final bool isLoading, isError;
  final double? width, height;
  final double radius;
  final Color? color, baseColor, highlightColor;

  @override
  Widget build(BuildContext context) {
    if (isError) return const SizedBox();
    if (isLoading) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Shimmer.fromColors(
          baseColor: baseColor ?? kColorShimmerBase,
          highlightColor: highlightColor ?? kColorShimmerHighlight,
          child: height != null
              ? Container(
                  color: color,
                  width: width ?? double.infinity,
                  height: height ?? double.infinity,
                )
              : shimmerChild ?? child ?? const SizedBox(),
        ),
      );
    }
    return child ?? const SizedBox();
  }
}
