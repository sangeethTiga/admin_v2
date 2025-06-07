import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:flutter/material.dart';

class CommonTableWidget extends StatelessWidget {
  final List<String> headers;
  final List<int> columnFlex;
  final List<Map<String, dynamic>> data;
  final Color headerColor;
  final Color rowColor1;
  final Color rowColor2;

  const CommonTableWidget({
    super.key,
    required this.headers,
    required this.columnFlex,
    required this.data,
    this.headerColor = kBorderColor,
    this.rowColor1 = kWhite,
    this.rowColor2 = const Color(0xFFF1F1F1),
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            // color: headerColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Row(
            children: List.generate(headers.length, (index) {
              return tableHeader(
                screenWidth,
                headers[index],
                columnFlex[index],
              );
            }),
          ),
        ),

        Expanded(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: index % 2 == 0 ? rowColor1 : rowColor2,
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
                child: Row(
                  children: List.generate(headers.length, (colIndex) {
                    String key = headers[colIndex];
                    var value = data[index][key];
                    return tableCell(screenWidth, value, columnFlex[colIndex]);
                  }),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget tableHeader(double width, String title, int flex) {
    return Expanded(
      flex: flex,
      child: Text(
        title,
        style: FontPalette.hW700S11.copyWith(color: Color(0XFF5E6566)),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget tableCell(double width, dynamic value, int flex) {
    return Expanded(
      flex: flex,
      child: value is Widget
          ? value
          : Text(
              value.toString(),
              style: FontPalette.hW400S14.copyWith(color: kBlack),
              textAlign: TextAlign.center,
            ),
    );
  }
}
