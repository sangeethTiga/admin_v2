
import 'package:admin_v2/features/common/cubit/common_cubit.dart';
import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/products/cubit/product_cubit.dart';
import 'package:admin_v2/features/products/widgets/scanner_dialog.dart';
import 'package:admin_v2/features/products/widgets/stock_update_card.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/divider/divider_widget.dart';
import 'package:admin_v2/shared/widgets/dropdown_field_widget/dropdown_field_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:admin_v2/shared/widgets/text_fields/text_field_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:permission_handler/permission_handler.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final TextEditingController mobileScannerController = TextEditingController();
  void cameraPermission() async {
    var status = await Permission.camera.request();
    if (status.isDenied || status.isPermanentlyDenied) {
      openAppSettings();
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Products'),
      body: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          if (state.isProduct == ApiFetchStatus.loading) {
            return Center(child: CircularProgressIndicator());
          }
          return SingleChildScrollView(
            child: Column(
              children: [
                dividerWidget(height: 6.h),
                MainPadding(
                  child: Column(
                    children: [
                      BlocBuilder<CommonCubit, CommonState>(
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
                            suffixWidget: SvgPicture.asset(
                              'assets/icons/Arrow - Right.svg',
                            ),
                            onChanged: (p0) {
                              context.read<CommonCubit>().selectedStore(p0);
                              context.read<ProductCubit>().catgeory(
                                p0?.storeId,
                              );
                            },
                            labelText: '',
                          );
                        },
                      ),
                      14.verticalSpace,
                      BlocBuilder<CommonCubit, CommonState>(
                        builder: (context, common) {
                          return DropDownFieldWidget(
                            hintStyle: FontPalette.hW500S14,
                            labelText: 'Select category',
                            value: state.selectCategory?.details?.categoryId,
                            items:
                                state.categoryList?.map((e) {
                                  return DropdownMenuItem<int>(
                                    value: e.details?.categoryId,
                                    child: Text(e.details?.categoryName ?? ''),
                                  );
                                }).toList() ??
                                [],
                            onChanged: (categoryId) {
                              mobileScannerController.clear();
                              final selectedCategory = state.categoryList
                                  ?.firstWhere(
                                    (e) => e.details?.categoryId == categoryId,
                                  );
                              context.read<ProductCubit>().changeCategory(
                                selectedCategory!,
                              );
                              context.read<ProductCubit>().priduct(
                                common.selectedStore?.storeId ?? 0,
                                state.selectCategory?.details?.categoryId ?? 0,
                                '',
                              );
                            },
                            inputBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.r),
                              borderSide: BorderSide(color: Color(0XFFB7C6C2)),
                            ),
                            suffixWidget: SvgPicture.asset(
                              'assets/icons/Arrow - Right.svg',
                            ),
                          );
                        },
                      ),
                      14.verticalSpace,
                      TextFeildWidget(
                        onChanged: (value) {
                          final productCubit = context.read<ProductCubit>();
                          final allProducts =
                              productCubit.state.productList ?? [];
                          if (value!.isEmpty) {
                            productCubit.state.copyWith(
                              filteredProducts: allProducts,
                            );
                          } else {
                            final filtered = allProducts.where((product) {
                              return product.productName
                                      ?.toLowerCase()
                                      .contains(value.toLowerCase()) ??
                                  false;
                            }).toList();
                            productCubit.emit(
                              productCubit.state.copyWith(
                                filteredProducts: filtered,
                              ),
                            );
                          }
                        },
                        // (p0) {
                        // final storeId =
                        //     context
                        //         .read<CommonCubit>()
                        //         .state
                        //         .selectedStore
                        //         ?.storeId ??
                        //     0;
                        // final catId =
                        //     context
                        //         .read<ProductCubit>()
                        //         .state
                        //         .selectCategory
                        //         ?.details
                        //         ?.categoryId ??
                        //     0;
                        // context.read<ProductCubit>().priduct(
                        //   storeId,
                        //   catId,
                        //   mobileScannerController.text,
                        // );
                        //  },
                        prefix: Icon(Icons.search),
                        hintText: 'search for product',
                        controller: mobileScannerController,

                        borderColor: kBlack,
                        hight: 48.h,
                        fillColor: kWhite,
                        inputBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide(color: Color(0XFFB7C6C2)),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () async {
                            cameraPermission();
                            final scannedCode = await showDialog<String>(
                              context: context,
                              builder: (_) => ScannerDialog(),
                            );
                            if (scannedCode != null) {
                              mobileScannerController.text = scannedCode;
                              final storeId =
                                  context
                                      .read<CommonCubit>()
                                      .state
                                      .selectedStore
                                      ?.stateId ??
                                  0;
                              final catId =
                                  context
                                      .read<ProductCubit>()
                                      .state
                                      .selectCategory
                                      ?.details
                                      ?.categoryId ??
                                  0;
                              context.read<ProductCubit>().priduct(
                                storeId,
                                catId,
                                scannedCode,
                              );
                            }
                          },
                          icon: Icon(Icons.document_scanner_outlined),
                        ),
                      ),

                      14.verticalSpace,

                      BlocBuilder<ProductCubit, ProductState>(
                        builder: (context, state) {
                          final products = state.filteredProducts ?? [];
                          return ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: products.length,
                            // state.productList?.length,
                            itemBuilder: (context, i) {
                              final data = products[i];
                              // final data = state.productList?[i];
                              return Container(
                                margin: EdgeInsets.only(bottom: 12.h),
                                height: 122.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.r),
                                  border: Border.all(color: Color(0XFFF4F5F5)),
                                ),
                                child: Column(
                                  //mainAxisSize:MainAxisSize.min ,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Row(
                                      children: [
                                        7.horizontalSpace,
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: CachedNetworkImage(
                                            height: 55.h,
                                            width: 55.w,
                                            imageUrl:
                                                (data.images?.isEmpty ?? false)
                                                ? ''
                                                : data.images?[0].medium ?? '',
                                            errorWidget: (context, url, error) {
                                              return Icon(Icons.photo);
                                            },
                                          ),
                                        ),

                                        12.horizontalSpace,

                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Flexible(
                                                    child: Text(
                                                      data.productName ?? '',
                                                      style:
                                                          FontPalette.hW700S13,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 2,
                                                    ),
                                                  ),

                                                  Row(
                                                    children: [
                                                      SvgPicture.asset(
                                                        'assets/icons/Edit.svg',
                                                      ),
                                                      3.horizontalSpace,
                                                      Text(
                                                        'Edit',
                                                        style: FontPalette
                                                            .hW700S14
                                                            .copyWith(
                                                              color:
                                                                  kPrimaryColor,
                                                            ),
                                                      ),
                                                      6.horizontalSpace,
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              6.verticalSpace,

                                              Row(
                                                children: [
                                                  Text(
                                                    'Price : ${data.productPrice ?? ''}',
                                                    style: FontPalette.hW500S13,
                                                  ),
                                                  10.horizontalSpace,
                                                  Text(
                                                    'QTY : ${data.productQty ?? ''}',
                                                    style: FontPalette.hW500S13,
                                                  ),
                                                ],
                                              ),
                                              4.verticalSpace,
                                              Text(
                                                'Prod Code : ${data.productCode ?? ''}',
                                                style: FontPalette.hW500S13,
                                              ),
                                              4.verticalSpace,

                                              GestureDetector(
                                                onTap: () {
                                                  showModalBottomSheet(
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                  12.r,
                                                                ),
                                                            topRight:
                                                                Radius.circular(
                                                                  12.r,
                                                                ),
                                                          ),
                                                    ),
                                                    backgroundColor: kWhite,
                                                    context: context,
                                                    isScrollControlled: true,
                                                    builder: (context) {
                                                      return StockUpdateCard();
                                                    },
                                                  );
                                                },
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  height: 32.h,
                                                  width: 108.w,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          6.r,
                                                        ),
                                                    border: Border.all(
                                                      color: kPrimaryColor,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    'Stock Update',
                                                    style: FontPalette.hW700S13
                                                        .copyWith(
                                                          color: kPrimaryColor,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
