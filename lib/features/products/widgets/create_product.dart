import 'dart:convert';

import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/products/cubit/product_cubit.dart';
import 'package:admin_v2/features/products/domain/models/create_product/create_product_response.dart'
    hide Image;
import 'package:admin_v2/features/products/domain/models/unit/unit_response.dart';
import 'package:admin_v2/features/products/widgets/image_picker.dart';

import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/buttons/custom_material_button.dart';
import 'package:admin_v2/shared/widgets/divider/divider_widget.dart';
import 'package:admin_v2/shared/widgets/dropdown_field_widget/dropdown_field_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:admin_v2/shared/widgets/text_fields/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import 'package:image_picker/image_picker.dart';

class CreateProduct extends StatefulWidget {
  const CreateProduct({super.key});

  @override
  State<CreateProduct> createState() => _CreateProductState();
}

class _CreateProductState extends State<CreateProduct> {
  final TextEditingController productName = TextEditingController();
  final TextEditingController productCode = TextEditingController();
  final TextEditingController productPrice = TextEditingController();
  final TextEditingController productQuantity = TextEditingController();
  bool isPurchasable = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Products'),
      body: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          return Column(
            children: [
              dividerWidget(height: 6.h),
              MainPadding(
                child: Column(
                  children: [
                    _buildStoreDropdown(),

                    _buildCategoryDropdown(state),
                    _buildCheckbox(),
                    15.verticalSpace,

                    TextFeildWidget(
                      controller: productName,
                      topLabelText: 'Product Name',
                      hintText: 'Product Name',
                      borderColor: kBlack,
                      hight: 48.h,
                      fillColor: kWhite,
                      inputBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: BorderSide(color: Color(0XFFB7C6C2)),
                      ),
                    ),
                    18.verticalSpace,
                    Row(
                      children: [
                        Expanded(
                          child: TextFeildWidget(
                            controller: productCode,
                            topLabelText: 'Product Code',
                            hintText: 'Product Code',
                            borderColor: kBlack,
                            hight: 48.h,
                            fillColor: kWhite,
                            inputBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.r),
                              borderSide: BorderSide(color: Color(0XFFB7C6C2)),
                            ),
                          ),
                        ),
                        SizedBox(width: 12.w),
                        Expanded(
                          child: TextFeildWidget(
                            controller: productPrice,
                            topLabelText: 'Product Price',
                            hintText: 'Product Price',
                            borderColor: kBlack,
                            hight: 48.h,
                            fillColor: kWhite,
                            inputBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.r),
                              borderSide: BorderSide(color: Color(0XFFB7C6C2)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // CustomMaterialBtton(
                    //   buttonText: 'Select Image',
                    //   onPressed: () {
                    //     _showImagePickerOptions(context);
                    //   },
                    // ),
                    BlocBuilder<ProductCubit, ProductState>(
                      builder: (context, state) {
                        if (state.productImage == null ||
                            state.productImage!.isEmpty) {
                          return SizedBox.shrink();
                        }

                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: Wrap(
                            spacing: 8,
                            children: state.productImage!.asMap().entries.map((
                              entry,
                            ) {
                              final index = entry.key;
                              final img = entry.value;

                              return Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.network(
                                      img.resourceLargeName ?? '',
                                      width: 960,
                                      height: 720,
                                      fit: BoxFit.cover,
                                      errorBuilder:
                                          (context, error, stackTrace) => Icon(
                                            Icons.broken_image,
                                            size: 80,
                                          ),
                                    ),
                                  ),
                                  // Cross Button
                                  Positioned(
                                    top: 4,
                                    right: 4,
                                    child: GestureDetector(
                                      onTap: () {
                                        context
                                            .read<ProductCubit>()
                                            .removeProductImage(index);
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.6),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          Icons.close,
                                          size: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }).toList(),
                          ),
                        );
                      },
                    ),

                    18.verticalSpace,

                    CustomMaterialBtton(
                      buttonText: 'Submit',
                      onPressed: () async {
                        final productState = context.read<ProductCubit>().state;

                        if (productName.text.isEmpty ||
                            productCode.text.isEmpty ||
                            productPrice.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Please fill in all required fields',
                              ),
                            ),
                          );
                          return;
                        }

                        final double price =
                            double.tryParse(productPrice.text) ?? 0.0;
                        final int quantity =
                            int.tryParse(productQuantity.text) ?? 0;

                        final createProductData = CreateProductResponse(
                          brandId: 0,
                          createdBy: 1,

                          isActive: 1,
                          productCategories:
                              productState
                                      .selectCategory
                                      ?.details
                                      ?.categoryId !=
                                  null
                              ? [
                                  productState
                                      .selectCategory!
                                      .details!
                                      .categoryId!,
                                ]
                              : [],

                          // productImages: productState.images ?? [],
                          productName: productName.text.trim(),
                          productCode: productCode.text.trim(),
                          volume: quantity.toString(),
                          storeId: productState.selectedStore?.storeId ?? 0,
                          mainCategoryId:
                              productState
                                  .selectCategory
                                  ?.details
                                  ?.categoryId ??
                              0,
                          unitId: productState.selectedUnit?.unitId ?? 0,
                          isSellable: productState.isSellable ? 1 : 0,
                          isPurchasable: productState.isPurchasable ? 1 : 0,
                          productPrice: price.toInt(),
                        );

                        context.read<ProductCubit>().createProduct(
                          create: createProductData,
                        );
                        context.pop('refresh');
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildStoreDropdown() {
    return BlocBuilder<DashboardCubit, DashboardState>(
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
          value: state.selectedStore,
          items:
              state.storeList?.map((e) {
                return DropdownMenuItem<StoreResponse>(
                  value: e,
                  child: Text(e.storeName ?? ''),
                );
              }).toList() ??
              [],
          fillColor: const Color(0XFFEFF1F1),
          onChanged: (store) => _handleStoreChange(store, context),
          labelText: '',
          textStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 16,
            letterSpacing: 0.5,
          ),
        );
      },
    );
  }

  Widget _buildCategoryDropdown(ProductState state) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, common) {
        return DropDownFieldWidget(
          isLoading: state.apiFetchStatus == ApiFetchStatus.loading,
          hintStyle: FontPalette.hW500S14,
          hintText: 'Select Main Category',
          borderColor: kBlack,
          value:
              state.categoryList?.any(
                    (e) =>
                        e.details?.categoryId ==
                        state.selectCategory?.details?.categoryId,
                  ) ==
                  true
              ? state.selectCategory?.details?.categoryId
              : null,
          items:
              state.categoryList?.map((e) {
                return DropdownMenuItem<int>(
                  value: e.details?.categoryId,
                  child: Text(e.details?.categoryName ?? ''),
                );
              }).toList() ??
              [],
          fillColor: Colors.white,
          suffixWidget: SizedBox(
            height: 12.h,
            width: 12.w,
            child: SvgPicture.asset(
              'assets/icons/down -arrow.svg',
              width: 9.33.w,
              height: 5.h,
              fit: BoxFit.contain,
              color: Colors.black,
            ),
          ),
          onChanged: (categoryId) =>
              _handleCategoryChange(categoryId, state, common, context),
          inputBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(color: Color(0XFFB7C6C2)),
          ),
        );
      },
    );
  }

  Widget _buildUnitDropdown(ProductState state) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, dashboardState) {
        return DropDownFieldWidget(
          isLoading: state.apiFetchStatus == ApiFetchStatus.loading,
          hintStyle: FontPalette.hW500S14,
          topLabelText: 'select unit',
          hintText: 'Select Unit',
          borderColor: kBlack,
          value: state.selectedUnit,
          items:
              state.unit?.map((e) {
                return DropdownMenuItem<UnitResponse>(
                  value: e,
                  child: Text(e.unitName ?? ''),
                );
              }).toList() ??
              [],
          fillColor: Colors.white,
          suffixWidget: SizedBox(
            height: 12.h,
            width: 12.w,
            child: SvgPicture.asset(
              'assets/icons/down -arrow.svg',
              width: 9.33.w,
              height: 5.h,
              fit: BoxFit.contain,
              color: Colors.black,
            ),
          ),
          onChanged: (unit) => _handleUnitChange(unit, context),
          inputBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(color: Color(0XFFB7C6C2)),
          ),
        );
      },
    );
  }

  void _showImagePickerOptions(BuildContext context) {
    final ImagePicker picker = ImagePicker();
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text('Take Photo'),
                onTap: () async {
                  Navigator.pop(context);
                  final XFile? image = await picker.pickImage(
                    source: ImageSource.camera,
                  );
                  if (image != null) {
                    _handlePickedImage(image);
                  }
                },
              ),
              ListTile(
                leading: Icon(Icons.photo_library),
                title: Text('Choose from Gallery'),
                onTap: () async {
                  final currentContext = context;
                  Navigator.pop(currentContext);

                  final XFile? image = await picker.pickImage(
                    source: ImageSource.gallery,
                  );
                  if (image != null) {
                    _handlePickedImage(image);
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _handlePickedImage(XFile imageFile) async {
    final shouldUpload = await showDialog<bool>(
      context: context,
      builder: (context) => UploadConfirmationDialog(imageFile: imageFile),
    );

    // if (shouldUpload == true) {

    //   await context.read<ProductCubit>().uploadProductImage(imageFile);
    // }
  }

  Widget _buildCheckbox() {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        return MainPadding(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                child: Row(
                  children: [
                    Checkbox(
                      value: state.isSellable,
                      onChanged: (value) {
                        context.read<ProductCubit>().toggleSellable(
                          value ?? false,
                        );
                      },
                      activeColor: kPrimaryColor,
                      shape: const CircleBorder(),
                      side: const BorderSide(
                        color: Color(0xFFCBD7D4),
                        width: 1.5,
                      ),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    Text('Is Sellable', style: FontPalette.hW500S12),
                    const Spacer(),
                    Checkbox(
                      value: state.isPurchasable,
                      onChanged: (value) {
                        context.read<ProductCubit>().togglePurchasable(
                          value ?? false,
                        );
                      },
                      activeColor: kPrimaryColor,
                      shape: const CircleBorder(),
                      side: const BorderSide(
                        color: Color(0xFFCBD7D4),
                        width: 1.5,
                      ),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    Text('Is Purchasable', style: FontPalette.hW500S12),
                  ],
                ),
              ),

              if (state.isPurchasable)
                Padding(
                  padding: EdgeInsets.only(top: 8.h),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: TextFeildWidget(
                          controller: productQuantity,
                          topLabelText: 'Quantity',
                          hintText: 'Enter quantity',
                          borderColor: kBlack,
                          hight: 48.h,
                          fillColor: kWhite,
                          inputBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: const BorderSide(
                              color: Color(0XFFB7C6C2),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Expanded(flex: 1, child: _buildUnitDropdown(state)),
                    ],
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  void _handleCategoryChange(
    int? categoryId,
    ProductState state,
    DashboardState common,
    BuildContext context,
  ) {
    final selectedCategory = state.categoryList?.firstWhere(
      (e) => e.details?.categoryId == categoryId,
    );

    final productCubit = context.read<ProductCubit>();
    productCubit.changeCategory(selectedCategory!);
    productCubit.product(
      storeId: common.selectedStore?.storeId ?? 0,
      catId: selectedCategory.details?.categoryId ?? 0,

      barCode: '',
      filterId: state.selectProduct?.filterId ?? 0,
    );
  }

  void _handleUnitChange(UnitResponse? unit, BuildContext context) {
    context.read<ProductCubit>().changeUnit(unit ?? UnitResponse());
  }

  void _handleStoreChange(StoreResponse? store, BuildContext context) {
    final productCubit = context.read<ProductCubit>();
    final dashboardCubit = context.read<DashboardCubit>();

    dashboardCubit.selectedStore(store ?? StoreResponse());
    productCubit.catgeory(store?.storeId ?? 0);
    productCubit.clearCategory();
    productCubit.clearAllProducts();
    productCubit.changeStore(store ?? StoreResponse());
    productCubit.product(storeId: store?.storeId);
  }
}
