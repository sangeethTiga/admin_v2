import 'dart:developer';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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

  @override
  void didUpdateWidget(DatePickerContainer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != oldWidget.value) {
      _initFunction();
    }
  }

  void _initFunction() {
    log("WHat happend${widget.value} - ${widget.clearDate}");

    if (widget.value == null) {
      if (widget.clearDate == false) {
        pickedDate = apiFormat.format(selectedDate);
      } else {
        pickedDate = null;
      }
    } else {
      pickedDate = widget.value;
      try {
        selectedDate = apiFormat.parse(widget.value!);
      } catch (e) {
        log("Error parsing date: $e");
        selectedDate = DateTime.now();
      }
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
        border: Border.all(color: kColorLight4),
        color: widget.isDisable ? Colors.grey[100] : Colors.white,
      ),
      child: InkWell(
        onTap: () async {
          FocusManager.instance.primaryFocus?.unfocus();

          DateTime? picked = await showDatePicker(
            context: context,
            initialDate:
                widget.initialDate ?? widget.firstDate ?? DateTime.now(),
              firstDate: widget.firstDate ?? DateTime(2015),
           // firstDate: widget.firstDate ?? DateTime.now(),

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
                  child: Builder(
                    builder: (context) {
                      if (widget.isUpdateDateText) {
                        pickedDate = widget.value;
                      }
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
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
                          const SizedBox(width: 16),
                          SvgPicture.asset(
                            'assets/icons/calendar2.svg',
                            color: widget.isDisable ? Colors.grey : null,
                          ),
                        ],
                      );
                    },
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
