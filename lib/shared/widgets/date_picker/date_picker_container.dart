import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

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
    if (widget.value == null) {
      if (widget.clearDate == false) {
        pickedDate = apiFormat.format(selectedDate);
      }
    } else {
      pickedDate = widget.value;
      selectedDate = DateTime.parse(pickedDate!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60, // increased height to fit label inside
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        border: Border.all(color: const Color(0xffB3B3BF).withOpacity(0.5)),
        color: Colors.white,
      ),
      child: InkWell(
        onTap: () async {
          FocusManager.instance.primaryFocus?.unfocus();
          DateTime? picked = await showDatePicker(
            context: context,
            initialDate:
                widget.initialDate ?? widget.firstDate ?? DateTime.now(),
            firstDate: DateTime(2015, 1, 1),
            lastDate: DateTime(2101),
          );
          if (picked != null) {
            setState(() {
              pickedDate = apiFormat.format(picked);
              widget.changeDate(picked);
            });
          } else {
            if (widget.clearDate) {
              setState(() {
                pickedDate = null;
                widget.changeDate(picked);
              });
            }
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.labelText != null)
              Padding(
                padding: const EdgeInsets.only(bottom: 2),
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: pickedDate != null
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              textAlign: TextAlign.center,
                              pickedDate ?? '',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        )
                      : Row(
                          children: [
                            Text(
                              textAlign: TextAlign.center,
                              widget.hintText ?? '',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Color(0xff828691),
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                ),

                SvgPicture.asset('assets/icons/calendar2.svg'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  //   @override
  //   Widget build(BuildContext context) {
  //     return Container(
  //       alignment: Alignment.center,
  //       height: 48,
  //       clipBehavior: Clip.antiAliasWithSaveLayer,
  //       decoration: BoxDecoration(
  //         borderRadius: const BorderRadius.all(Radius.circular(8)),
  //         border: Border.all(color: const Color(0xffB3B3BF).withOpacity(0.5)),
  //         color: Colors.white,
  //       ),
  //       child: Material(
  //         color: Colors.transparent,
  //         child: InkWell(
  //           onTap: () async {
  //             FocusManager.instance.primaryFocus?.unfocus();
  //             DateTime? picked = await showDatePicker(
  //               context: context,
  //               initialDate:
  //                   widget.initialDate ?? widget.firstDate ?? DateTime.now(),
  //               firstDate: DateTime(2015, 1, 1),
  //               lastDate: DateTime(2101),
  //               // builder: (BuildContext context, Widget? child) {
  //               //   return Theme(
  //               //     data: ThemeData.light().copyWith(
  //               //       colorScheme: ColorScheme.light(
  //               //         primary: primaryColor,
  //               //         onPrimary: Colors.black,
  //               //         surface: Colors.white,
  //               //         onSurface: Colors.black,
  //               //       ),
  //               //       dialogBackgroundColor: Colors.white,
  //               //     ),
  //               //     child: child!,
  //               //   );
  //               // },
  //             );
  //             if (picked != null) {
  //               setState(() {
  //                 pickedDate = apiFormat.format(picked);
  //                 widget.changeDate(picked);
  //               });
  //             } else {
  //               if (widget.clearDate) {
  //                 setState(() {
  //                   pickedDate = null;
  //                   widget.changeDate(picked);
  //                 });
  //               }
  //             }
  //           },
  //           child: Padding(
  //             padding: const EdgeInsets.only(
  //               left: 15,
  //               right: 10,
  //               top: 7,
  //               bottom: 13,
  //             ),
  //             child: Row(
  //               children: [
  //                 Builder(
  //                   builder: (context) {
  //                     if (widget.isUpdateDateText) {
  //                       pickedDate = widget.value;
  //                     }
  //                     return Expanded(
  //                       child: pickedDate != null
  //                           ? Text(
  //                               pickedDate ?? '',
  //                               maxLines: 1,
  //                               overflow: TextOverflow.ellipsis,
  //                               style: const TextStyle(
  //                                 color: Colors.black,
  //                                 fontSize: 12,
  //                                 fontWeight: FontWeight.w500,
  //                               ),
  //                             )
  //                           : Text(
  //                               widget.hintText ?? '',
  //                               maxLines: 1,
  //                               overflow: TextOverflow.ellipsis,
  //                               style: const TextStyle(
  //                                 color: Color(0xff828691),
  //                                 fontSize: 10,
  //                                 fontWeight: FontWeight.w500,
  //                               ),
  //                             ),
  //                     );
  //                   },
  //                 ),
  //                 SvgPicture.asset('assets/icons/calendar2.svg'),
  //               ],
  //             ),
  //           ),
  //         ),
  //       ),
  //     );
  //   }
}

final apiFormat = DateFormat('yyyy-MM-dd');
