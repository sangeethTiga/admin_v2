import 'package:admin_v2/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimePickerContainer extends StatelessWidget {
  final String? labelText;
  final String? value;
  final String hintText;
  final bool isDisable;
  final Function(String) onTimePicked;

  const TimePickerContainer({
    super.key,
    this.labelText,
    this.value,
    this.hintText = 'Select Time',
    this.isDisable = false,
    required this.onTimePicked,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isDisable
          ? null
          : () async {
              final picked = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );
              if (picked != null) {
                onTimePicked(picked.format(context));
              }
            },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (labelText != null)
            Padding(
              padding: EdgeInsets.only(bottom: 4.h),
              child: Text(
                labelText!,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          Container(
            alignment: Alignment.center,
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              border: Border.all(color: kColorLight4),
              color: kWhite,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    value?.isNotEmpty == true ? value! : hintText,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: value?.isNotEmpty == true
                          ? FontWeight.w500
                          : FontWeight.bold,
                      color: value?.isNotEmpty == true
                          ? Colors.black
                          : Colors.grey[600],
                    ),
                  ),
                ),
                const SizedBox(width: 16),

                // Icon(
                //   Icons.access_time_rounded, 
                //   color: isDisable ? Colors.grey : Colors.black,
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
