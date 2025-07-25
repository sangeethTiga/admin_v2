import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

// class DatePickerContainer extends StatefulWidget {
//   final String? hintText;
//   final String? value;
//   final Function changeDate;
//   final bool isUpdateDateText;
//   final bool clearDate;
//   final bool isDisable;
//   final DateTime? initialDate;
//   final DateTime? firstDate;
//   final String? labelText;

//   const DatePickerContainer({
//     super.key,
//     this.hintText,
//     this.value,
//     this.isUpdateDateText = false,
//     required this.changeDate,
//     this.clearDate = false,
//     this.isDisable = false,
//     this.initialDate,
//     this.firstDate,
//     this.labelText,
//   });

//   @override
//   State<DatePickerContainer> createState() => _DatePickerContainerState();
// }

// class _DatePickerContainerState extends State<DatePickerContainer> {
//   DateTime selectedDate = DateTime.now();
//   String? pickedDate;

//   @override
//   void initState() {
//     super.initState();
//     _initFunction();
//   }

//   @override
//   void didUpdateWidget(DatePickerContainer oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     if (widget.value != oldWidget.value) {
//       _initFunction();
//     }
//   }

//   void _initFunction() {
//     log("WHat happend${widget.value} - ${widget.clearDate}");

//     if (widget.value == null) {
//       if (widget.clearDate == false) {
//         pickedDate = apiFormat.format(selectedDate);
//       } else {
//         pickedDate = null;
//       }
//     } else {
//       pickedDate = widget.value;
//       try {
//         selectedDate = apiFormat.parse(widget.value!);
//       } catch (e) {
//         log("Error parsing date: $e");
//         selectedDate = DateTime.now();
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.center,
//       height: 60,
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//       decoration: BoxDecoration(
//         borderRadius: const BorderRadius.all(Radius.circular(8)),
//         border: Border.all(color: kColorLight4),
//         color: widget.isDisable ? Colors.grey[100] : Colors.white,
//       ),
//       child: InkWell(
//         onTap: () async {
//           FocusManager.instance.primaryFocus?.unfocus();

//           DateTime? picked = await showDatePicker(
//             context: context,
//             initialDate:
//                 widget.initialDate ?? widget.firstDate ?? DateTime.now(),
//               firstDate: widget.firstDate ?? DateTime(2015),
//            // firstDate: widget.firstDate ?? DateTime.now(),

//             lastDate: DateTime(2101),
//           );

//           if (picked != null) {
//             setState(() {
//               pickedDate = apiFormat.format(picked);
//               widget.changeDate(picked);
//             });
//           } else {
//             if (widget.clearDate) {
//               setState(() {
//                 pickedDate = null;
//                 widget.changeDate(picked);
//               });
//             }
//           }
//         },
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             if (widget.labelText != null)
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   widget.labelText!,
//                   style: const TextStyle(
//                     fontSize: 10,
//                     color: Colors.grey,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ),
//             Row(
//               mainAxisAlignment: widget.labelText != null
//                   ? MainAxisAlignment.start
//                   : MainAxisAlignment.center,
//               children: [
//                 Expanded(
//                   child: Builder(
//                     builder: (context) {
//                       if (widget.isUpdateDateText) {
//                         pickedDate = widget.value;
//                       }
//                       return Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Expanded(
//                             child: Text(
//                               pickedDate ?? widget.hintText ?? 'Select Date',
//                               maxLines: 1,
//                               overflow: TextOverflow.ellipsis,
//                               style: TextStyle(
//                                 color: pickedDate != null
//                                     ? Colors.black
//                                     : Colors.grey[600],
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                           ),
//                           const SizedBox(width: 16),
//                           SvgPicture.asset(
//                             'assets/icons/calendar2.svg',
//                             color: widget.isDisable ? Colors.grey : null,
//                           ),
//                         ],
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// final apiFormat = DateFormat('yyyy-MM-dd');class DatePickerContainer extends StatefulWidget {
 class DatePickerContainer extends StatefulWidget {
  final String? hintText;
  final String? value;
  final Function changeDate;
  final bool isUpdateDateText;
  final bool clearDate;
  final bool isDisable;
  final DateTime? initialDate;
  final DateTime? firstDate;
  final String? labelText;
 final DateTime? lastDate;

  const DatePickerContainer({
    super.key,
    this.hintText,
    this.value,
    this.isUpdateDateText = false,
    required this.changeDate,
    this.clearDate = false,
    this.isDisable = false,
    this.initialDate,
    this.firstDate,
    this.labelText,
     this.lastDate,
  });

  @override
  State<DatePickerContainer> createState() => _DatePickerContainerState();
}

class _DatePickerContainerState extends State<DatePickerContainer> {
  DateTime selectedDate = DateTime.now();
  String? pickedDate;

  @override
  void initState() {
    super.initState();
    _initFunction();
  }
    @override

   void didUpdateWidget(covariant DatePickerContainer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value) {
      setState(() {
        pickedDate = widget.value;
        try {
          selectedDate = apiFormat.parse(widget.value ?? '');
        } catch (_) {
          selectedDate = DateTime.now();
        }
      });
    }
  }


  void _initFunction() {
    if (widget.value == null) {
      pickedDate = widget.clearDate ? null : apiFormat.format(selectedDate);
    } else {
      pickedDate = widget.value;
      try {
        selectedDate = apiFormat.parse(widget.value!);
      } catch (_) {
        selectedDate = DateTime.now();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56, // Same as dropdown height
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: kColorLight4),
        color: widget.isDisable ? Colors.grey[100] : Colors.white,
      ),
      child: InkWell(
        onTap: widget.isDisable
            ? null
            : () async {
                DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: widget.initialDate ?? DateTime.now(),
                  firstDate: widget.firstDate ?? DateTime(2015),
                  lastDate: DateTime(2101),
                );
                if (picked != null) {
                  setState(() {
                    pickedDate = apiFormat.format(picked);
                    widget.changeDate(picked);
                  });
                } else if (widget.clearDate) {
                  setState(() {
                    pickedDate = null;
                    widget.changeDate(picked);
                  });
                }
              },
        child: Stack(
          children: [
            // Label (if provided)
            if (widget.labelText != null)
              Positioned(
                top: 6,
                
                child: Text(
                  widget.labelText!,
                  style: const TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            // Date Text & Icon
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: widget.labelText != null ? 10 : 0), // push down if label exists
                      child: Text(
                        pickedDate ?? widget.hintText ?? 'Select Date',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: pickedDate != null
                              ? Colors.black
                              : Colors.grey[600],
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/icons/calendar2.svg',
                    color: widget.isDisable ? Colors.grey : null,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final apiFormat = DateFormat('yyyy-MM-dd');
  Widget timePickerBuilder(BuildContext context, Widget? child) {
    return Theme(
      data: Theme.of(context).copyWith(
        colorScheme: ColorScheme.light(
          primary: kPrimaryColor,
          onPrimary: Colors.white,
          onSurface: Colors.black,
        ),
        textTheme: Theme.of(context).textTheme.copyWith(
          headlineMedium: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
            color: kPrimaryColor,
          ),
          bodyLarge: TextStyle(fontSize: 12.sp, color: Colors.black),
          labelLarge: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: kPrimaryColor,
          ),
        ),
        primaryTextTheme: TextTheme(
          headlineMedium: TextStyle(
            fontSize: 12.sp,
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: kPrimaryColor,
            textStyle: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
            minimumSize: Size(80.w, 48.h),
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
          ),
        ),
        timePickerTheme: TimePickerThemeData(
          hourMinuteShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
            side: BorderSide(color: kPrimaryColor, width: 1),
          ),

          hourMinuteColor: WidgetStateColor.resolveWith(
            (states) => states.contains(WidgetState.selected)
                ? Colors.grey.shade200
                : Colors.grey.shade200,
          ),
          hourMinuteTextColor: kPrimaryColor,
          hourMinuteTextStyle: TextStyle(
            fontSize: 28.sp,
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),

          dayPeriodTextColor: kPrimaryColor,
          dayPeriodTextStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
          dayPeriodColor: WidgetStateColor.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return kPrimaryColor.withOpacity(0.2);
            }
            return Colors.grey.shade100;
          }),
          dayPeriodShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
            side: BorderSide(color: kPrimaryColor.withOpacity(0.3)),
          ),
          dayPeriodBorderSide: BorderSide(color: kPrimaryColor, width: 1),

          dialHandColor: kPrimaryColor,
          dialBackgroundColor: kPrimaryColor.withOpacity(0.1),
          dialTextColor: kPrimaryColor,
          dialTextStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),

          backgroundColor: Colors.white,
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),

          padding: EdgeInsets.all(24.w),

          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: kPrimaryColor, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: kPrimaryColor, width: 3),
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 16.h,
            ),
            labelStyle: TextStyle(fontSize: 14.sp, color: kPrimaryColor),
          ),

          helpTextStyle: TextStyle(
            fontSize: 14.sp,
            color: Colors.grey.shade600,
          ),

          cancelButtonStyle: TextButton.styleFrom(
            foregroundColor: Colors.grey.shade700,
            textStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
            minimumSize: Size(100.w, 48.h),
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
          ),
          confirmButtonStyle: TextButton.styleFrom(
            foregroundColor: kPrimaryColor,
            textStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
            minimumSize: Size(100.w, 48.h),
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
          ),
        ),
      ),
      child: child!,
    );
  }
  

  Widget datePick(String title, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(color: kDarkBorder),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Text(
          title,
          style: FontPalette.hW500S14,
          textAlign: TextAlign.center,
        ),
      ),
    );
    
  }
  

