import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonVerticalTableWidget extends StatelessWidget {
  final List<String> headers;
  final List<Map<String, dynamic>> data;
  final List<int> columnFlex;

  const CommonVerticalTableWidget({
    super.key,
    required this.headers,
    required this.data,
    required this.columnFlex,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: headers.map((header) {
  int headerIndex = headers.indexOf(header);
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header title on the left
          Container(
            width: 150.w,
            padding: const EdgeInsets.all(8),
            color: Colors.grey.shade300,
            child: Text(
              header,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          // Corresponding row values
          ...List.generate(data.length, (index) {
            var cellValue = data[index][header];

            return Container(
              width: 150.w,
              padding: const EdgeInsets.all(8),
              color:
                  index % 2 == 0 ? Colors.white :
                   Colors.grey.shade100,
              child: cellValue is Widget
                  ? cellValue
                  : Text(cellValue?.toString() ?? ''),
            );
          }),
        ],
      ),
      Divider(height: 1, thickness: 0.5, color: Colors.grey.shade400), 
    ],
  );
}).toList(),

      ),
    );
  }
}
