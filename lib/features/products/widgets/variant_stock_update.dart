import 'package:admin_v2/features/products/cubit/product_cubit.dart';
import 'package:admin_v2/features/products/widgets/stock_update_card.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/widgets/buttons/custom_material_button.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class VariantStockUpdateCard extends StatelessWidget {
  final int maintainStock;
  const VariantStockUpdateCard({super.key, required this.maintainStock});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.h,

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
                Text('Variant Details', style: FontPalette.hW700S14),
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
          Expanded(
            child: BlocBuilder<ProductCubit, ProductState>(
              builder: (context, state) {
                final variants=state.variantList;

                if(variants==null|| variants.isEmpty){
                  return Center(child: CircularProgressIndicator());

                }
                return ListView.builder(
                  itemCount:variants
                      .length,

                  itemBuilder: (BuildContext context, int index) {
                    return MainPadding(
                      child: CustomMaterialBtton(
                        onPressed: () {
                          Navigator.pop(context);
                          final state = context
                              .read<ProductCubit>()
                              .state
                              .variantList?[index];
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12.r),
                                topRight: Radius.circular(12.r),
                              ),
                            ),
                            backgroundColor: kWhite,
                            context: context,
                            isScrollControlled: true,

                            builder: (context) {
                              return StockUpdateCard(
                                variantName: state?.prodVarName,
                                maintainStock: maintainStock,
                                variantId: state?.prodVarId,
                                productId: state?.productId,

                                currentStock: state?.varStockQty,
                                fromVariant: true,
                              );
                            },
                          );
                        },
                        buttonText:
                            context
                                .read<ProductCubit>()
                                .state
                                .variantList?[index]
                                .prodVarName ??
                            '',
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
