import 'package:admin_v2/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class DatePickerContainer extends StatefulWidget {
  final String? hintText;
  final String? value;
  final void Function(DateTime) changeDate;
  final bool isUpdateDateText;
  final bool clearDate;
  final bool isDisable;
  final DateTime? initialDate;
  final DateTime? firstDate;
  final DateTime? lastDate;
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
    this.lastDate,
    this.labelText,
  });

  @override
  State<DatePickerContainer> createState() => _DatePickerContainerState();
}

class _DatePickerContainerState extends State<DatePickerContainer> {
  DateTime? selectedDate;
  String? pickedDate;

  @override
  void initState() {
    super.initState();
    _initFunction();
  }

  @override
  void didUpdateWidget(DatePickerContainer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value ||
        oldWidget.initialDate != widget.initialDate) {
      _initFunction();
    }
  }

  void _initFunction() {
    if (widget.value != null && widget.value!.isNotEmpty) {
      try {
        selectedDate =
            DateTime.tryParse(widget.value!) ?? apiFormat.parse(widget.value!);
        pickedDate = apiFormat.format(selectedDate!);
      } catch (e) {
        selectedDate = widget.initialDate ?? DateTime.now();
        pickedDate = apiFormat.format(selectedDate!);
      }
    } else if (widget.initialDate != null) {
      selectedDate = widget.initialDate;
      pickedDate = apiFormat.format(selectedDate!);
    } else if (widget.clearDate) {
      selectedDate = null;
      pickedDate = null;
    } else {
      selectedDate = DateTime.now();
      pickedDate = apiFormat.format(selectedDate!);
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
        onTap: widget.isDisable
            ? null
            : () async {
                FocusManager.instance.primaryFocus?.unfocus();
                DateTime pickerInitialDate;
                if (selectedDate != null) {
                  pickerInitialDate = selectedDate!;
                } else if (widget.initialDate != null) {
                  pickerInitialDate = widget.initialDate!;
                } else {
                  pickerInitialDate = DateTime.now();
                }
                final firstDate = widget.firstDate ?? DateTime(2015);
                final lastDate = widget.lastDate ?? DateTime(2101);

                if (pickerInitialDate.isBefore(firstDate)) {
                  pickerInitialDate = firstDate;
                } else if (pickerInitialDate.isAfter(lastDate)) {
                  pickerInitialDate = lastDate;
                }

                DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: pickerInitialDate,
                  firstDate: firstDate,
                  lastDate: lastDate,
                );

                if (picked != null) {
                  setState(() {
                    selectedDate = picked;
                    pickedDate = apiFormat.format(picked);
                  });
                  widget.changeDate(picked);
                } else if (widget.clearDate) {
                  setState(() {
                    selectedDate = null;
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
