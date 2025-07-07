import 'dart:developer';

import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/products/cubit/product_cubit.dart';
import 'package:admin_v2/features/products/domain/models/edit_update_req/edit_update_response.dart';
import 'package:admin_v2/features/products/widgets/edit_product.dart';
import 'package:admin_v2/features/products/widgets/scanner_dialog.dart';
import 'package:admin_v2/features/products/widgets/stock_update_card.dart';
import 'package:admin_v2/features/products/widgets/variant_stock_update.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/app/list/common_map.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/common_widgets/common_show_dialogue/common_show_dialogue.dart';
import 'package:admin_v2/shared/widgets/divider/divider_widget.dart';
import 'package:admin_v2/shared/widgets/dropdown_field_widget/dropdown_field_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:admin_v2/shared/widgets/text_fields/text_field_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final TextEditingController mobileScannerController = TextEditingController();


  int? selectedFilter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Products'),
      body: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          // if (state.isProduct == ApiFetchStatus.loading) {
          //   return Center(child: CircularProgressIndicator());
          // }
          return SingleChildScrollView(
            child: Column(
              children: [
                dividerWidget(height: 6.h),
                MainPadding(
                  child: Column(
                    children: [
                      BlocBuilder<DashboardCubit, DashboardState>(
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
                            value: context
                                .read<DashboardCubit>()
                                .state
                                .selectedStore,
                            items:
                                state.storeList?.map((e) {
                                  return DropdownMenuItem<StoreResponse>(
                                    value: e,
                                    child: Text(e.storeName ?? ''),
                                  );
                                }).toList() ??
                                [],
                            fillColor: const Color(0XFFEFF1F1),

                            onChanged: (p0) {
                              context.read<DashboardCubit>().selectedStore(p0);

                              context.read<ProductCubit>().catgeory(
                                p0?.storeId,
                              );
                              context.read<ProductCubit>().clearCategory();
                              context.read<ProductCubit>().changeStore(p0);
                              context.read<ProductCubit>().product(
                                p0?.storeId,
                                0,
                                '',
                                '',
                                0,
                              );
                            },
                            labelText: '',
                          );
                        },
                      ),
                      // 2.verticalSpace,
                      Row(
                        children: [
                          Expanded(
                            child: BlocBuilder<ProductCubit, ProductState>(
                              builder: (context, state) {
                                return BlocBuilder<
                                  DashboardCubit,
                                  DashboardState
                                >(
                                  builder: (context, common) {
                                    return DropDownFieldWidget(
                                      isLoading: false,
                                      // prefixIcon: Container(
                                      //   margin: EdgeInsets.only(left: 12.w),
                                      //   child: SvgPicture.asset(
                                      //     'assets/icons/package-box-pin-location.svg',
                                      //     width: 20.w,
                                      //     height: 20.h,
                                      //     fit: BoxFit.contain,
                                      //   ),
                                      // ),
                                      borderColor: kBlack,
                                      labelText: 'All Products',
                                      value:
                                          state.prodList?.any(
                                                (e) =>
                                                    e.filterId ==
                                                    state
                                                        .selectProduct
                                                        ?.filterId,
                                              ) ==
                                              true
                                          ? state.selectProduct
                                          : null,

                                      items:
                                          products.map((value) {
                                            return DropdownMenuItem<Product>(
                                              value: value,

                                              child: Text(
                                                value.name ?? '',
                                                maxLines: 1,
                                              ),
                                            );
                                          }).toList() ??
                                          [],

                                      fillColor: const Color(0XFFEFF1F1),
                                      inputBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                          8.r,
                                        ),
                                        borderSide: BorderSide(
                                          color: Color(0XFFB7C6C2),
                                        ),
                                      ),

                                      onChanged: (product) {
                                        final selected = state.prodList
                                            ?.firstWhere(
                                              (e) =>
                                                  e.filterId ==
                                                  product.filterId,
                                            );
                                        context
                                            .read<ProductCubit>()
                                            .selectProduct(product);
                                        context
                                            .read<ProductCubit>()
                                            .changeProducType(product);
                                        context.read<ProductCubit>().product(
                                          common.selectedStore?.storeId ?? 0,

                                          selected?.filterId ?? 0,
                                          '',
                                          '',
                                          0,
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: BlocBuilder<DashboardCubit, DashboardState>(
                              builder: (context, common) {
                                return DropDownFieldWidget(
                                  isLoading:
                                      state.apiFetchStatus ==
                                      ApiFetchStatus.loading,
                                  hintStyle: FontPalette.hW500S14,
                                  labelText: 'Select category',

                                  borderColor: kBlack,
                                  value:
                                      state.categoryList?.any(
                                            (e) =>
                                                e.details?.categoryId ==
                                                state
                                                    .selectCategory
                                                    ?.details
                                                    ?.categoryId,
                                          ) ==
                                          true
                                      ? state
                                            .selectCategory
                                            ?.details
                                            ?.categoryId
                                      : null,
                                  //state.selectCategory?.details?.categoryId,
                                  items:
                                      state.categoryList?.map((e) {
                                        return DropdownMenuItem<int>(
                                          value: e.details?.categoryId,
                                          child: Text(
                                            e.details?.categoryName ?? '',
                                          ),
                                        );
                                      }).toList() ??
                                      [],
                                  fillColor: const Color(0XFFEFF1F1),

                                  onChanged: (categoryId) {
                                    mobileScannerController.clear();
                                    final selectedCategory = state.categoryList
                                        ?.firstWhere(
                                          (e) =>
                                              e.details?.categoryId ==
                                              categoryId,
                                        );
                                    context.read<ProductCubit>().changeCategory(
                                      selectedCategory!,
                                    );
                                    context.read<ProductCubit>().product(
                                      common.selectedStore?.storeId ?? 0,

                                      selectedCategory.details?.categoryId ?? 0,
                                      '',
                                      '',
                                      0,
                                    );
                                  },
                                  inputBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.r),
                                    borderSide: BorderSide(
                                      color: Color(0XFFB7C6C2),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),

                      3.verticalSpace,

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

                        prefix: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset('assets/icons/Search.svg'),
                        ),
                        hintText: 'search for products',
                        hintStyle: FontPalette.hW500S14,
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
                            final scannedCode = await showDialog<String>(
                              context: context,
                              builder: (_) => ScannerDialog(),
                            );
                            log('scanned-=-=-=-=-=-=$scannedCode');
                            if (scannedCode != null) {
                              mobileScannerController.text = scannedCode;
                              final storeId =
                                  context
                                      .read<DashboardCubit>()
                                      .state
                                      .selectedStore
                                      ?.storeId ??
                                  0;

                              context.read<ProductCubit>().product(
                                storeId,
                                0,
                                '',
                                scannedCode,
                                0,
                              );
                            }
                          },
                          icon: Icon(Icons.qr_code_scanner_outlined),
                        ),
                      ),

                      12.verticalSpace,
                      BlocBuilder<ProductCubit, ProductState>(
                        builder: (context, state) {
                          final isLoading =
                              state.isProduct == ApiFetchStatus.loading;
                          //   final products = state.filteredProducts ?? [];
                          final products = state.scannedProduct != null
                              ? [state.scannedProduct!]
                              : state.filteredProducts ?? [];
                          log(
                            'scanned product-=-=-=-=-${state.scannedProduct}',
                          );
                          return isLoading
                              ? _shimmerProductList() // <- Your shimmer placeholder here
                              : ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: products.length,

                                  itemBuilder: (context, i) {
                                    final data = products[i];

                                    return Container(
                                      margin: EdgeInsets.only(bottom: 12.h),
                                      height: 150.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          12.r,
                                        ),
                                        border: Border.all(
                                          color: Color(0XFFF4F5F5),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,

                                        children: [
                                          Row(
                                            children: [
                                              7.horizontalSpace,
                                              Padding(
                                                padding: const EdgeInsets.all(
                                                  8.0,
                                                ),
                                                child: CachedNetworkImage(
                                                  height: 55.h,
                                                  width: 55.w,
                                                  imageUrl:
                                                      (data.images?.isEmpty ??
                                                          false)
                                                      ? ''
                                                      : data
                                                                .images?[0]
                                                                .medium ??
                                                            '',
                                                  errorWidget:
                                                      (context, url, error) {
                                                        return Icon(
                                                          Icons.photo,
                                                        );
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
                                                            data.productName ??
                                                                '',
                                                            style: FontPalette
                                                                .hW700S13,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            maxLines: 2,
                                                          ),
                                                        ),

                                                        GestureDetector(
                                                          onTap: () async {
                                                            final editedResponse =
                                                                await showModalBottomSheet<
                                                                  EditUpdateResponse
                                                                >(
                                                                  shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.only(
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
                                                                  isScrollControlled:
                                                                      true,
                                                                  backgroundColor:
                                                                      kWhite,
                                                                  context:
                                                                      context,
                                                                  builder: (context) {
                                                                    return EditProduct(
                                                                      product:
                                                                          data,
                                                                    );
                                                                  },
                                                                );
                                                          },
                                                          child: Row(
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
                                                        ),
                                                      ],
                                                    ),
                                                    6.verticalSpace,

                                                    Row(
                                                      children: [
                                                        Text(
                                                          'Price : ${data.productPrice ?? ''}',
                                                          style: FontPalette
                                                              .hW500S13,
                                                        ),
                                                        10.horizontalSpace,
                                                        Text(
                                                          'QTY : ${data.productQty ?? ''}',
                                                          style: FontPalette
                                                              .hW500S13,
                                                        ),
                                                      ],
                                                    ),
                                                    4.verticalSpace,
                                                    Text(
                                                      'Prod Code : ${data.productCode ?? ''}',
                                                      style:
                                                          FontPalette.hW500S13,
                                                    ),
                                                    4.verticalSpace,

                                                    GestureDetector(
                                                      onTap: () {
                                                        context
                                                            .read<
                                                              ProductCubit
                                                            >()
                                                            .closeButton();
                                                        if (data.isVariant ==
                                                                1 &&
                                                            data.maintainStock ==
                                                                1) {
                                                          context
                                                              .read<
                                                                ProductCubit
                                                              >()
                                                              .getVariants(
                                                                data.productId!,
                                                              );
                                                          commonnShowBottomSheet(
                                                            context: context,
                                                            child: VariantStockUpdateCard(
                                                              maintainStock: data
                                                                  .maintainStock!,
                                                            ),
                                                          );
                                                          // showModalBottomSheet(
                                                          //   shape: RoundedRectangleBorder(
                                                          //     borderRadius:
                                                          //         BorderRadius.only(
                                                          //           topLeft:
                                                          //               Radius.circular(
                                                          //                 12.r,
                                                          //               ),
                                                          //           topRight:
                                                          //               Radius.circular(
                                                          //                 12.r,
                                                          //               ),
                                                          //         ),
                                                          //   ),
                                                          //   backgroundColor: kWhite,
                                                          //   context: context,
                                                          //   isScrollControlled: true,

                                                          //   builder: (context) {
                                                          //     return VariantStockUpdateCard(
                                                          //       maintainStock: data
                                                          //           .maintainStock!,
                                                          //     );
                                                          //   },
                                                          // );
                                                        } else {
                                                          commonnShowBottomSheet(
                                                            context: context,
                                                            child: StockUpdateCard(
                                                              currentStock: data
                                                                  .productQty,
                                                              productId: data
                                                                  .productId,
                                                              maintainStock: data
                                                                  .maintainStock,
                                                              fromVariant:
                                                                  false,
                                                            ),
                                                          );
                                                          // showModalBottomSheet(
                                                          //   shape: RoundedRectangleBorder(
                                                          //     borderRadius:
                                                          //         BorderRadius.only(
                                                          //           topLeft:
                                                          //               Radius.circular(
                                                          //                 12.r,
                                                          //               ),
                                                          //           topRight:
                                                          //               Radius.circular(
                                                          //                 12.r,
                                                          //               ),
                                                          //         ),
                                                          //   ),
                                                          //   backgroundColor: kWhite,
                                                          //   context: context,
                                                          //   isScrollControlled: true,

                                                          //   builder: (context) {
                                                          //     return StockUpdateCard(
                                                          //       currentStock:
                                                          //           data.productQty,
                                                          //       productId:
                                                          //           data.productId,
                                                          //       maintainStock: data
                                                          //           .maintainStock,
                                                          //       fromVariant: false,
                                                          //     );
                                                          //   },
                                                          // );
                                                        }
                                                      },
                                                      child: Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: 32.h,
                                                        width: 108.w,
                                                        decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                6.r,
                                                              ),
                                                          border: Border.all(
                                                            color:
                                                                kPrimaryColor,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          'Stock Update',
                                                          style: FontPalette
                                                              .hW700S13
                                                              .copyWith(
                                                                color:
                                                                    kPrimaryColor,
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

Widget _shimmerProductList() {
  return ListView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: 8,
    itemBuilder: (context, index) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [ShimmerWidget.rectangular(width: 325.w, height: 100.h)],
        ),
      );
    },
  );
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

  const ShimmerWidget.circular({
    super.key,
    required this.width,
    required this.height,
  }) : shapeBorder = const CircleBorder();

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
