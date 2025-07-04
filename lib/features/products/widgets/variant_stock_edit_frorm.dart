import 'package:admin_v2/features/products/cubit/product_cubit.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class VariantStockEditFrorm extends StatelessWidget {
  final String variantName;
  final double currentStock;
  const VariantStockEditFrorm({super.key,required this.variantName,required this.currentStock});

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
                Text('Update $variantName Stock ', style: FontPalette.hW700S14),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    context.read<ProductCubit>().closeButton();
                  },
                  child: SvgPicture.asset('assets/icons/x-close.svg'),
                ),
              ],
            ),
      ),
      Divider(color: kBorderColor, thickness: 1),
          10.verticalSpace,
          
          MainPadding(
            top: 0,
            child: Column(
              children: [
                Text(
                              'Current stock : $currentStock',
                              style: FontPalette.hW500S13,
                            ),
                            
              ],
            ),
          )
      ],
      ),
    );
  }
}