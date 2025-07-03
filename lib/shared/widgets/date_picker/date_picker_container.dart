// import 'package:admin_v2/shared/themes/font_palette.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:intl/intl.dart';

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

//   void _initFunction() {
//     if (widget.value == null) {
//       if (widget.clearDate == false) {
//         pickedDate = apiFormat.format(selectedDate);
//       }
//     } else {
//       pickedDate = widget.value;
//       selectedDate = DateTime.parse(pickedDate!);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.center,
//       height: 60, // increased height to fit label inside
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//       decoration: BoxDecoration(
//         borderRadius: const BorderRadius.all(Radius.circular(8)),
//         border: Border.all(color: const Color(0xffB3B3BF).withOpacity(0.5)),
//         color: Colors.white,
//       ),
//       child: InkWell(
//         onTap: () async {
//           FocusManager.instance.primaryFocus?.unfocus();
//           DateTime? picked = await showDatePicker(
//             context: context,
//             initialDate:
//                 widget.initialDate ?? widget.firstDate ?? DateTime.now(),
//             firstDate: DateTime(2015, 1, 1),
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
//               Align(alignment: Alignment.centerLeft,
//                 child: Text(
//                   widget.labelText!,
//                   textAlign: TextAlign.left,
//                   style: const TextStyle(
//                     fontSize: 10,
//                     color: Colors.grey,
//                     fontWeight: FontWeight.w500,
                    
//                   ),
//                 ),
//               ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Expanded(
//                   child: pickedDate != null
//                       ? Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Text(
//                               textAlign: TextAlign.center,
//                               pickedDate ?? '',
//                               maxLines: 1,
//                               overflow: TextOverflow.ellipsis,
//                               style: FontPalette.hW400S14
//                               // const TextStyle(
//                               //   color: Colors.black,
//                               //   fontSize: 20,
//                               //   fontWeight: FontWeight.w500,
//                               // ),
//                             ),
//                             16.horizontalSpace,
//                             SvgPicture.asset('assets/icons/calendar2.svg'),
//                           ],
//                         )
//                       : Row(
//                           children: [
//                             Text(
//                               textAlign: TextAlign.center,
//                               widget.hintText ?? '',
//                               maxLines: 1,
//                               overflow: TextOverflow.ellipsis,
//                               style: const TextStyle(
//                                 color: Color(0xff828691),
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                             16.horizontalSpace,
//                             SvgPicture.asset('assets/icons/calendar2.svg'),
//                           ],
//                         ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

// }

// final apiFormat = DateFormat('yyyy-MM-dd');
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class DatePickerContainer extends StatefulWidget {
  final String? hintText;
  final String? value;
  final void Function(DateTime) changeDate; // updated
  final bool isUpdateDateText;
  final bool clearDate;
  final bool isDisable;
  final DateTime? initialDate;
  final DateTime? firstDate;
  final String? labelText;

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

  void _initFunction() {
    if (widget.value == null && !widget.clearDate) {
      pickedDate = apiFormat.format(selectedDate);
    } else if (widget.value != null) {
      pickedDate = widget.value;
      selectedDate = DateTime.tryParse(pickedDate ?? '') ?? DateTime.now();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        border: Border.all(color:kColorLight4),
        color: Colors.white,
      ),
      child: InkWell(
        onTap: () async {
          FocusManager.instance.primaryFocus?.unfocus();
          DateTime? picked = await showDatePicker(
            context: context,
            initialDate: widget.initialDate ?? widget.firstDate ?? DateTime.now(),
            firstDate: DateTime(2015, 1, 1),
            lastDate: DateTime(2101),
          );

          if (picked != null) {
            setState(() {
              pickedDate = apiFormat.format(picked);
            });
            widget.changeDate(picked); // only called if picked != null
          } else if (widget.clearDate) {
            setState(() {
              pickedDate = null;
            });
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (widget.labelText != null)
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.labelText!,
                  style: const TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            Row(
              mainAxisAlignment: widget.labelText != null
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        pickedDate ?? widget.hintText ?? '',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14, // customize font size
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 16),
                      SvgPicture.asset('assets/icons/calendar2.svg'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

final apiFormat = DateFormat('yyyy-MM-dd');
