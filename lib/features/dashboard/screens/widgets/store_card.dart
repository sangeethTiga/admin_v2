import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/shared/app/list/common_map.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/widgets/dropdown_field_widget/dropdown_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class StoreDropdown extends StatelessWidget {
  final StoreResponse? selectedStore;
  final List<StoreResponse>? storeList;
  final bool isLoading;
  final ValueChanged<StoreResponse?> onStoreChanged;

  const StoreDropdown({
    super.key,
    required this.selectedStore,
    required this.storeList,
    required this.isLoading,
    required this.onStoreChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropDownFieldWidget(
      isLoading: isLoading,
      prefixIcon: Container(
        margin: EdgeInsets.only(left: 12.w),
        child: SvgPicture.asset(
          'assets/icons/package-box-pin-location.svg',
          width: 20.w,
          height: 20.h,
          fit: BoxFit.contain,
        ),
      ),
      borderColor: kBlack,
      value: selectedStore,
      items:
          storeList?.map((store) {
            return DropdownMenuItem<StoreResponse>(
              value: store,
              child: Text(
                store.storeName ?? '',
                maxLines: 1,
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
              ),
            );
          }).toList() ??
          [],
      fillColor: const Color(0XFFEFF1F1),
      onChanged: (v) {
        onStoreChanged(v);
      },
      labelText: '',
    );
  }
}

class DateDropdown extends StatelessWidget {
  final ListOfDemo? selectedDate;
  final ValueChanged<ListOfDemo?> onDateChanged;

  const DateDropdown({
    super.key,
    required this.selectedDate,
    required this.onDateChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropDownFieldWidget(
      borderColor: kBlack,
      value: selectedDate,
      items: custDate.map((date) {
        return DropdownMenuItem<ListOfDemo>(
          value: date,
          child: Text(date.name ?? '', overflow: TextOverflow.ellipsis),
        );
      }).toList(),
      fillColor: const Color(0XFFEFF1F1),
      onChanged: (v) {
        onDateChanged(v);
      },
    );
  }
}
