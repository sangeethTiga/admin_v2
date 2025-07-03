import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/features/report/domain/models/editoffer/edit_offer_response.dart';
import 'package:admin_v2/features/report/domain/models/product_offers/product_offers_response.dart';
import 'package:admin_v2/features/report/domain/models/specialOffer/special_offer_response.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/widgets/buttons/custom_material_button.dart';
import 'package:admin_v2/shared/widgets/dropdown_field_widget/dropdown_field_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:admin_v2/shared/widgets/text_fields/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class EditProductOffer extends StatefulWidget {
  final ProductOffersResponse product;
  const EditProductOffer({super.key, required this.product});

  @override
  State<EditProductOffer> createState() => _EditProductOfferState();
}

class _EditProductOfferState extends State<EditProductOffer> {
  late final TextEditingController nameController;
  late final TextEditingController offerController;
  late final TextEditingController offerPriceController;
  late final TextEditingController discountController;
  late final TextEditingController fromDateController;
  late final TextEditingController toDateController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(
      text: widget.product.productName ?? '',
    );
    offerPriceController = TextEditingController(
      text: widget.product.offerPrice?.toString() ?? '',
    );
    discountController = TextEditingController(
      text: widget.product.offerPricePercentage?.toString() ?? '',
    );
    fromDateController = TextEditingController(
      text: widget.product.offerFromDate?.toString() ?? '',
    );
    toDateController = TextEditingController(
      text: widget.product.offerToDate?.toString() ?? '',
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    offerPriceController.dispose();
    discountController.dispose();
    fromDateController.dispose();
    toDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 900.h,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MainPadding(
              top: 23.5.h,
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
                controller: nameController,
                topLabelText: 'Product Name',
                hight: 48.h,
                enabled: false,
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
              child: BlocBuilder<ReportCubit, ReportState>(
                builder: (context, state) {
                  return DropDownFieldWidget(
                    isLoading: state.apiFetchStatus == ApiFetchStatus.loading,
                    prefixIcon: Container(
                      margin: EdgeInsets.only(left: 12.w),
                      child: SvgPicture.asset(
                        'assets/icons/package-box-pin-location.svg',
                        width: 20.w,
                        height: 20.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                    borderColor: kBlack,
                    value: state.selectedType,
                    items:
                        state.specialOffer?.map((e) {
                          return DropdownMenuItem<SpecialOfferResponse>(
                            value: e,

                            child: Text(e.offerTypeName ?? ''),
                          );
                        }).toList() ??
                        [],
                    fillColor: const Color(0XFFEFF1F1),

                    onChanged: (p0) {
                      // context.read<ReportCubit>().
                      context.read<ReportCubit>().loadSelectedOffer(p0);
                    },
                    labelText: '',
                  );
                },
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

            Padding(
              padding: const EdgeInsets.all(13.0),
              child: CustomMaterialBtton(
                buttonText: 'Update',
                onPressed: () async {
                  final editOffer = EditOfferResponse(
                    offerPrice:
                        double.tryParse(offerPriceController.text) ?? 0.0,
                    offerPricePercentage:
                        int.tryParse(discountController.text) ?? 0,
                    storeId: widget.product.storeId ?? 0,
                    productId: widget.product.productId ?? 0,
                  );
                  await context.read<ReportCubit>().loadEditOffer(
                    editOffer,
                    widget.product.storeId ?? 0,
                    widget.product.productId ?? 0,
                  );
                  context.pop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
