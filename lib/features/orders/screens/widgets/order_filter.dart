import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/utils/helper/helper.dart';
import 'package:admin_v2/shared/widgets/buttons/custom_material_button.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class CommonOrderFilter extends StatefulWidget {
  final List<FilterCategory> categories;
  final Function(Map<String, List<int>>) onFiltersChanged;
  final String title;

  const CommonOrderFilter({
    super.key,
    required this.categories,
    required this.onFiltersChanged,
    this.title = 'Filter',
  });

  @override
  State<CommonOrderFilter> createState() => _CommonOrderFilterState();
}

class _CommonOrderFilterState extends State<CommonOrderFilter> {
  int _selectedFilterIndex = 0;
  late List<FilterCategory> _categories;

  @override
  void initState() {
    super.initState();

    _categories = List.from(widget.categories);
  }

  void _toggleFilter(int categoryIndex, int itemId) {
    setState(() {
      final category = _categories[categoryIndex];
      final updatedItems = category.items.map((item) {
        if (item.id == itemId) {
          return item.copyWith(isSelected: !item.isSelected);
        } else {
          return item.copyWith(isSelected: false);
        }
      }).toList();

      _categories[categoryIndex] = FilterCategory(
        title: category.title,
        items: updatedItems,
      );
    });

    _notifyFiltersChanged();
  }

  void _notifyFiltersChanged() {
    final filters = <String, List<int>>{};
    final filtersWithDetails = <String, List<Map<String, dynamic>>>{};

    for (final category in _categories) {
      final selectedItems = category.items.where((item) => item.isSelected);

      if (selectedItems.isNotEmpty) {
        filters[category.title] = selectedItems.map((item) => item.id).toList();

        filtersWithDetails[category.title] = selectedItems
            .map(
              (item) => {
                'id': item.id,
                'name': item.name,
                if (item.additionalData != null) ...item.additionalData!,
              },
            )
            .toList();
      }
    }
    widget.onFiltersChanged(filters);
  }

  void _clearAllFilters() {
    setState(() {
      _categories = _categories.map((category) {
        return FilterCategory(
          title: category.title,
          items: category.items
              .map((item) => item.copyWith(isSelected: false))
              .toList(),
        );
      }).toList();
    });
    _notifyFiltersChanged();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
      ),
      height: 550.h,
      child: Column(
        children: [
          MainPadding(
            top: 19.5.h,
            left: 12.w,
            right: 12.w,
            bottom: 15.5.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.title, style: FontPalette.hW700S14),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: SvgPicture.asset('assets/icons/x-close.svg'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(color: kBorderColor, thickness: 1),
          10.verticalSpace,

          Expanded(
            child: Row(
              children: [
                _buildFilterTabs(),
                const VerticalDivider(
                  color: kBorderColor,
                  width: 1,
                  thickness: 1,
                ),
                Expanded(child: _buildFilterContent()),
              ],
            ),
          ),
          MainPadding(
            child: Row(
              children: [
                Expanded(
                  child: CustomMaterialBtton(
                    onPressed: () {
                      _clearAllFilters();

                      context.pop(context);
                    },

                    textColor: kWhite,
                    buttonText: 'Clear',
                  ),
                ),
                6.horizontalSpace,
                Expanded(
                  child: CustomMaterialBtton(
                    buttonText: 'Apply',
                    onPressed: () {
                      context.pop(context);
                      _notifyFiltersChanged();
                    },

                    textColor: kWhite,
                  ),
                ),
              ],
            ),
          ),
          10.verticalSpace,
        ],
      ),
    );
  }

  Widget _buildFilterTabs() {
    return SizedBox(
      width: 155.w,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: _categories.length,
        itemBuilder: (context, index) {
          final category = _categories[index];
          return _FilterTab(
            title: category.title,
            index: index,
            badgeCount: category.selectedCount,
            isSelected: _selectedFilterIndex == index,
            onTap: (selectedIndex) {
              setState(() {
                _selectedFilterIndex = selectedIndex;
              });
            },
          );
        },
      ),
    );
  }

  Widget _buildFilterContent() {
    if (_categories.isEmpty) return const SizedBox.shrink();

    final selectedCategory = _categories[_selectedFilterIndex];

    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      itemCount: selectedCategory.items.length,
      itemBuilder: (context, index) {
        final item = selectedCategory.items[index];
        return _FilterItemTile(
          item: item,
          onTap: () => _toggleFilter(_selectedFilterIndex, item.id),
        );
      },
    );
  }
}

class _FilterTab extends StatelessWidget {
  final String title;
  final int index;
  final int badgeCount;
  final bool isSelected;
  final ValueChanged<int> onTap;

  const _FilterTab({
    required this.title,
    required this.index,
    required this.badgeCount,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(index),
      borderRadius: BorderRadius.circular(6.r),
      child: Container(
        height: 36.h,
        margin: EdgeInsets.only(bottom: 0.h, left: 8.w, right: 10.w, top: 14.h),
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: BoxDecoration(
          color: isSelected ? kPrimaryColor.withOpacity(0.1) : kWhite,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: isSelected ? kPrimaryColor : Colors.black87,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                  fontSize: 14.sp,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (badgeCount > 0) _Badge(count: badgeCount),
          ],
        ),
      ),
    );
  }
}

class _FilterItemTile extends StatelessWidget {
  final FilterItem item;
  final VoidCallback onTap;

  const _FilterItemTile({required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 8.w),
        child: Row(
          children: [
            Expanded(
              child: Text(
                item.name,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: item.isSelected ? kPrimaryColor : Colors.black87,
                  fontWeight: item.isSelected
                      ? FontWeight.w600
                      : FontWeight.w400,
                ),
              ),
            ),
            if (item.isSelected)
              Icon(Icons.check_circle, color: kPrimaryColor, size: 20.w)
            else
              Icon(Icons.circle_outlined, color: Colors.grey[400], size: 20.w),
          ],
        ),
      ),
    );
  }
}

class _Badge extends StatelessWidget {
  final int count;
  const _Badge({required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 17.h,
      width: 17.w,
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        shape: BoxShape.circle,
      ),
      child: Text(
        '$count',
        style: TextStyle(
          color: kWhite,
          fontSize: 9.sp,
          fontWeight: FontWeight.w700,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
