import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/features/report/domain/models/createOffer/create_offer_response.dart';
import 'package:admin_v2/features/report/domain/models/editoffer/edit_offer_response.dart';
import 'package:admin_v2/features/report/domain/models/product_offers/product_offers_response.dart';
import 'package:admin_v2/features/report/domain/models/productname/product_name_response.dart';
import 'package:admin_v2/features/report/domain/models/specialOffer/special_offer_response.dart';
import 'package:admin_v2/features/report/screens/purchase_screen.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/widgets/buttons/custom_material_button.dart';
import 'package:admin_v2/shared/widgets/date_picker/date_picker_container.dart';
import 'package:admin_v2/shared/widgets/dropdown_field_widget/dropdown_field_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:admin_v2/shared/widgets/text_fields/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

class OfferForm extends StatefulWidget {
  final bool isEdit;
  final ProductOffersResponse? product;
  const OfferForm({super.key, this.isEdit = false, this.product});

  @override
  State<OfferForm> createState() => _OfferFormState();
}

class _OfferFormState extends State<OfferForm> {
  late final TextEditingController nameController;
  late final TextEditingController offerController;
  late final TextEditingController offerPriceController;
  late final TextEditingController discountController;
  late final TextEditingController fromDateController;
  late final TextEditingController toDateController;
  late final TextEditingController productPriceController;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
        final product = widget.product;
    nameController = TextEditingController(
      text: widget.product?.productName ?? '',
    );
    offerPriceController = TextEditingController(
      text: widget.product?.offerPrice?.toString() ?? '',
    );
    discountController = TextEditingController(
      text: widget.product?.offerPricePercentage?.toString() ?? '',
    );
    fromDateController = TextEditingController(
      text: widget.product?.offerFromDate?.toString() ?? '',
    );
    toDateController = TextEditingController(
      text: widget.product?.offerToDate?.toString() ?? '',
    );
    productPriceController = TextEditingController(
      text: widget.product?.productPrice?.toString() ?? '',
    );

    if (widget.isEdit) {
      final cubit = context.read<ReportCubit>();
      if (product?.offerFromDate != null) {
        cubit.changeFromDate(product!.offerFromDate!);
      }
      if (product?.offerToDate != null) {
        cubit.changeToDate(product!.offerToDate!);
      }
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    offerPriceController.dispose();
    discountController.dispose();
    fromDateController.dispose();
    toDateController.dispose();
    // productPriceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: MainPadding(
        child: Column(
          spacing: 8.h,
          mainAxisSize: MainAxisSize.min,
          children: [
            MainPadding(
              top: 23.5.h,
              left: 12.w,
              right: 12.w,
              // bottom: 15.5.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.isEdit
                        ? 'Update Product Offer'
                        : 'Add Product Offer',
                    style: FontPalette.hW700S14,
                  ),

                  GestureDetector(
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset('assets/icons/x-close.svg'),
                  ),
                ],
              ),
            ),
            commonStoreDropDown(
              onChanged: (p0) {
                context.read<DashboardCubit>().selectedStore(p0);
              },
            ),

            widget.isEdit
                ? TextFeildWidget(
                    controller: nameController,
                    topLabelText: 'Product Name',
                    hight: 48.h,
                    enabled: false, // 🔒 Disable editing in edit mode
                    fillColor: kWhite,
                    inputBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: const BorderSide(color: Color(0XFFB7C6C2)),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 14.h,
                      horizontal: 8.w,
                    ),
                  )
                : BlocBuilder<ReportCubit, ReportState>(
                    builder: (context, state) {
                      return DropDownFieldWidget(
                        isLoading:
                            state.apiFetchStatus == ApiFetchStatus.loading,
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
                        value: state.selectedProductName,
                        items:
                            state.getproductName?.map((e) {
                              return DropdownMenuItem<ProductNameResponse>(
                                value: e,
                                child: Text(
                                  e.productName ?? '',
                                  style: TextStyle(fontSize: 25),
                                ),
                              );
                            }).toList() ??
                            [],
                        fillColor: const Color(0XFFEFF1F1),
                        onChanged: (p0) {
                          context.read<ReportCubit>().selectedProductName(p0);
                          productPriceController.text =
                              p0?.productPrice?.toString() ?? '';

                          // productPriceController.text = p0?.productPrice?.toString() ?? '';
                        },
                        labelText: 'Product Name',
                      );
                    },
                  ),
            BlocBuilder<ReportCubit, ReportState>(
              builder: (context, state) {
                return DropDownFieldWidget(
                  isLoading: state.apiFetchStatus == ApiFetchStatus.loading,
                  prefixIcon: Container(
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

                  onChanged: (p0) async {
                    context.read<ReportCubit>().loadSelectedOffer(p0);
                  },
                  labelText: '',
                );
              },
            ),

            TextFeildWidget(
              topLabelText: 'Product Price',

              enabled: false,
              controller: productPriceController,
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
            TextFeildWidget(
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

            TextFeildWidget(
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
            BlocBuilder<ReportCubit, ReportState>(
              builder: (context, state) {
                return Row(
                  children: [
                    Expanded(
                      child: DatePickerContainer(
                        firstDate: state.fromDate ?? DateTime.now(),
                        hintText: '',
                        changeDate: (DateTime pickedDate) {
                          context.read<ReportCubit>().changeFromDate(
                            pickedDate,
                          );
                        },
                      ),
                    ),
                    12.horizontalSpace,
                    Expanded(
                      child: DatePickerContainer(
                        hintText: '',
                        changeDate: (DateTime pickedDate) {
                          context.read<ReportCubit>().changeToDate(pickedDate);
                        },
                      ),
                    ),
                  ],
                );
              },
            ),

            CustomMaterialBtton(
              onPressed: () async {
                final cubit = context.read<ReportCubit>();
                if (widget.isEdit) {
                  final updatedOffer = EditOfferResponse(
                    offerPrice:
                        double.tryParse(offerPriceController.text) ?? 0.0,
                    offerPricePercentage:
                        int.tryParse(discountController.text) ?? 0,
                    storeId: widget.product?.storeId ?? 0,
                    productId: widget.product?.productId ?? 0,
                    branchId: widget.product?.branchId ?? 0,
                    couponId: widget.product?.couponId ?? 0,
                    createdBy: widget.product?.createdBy ?? 0,
                    deliveryPartnerId: widget.product?.deliveryPartnerId ?? 0,
                    maxOrderQty: widget.product?.maxOrderQty ?? 0,
                    offerTypeId: widget.product?.offerTypeId ?? 0,
                    prodOfferTypeId: widget.product?.prodOfferTypeId ?? 0,
                    updatedBy: widget.product?.updatedBy ?? 0,
                    resourceId: widget.product?.resourceId ?? 0,
                    prodVarCode: widget.product?.prodVarCode,
                    priceTypeId: widget.product?.priceTypeId ?? 0,
                    // offerFromDate: cubit.state.fromDate,
                    // offerToDate: cubit.state.toDate,
                    offerToDate: context.read<ReportCubit>().state.toDate,
                    offerFromDate: context.read<ReportCubit>().state.fromDate,
                  );
                  await cubit.loadEditOffer(
                    updatedOffer,
                    widget.product!.prodOfferId!,
                    widget.product!.storeId!,
                  );
                  await cubit.loadProductOffers(
                    storeId: widget.product!.storeId!,
                  );
                  Navigator.pop(context, updatedOffer);
                } else {
                  final selectedStore = context
                      .read<DashboardCubit>()
                      .state
                      .selectedStore;
                  final selectedProduct = context
                      .read<ReportCubit>()
                      .state
                      .selectedProductName;
                  final selectedType = context
                      .read<ReportCubit>()
                      .state
                      .selectedType;
                  await cubit.loadProductOffers(
                    storeId: selectedStore?.storeId ?? 0,
                  );

                  context.pop();

                  if (selectedProduct != null) {
                    final newOffer = CreateOfferResponse(
                      storeId: selectedStore?.storeId ?? 0,
                      productId: selectedProduct.productId,
                      branchId: widget.product?.branchId ?? 0,
                      offerPrice: int.tryParse(offerPriceController.text),
                      // createdAt: widget.product?.createdAt,
                      offerPricePercentage: int.tryParse(
                        discountController.text,
                      ),
                      offerFromDate: context.read<ReportCubit>().state.fromDate,
                      offerToDate: context.read<ReportCubit>().state.toDate,
                      offerTypeId: widget.product?.offerTypeId ?? 0,
                      createdBy: 1,
                      updatedBy: 1,
                      deliveryPartnerId: 0,
                      maxOrderQty: 0,
                      priceTypeId: 1,
                      prodOfferTypeId: selectedType?.prodOfferTypeId ?? 0,
                      prodVarCode:
                          selectedProduct.prodVarCode?.toString() ?? "0",
                      resourceId: widget.product?.resourceId ?? 0,
                      couponId: widget.product?.couponId ?? 0,

                      isSingleProductOffer: 1,
                    );
                    await cubit.createProductOffer(offer: newOffer);

                    bool dataLoaded = false;
                    int attempts = 0;

                    while (!dataLoaded && attempts < 3) {
                      await Future.delayed(const Duration(milliseconds: 500));
                      await cubit.loadProductOffers(
                        storeId: selectedStore?.storeId ?? 0,
                      );

                      final offers = cubit.state.productOffers ?? [];
                      if (offers.isNotEmpty) {
                        dataLoaded = true;
                      }

                      attempts++;
                    }

                    if (mounted) {
                      context.pop();
                    }
                  }
                }
              },
            ),
            10.verticalSpace,
          ],
        ),
      ),
    );
  }
}

class ShimmerWidget extends StatelessWidget {
  final double width;
  final double height;
  final ShapeBorder shapeBorder;

  const ShimmerWidget.rectangular({
    super.key,
    required this.width,
    required this.height,
  }) : shapeBorder = const RoundedRectangleBorder();

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        width: width,
        height: height,
        decoration: ShapeDecoration(
          color: Colors.grey[400]!,
          shape: shapeBorder,
        ),
      ),
    );
  }
}

Widget _shimmerProductOfferList() {
  return ListView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: 7,
    itemBuilder: (context, index) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShimmerWidget.rectangular(width: 200.w, height: 25.h),
            ShimmerWidget.rectangular(width: 60.w, height: 25.h),
          ],
        ),
      );
    },
  );
}
