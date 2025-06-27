import 'package:admin_v2/features/products/cubit/product_cubit.dart';
import 'package:admin_v2/features/products/domain/models/edit_update_req/edit_update_response.dart';
import 'package:admin_v2/features/products/domain/models/product/product_response.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/widgets/buttons/custom_material_button.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:admin_v2/shared/widgets/text_fields/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class EditProduct extends StatefulWidget {
  final ProductResponse product;
  const EditProduct({super.key, required this.product});

  @override
  State<EditProduct> createState() => _EditProductState();
}

class _EditProductState extends State<EditProduct> {
  late final TextEditingController nameController;
  late final TextEditingController quantityController;
  late final TextEditingController priceController;
  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(
      text: widget.product.productName ?? '',
    );
    quantityController = TextEditingController(
      text: widget.product.productQty?.toString() ?? '',
    );
    priceController = TextEditingController(
      text: widget.product.productPrice.toString(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    priceController.dispose();
    quantityController.dispose();
  }

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
                Text('Product Update', style: FontPalette.hW700S14),
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
              topLabelText: 'Name',
              borderColor: kBlack,
              hight: 48.h,
              fillColor: kWhite,
              controller: nameController,
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
              topLabelText: 'Product Quantity',
              borderColor: kBlack,
              hight: 48.h,
              fillColor: kWhite,
              controller: quantityController,
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
              topLabelText: 'Product Price',
              borderColor: kBlack,
              hight: 48.h,
              fillColor: kWhite,
              controller: priceController,
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
            padding: const EdgeInsets.all(13.0),
            child: BlocListener<ProductCubit, ProductState>(
              listenWhen: (previous, current) =>
                  previous.isAdded != current.isAdded &&
                  current.isAdded == ApiFetchStatus.success,
              listener: (context, state) {
                if (state.isAdded == ApiFetchStatus.success) {
                  context.read<ProductCubit>().product(
                    state.selectedStore?.storeId ?? 0,
                    0,
                    "",
                    "",
                  );
                }
              },
              child: CustomMaterialBtton(
                buttonText: 'Submit',
                onPressed: () async {
                  final updatedProduct = EditUpdateResponse(
                    productName: nameController.text,
                    productPrice: double.tryParse(priceController.text) ?? 0.0,
                    productQuantity: int.tryParse(quantityController.text) ?? 0,
                    updatedDate: DateTime.now(),
                    storeId: widget.product.storeId ?? 0,
                    productId: widget.product.productId ?? 0,
                    productHidden: widget.product.productHidden ?? 0,
                    maintainStock: widget.product.maintainStock,
                  );
                  await context.read<ProductCubit>().updateProduct(
                    updatedProduct,
                    widget.product.productId ?? 0,
                  );
                  context.pop();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
