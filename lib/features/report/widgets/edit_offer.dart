import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:admin_v2/shared/widgets/text_fields/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class EditProductOffer extends StatefulWidget {
  const EditProductOffer({super.key});

  @override
  State<EditProductOffer> createState() => _EditProductOfferState();
}

class _EditProductOfferState extends State<EditProductOffer> {
  final TextEditingController offerController = TextEditingController();
  final TextEditingController offerPriceController = TextEditingController();
  final TextEditingController discountController = TextEditingController();
  final TextEditingController fromDateController = TextEditingController();
  final TextEditingController toDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700.h,
      child: Column(
        children: [
          MainPadding(
            top: 19.5.h,
            left: 12.w,
            right: 12.w,
            bottom: 15.5.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Update Product Offer', style: FontPalette.hW700S14),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset('assets/icons/x-close.svg'),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.all(13),
            child: TextFeildWidget(
              topLabelText: 'Product Name',
              hight: 48.h,
              fillColor: kWhite,
              inputBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(color: Color(0XFFB7C6C2)),
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 14.h,
                horizontal: 8.w,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(13),
            child: TextFeildWidget(
              topLabelText: 'Offer',
              controller: offerController,
              hight: 48.h,
              fillColor: kWhite,
              inputBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(color: Color(0XFFB7C6C2)),
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 14.h,
                horizontal: 8.w,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(13),
            child: TextFeildWidget(
              topLabelText: 'Offer Price',
              controller: offerPriceController,
              hight: 48.h,
              fillColor: kWhite,
              inputBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(color: Color(0XFFB7C6C2)),
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 14.h,
                horizontal: 8.w,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(13),
            child: TextFeildWidget(
              topLabelText: 'Discount',
              controller: discountController,
              hight: 48.h,
              fillColor: kWhite,
              inputBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(color: Color(0XFFB7C6C2)),
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 14.h,
                horizontal: 8.w,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(13),
            child: TextFeildWidget(
              topLabelText: 'From Date',
              controller: fromDateController,
              hight: 48.h,
              fillColor: kWhite,
              inputBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(color: Color(0XFFB7C6C2)),
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 14.h,
                horizontal: 8.w,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(13),
            child: TextFeildWidget(
              topLabelText: 'To date',
              controller: toDateController,
              hight: 48.h,
              fillColor: kWhite,
              inputBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(color: Color(0XFFB7C6C2)),
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 14.h,
                horizontal: 8.w,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
