// import 'package:flutter/material.dart';
// import 'package:tg_py_books/serializer/models/payment_terms.dart';
// import 'package:tg_py_books/src/components/date_picker/date_picker_container.dart';
// import 'package:tg_py_books/src/components/styles/styles.dart';

// class DueDatePicker extends StatelessWidget {
//   final PaymentTermsModel? selectedValue;
//   final DateTime? date;
//   final Function changeDate;
//   const DueDatePicker(
//       {Key? key, this.selectedValue, this.date, required this.changeDate})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return selectedValue?.name != 'Custom'
//         ? Container(
//             decoration: BoxDecoration(
//               borderRadius: borderRadius10,
//               border:
//                   Border.all(color: const Color(0xffB3B3BF).withOpacity(0.4)),
//               color: Colors.white,
//             ),
//             child: Padding(
//               padding: const EdgeInsets.only(
//                   left: 15, right: 10, top: 13, bottom: 13),
//               child: Row(
//                 children: [
//                   Expanded(
//                       child: Text(
//                     date != null ? apiFormat.format(date!) : 'Due date',
//                     maxLines: 1,
//                     overflow: TextOverflow.ellipsis,
//                     style: const TextStyle(
//                         color: Color(0xff828691),
//                         fontSize: 12,
//                         fontWeight: FontWeight.w500),
//                   )),
//                   Icon(
//                     Icons.calendar_month_outlined,
//                     color: const Color(0xffB3B3BF).withOpacity(0.8),
//                     size: 15,
//                   )
//                 ],
//               ),
//             ),
//           )
//         : DatePickerContainer(
//             hintText: '',
//             clearDate: selectedValue == null,
//             value: date == null ? null : apiFormat.format(date!),
//             changeDate: (DateTime date) {
//               changeDate(date);
//             },
//           );
//   }
// }
