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
    this.menuMaxHeight,
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
  final double? menuMaxHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        5.verticalSpace,
        if (topLabelText != null)
          Text(topLabelText!, style: FontPalette.hW600S14),
        5.verticalSpace,
        ShimmerWidget(
          isLoading: isLoading,
          child: SizedBox(
            height: 55.h,
            child: DropdownButtonFormField(
              key: dropdownKey,
              dropdownColor: dropdownColor,
              iconDisabledColor: kRedColor,

              hint: hintText != null
                  ? Text(hintText!, style: FontPalette.hW500S14)
                  : null,
              icon: suffixWidget != null ? const SizedBox.shrink() : null,
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
                labelStyle: FontPalette.hW500S16,
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
              menuMaxHeight: menuMaxHeight,
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

              onChanged: (enabled ?? true) ? onChanged : null,
              //onChanged: onChanged,
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

class SearchableDropdownWidget<T> extends StatefulWidget {
  final T? value;
  final List<T> items;
  final String? topLabelText;
  final String? hintText;
  final String Function(T) displayText;
  final Function(T?) onChanged;
  final Color? fillColor;
  final Color? borderColor;
  final bool isLoading;
  final bool isEnable;
  final bool readOnly;

  const SearchableDropdownWidget({
    super.key,
    this.value,
    required this.items,
    this.topLabelText,
    this.hintText,
    required this.displayText,
    required this.onChanged,
    this.fillColor,
    this.borderColor,
    this.isLoading = false,
    this.isEnable = false,
    this.readOnly=false
  });

  @override
  State<SearchableDropdownWidget<T>> createState() =>
      _SearchableDropdownWidgetState<T>();
}

class _SearchableDropdownWidgetState<T>
    extends State<SearchableDropdownWidget<T>> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _isExpanded = false;
  List<T> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    _filteredItems = widget.items;

    if (widget.value != null) {
      _searchController.text = widget.displayText(widget.value as T);
    }
  }

  @override
  void didUpdateWidget(SearchableDropdownWidget<T> oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.items != widget.items) {
      _filteredItems = widget.items;
    }

    if (oldWidget.value != widget.value) {
      if (widget.value != null) {
        _searchController.text = widget.displayText(widget.value as T);
      } else {
        _searchController.clear();
      }
    }
  }

  void _filterItems(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredItems = widget.items;
      } else {
        _filteredItems = widget.items.where((item) {
          return widget
              .displayText(item)
              .toLowerCase()
              .contains(query.toLowerCase());
        }).toList();
      }
    });
  }

  void _selectItem(T item) {
    setState(() {
      _searchController.text = widget.displayText(item);
      _isExpanded = false;
    });
    _focusNode.unfocus();
    widget.onChanged(item);
  }

  void _clearSelection() {
    setState(() {
      _searchController.clear();
      _filteredItems = widget.items;
      _isExpanded = false;
    });
    widget.onChanged(null);
  }

  @override
  void dispose() {
    _searchController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.topLabelText != null) ...[
          5.verticalSpace,
          Text(widget.topLabelText!, style: FontPalette.hW600S14),
          5.verticalSpace,
        ],

        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: widget.fillColor ?? Colors.white,
          ),
          child: TextFormField(
            controller: _searchController,
            focusNode: _focusNode,
            decoration: InputDecoration(
              hintText: widget.hintText ?? 'Search and select...',
              hintStyle: FontPalette.hW500S14.copyWith(color: Colors.grey),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12.w,
                vertical: 14.h,
              ),
              suffixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (_searchController.text.isNotEmpty)
                    IconButton(
                      icon: Icon(Icons.clear, size: 18.sp, color: Colors.grey),
                      onPressed: _clearSelection,
                    ),
                  IconButton(
                    icon: Icon(
                      _isExpanded
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      size: 20.sp,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _isExpanded = !_isExpanded;
                      });
                      if (_isExpanded) {
                        _focusNode.requestFocus();
                      } else {
                        _focusNode.unfocus();
                      }
                    },
                  ),
                ],
              ),
            ),
            onChanged: (value) {
              _filterItems(value);
              if (!_isExpanded) {
                setState(() {
                  _isExpanded = true;
                });
              }
            },
            onTap: () {
              setState(() {
                _isExpanded = true;
              });
            },
          ),
        ),

        if (_isExpanded) ...[
          4.verticalSpace,
          Container(
            constraints: BoxConstraints(maxHeight: 200.h),
            decoration: BoxDecoration(
              border: Border.all(color: widget.borderColor ?? kBlack),
              borderRadius: BorderRadius.circular(8.r),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: widget.isLoading
                ? Center(child: CircularProgressIndicator())
                : _filteredItems.isEmpty
                ? Padding(
                    padding: EdgeInsets.all(16.w),
                    child: Text(
                      'No items found',
                      style: FontPalette.hW500S14.copyWith(color: Colors.grey),
                    ),
                  )
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: _filteredItems.length,
                    itemBuilder: (context, index) {
                      final item = _filteredItems[index];
                      final isSelected = widget.value == item;

                      return InkWell(
                        onTap: () => _selectItem(item),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.w,
                            vertical: 12.h,
                          ),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? kPrimaryColor.withOpacity(0.1)
                                : Colors.transparent,
                            border: index < _filteredItems.length - 1
                                ? Border(
                                    bottom: BorderSide(
                                      color: Colors.grey.shade200,
                                    ),
                                  )
                                : null,
                          ),
                          child: Text(
                            widget.displayText(item),
                            style: FontPalette.hW500S14.copyWith(
                              color: isSelected ? kPrimaryColor : Colors.black,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ],
    );
  }
}
