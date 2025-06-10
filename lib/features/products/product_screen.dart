import 'package:admin_v2/features/common/cubit/common_cubit.dart';
import 'package:admin_v2/features/products/cubit/product_cubit.dart';
import 'package:admin_v2/features/products/widgets/stock_update_card.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/divider/divider_widget.dart';
import 'package:admin_v2/shared/widgets/dropdown_field_widget/dropdown_field_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

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
                                  return DropdownMenuItem<int>(
                                    value: e.storeId,
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
                            value: state.selectCategory,
                            items:
                                state.categoryList?.map((e) {
                                  return DropdownMenuItem<int>(
                                    value: e.details?.categoryId,
                                    child: Text(e.details?.categoryName ?? ''),
                                  );
                                }).toList() ??
                                [],
                            onChanged: (p0) {
                              context.read<ProductCubit>().changeCategory(p0);
                              context.read<ProductCubit>().priduct(
                                common.selectedStore?.storeId ?? 0,
                                state.selectCategory?.details?.categoryId ?? 0,
                              );
                            },
                            inputBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.r),
                              borderSide: BorderSide(color: Color(0XFFB7C6C2)),
                            ),
                            suffixWidget: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: SvgPicture.asset(
                                'assets/icons/Arrow - Right (2).svg',
                              ),
                            ),
                            // suffixWidget: Padding(
                            //   padding: const EdgeInsets.only(left: 1, right: 1),
                            //   child: SvgPicture.asset(
                            //     'assets/icons/Arrow - Right (2).svg',
                            //   ),
                            // ),
                          );
                        },
                      ),

                      DropDownFieldWidget(
                        hintStyle: FontPalette.hW500S14,
                        labelText: 'All products',
                        items: [],
                        inputBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide(color: Color(0XFFB7C6C2)),
                        ),
                        suffixWidget: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: SvgPicture.asset(
                            'assets/icons/Arrow - Right (2).svg',
                          ),
                        ),
                        // suffixWidget: Padding(
                        //   padding: const EdgeInsets.only(left: 1, right: 1),
                        //   child: SvgPicture.asset(
                        //     'assets/icons/Arrow - Right (2).svg',
                        //   ),
                        // ),
                      ),
                      DropDownFieldWidget(
                        hintStyle: FontPalette.hW500S14,
                        labelText: 'All products',
                        items: [],
                        inputBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide(color: Color(0XFFB7C6C2)),
                        ),
                        suffixWidget: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: SvgPicture.asset('assets/icons/Scaner.svg'),
                        ),
                        // suffixIcon: Padding(
                        //   padding: const EdgeInsets.only(left: 1, right: 1),
                        //   child: SvgPicture.asset(
                        //     'assets/icons/Arrow - Right (2).svg',
                        //   ),
                        // ),
                      ),
                      14.verticalSpace,

                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: state.productList?.length,
                        itemBuilder: (context, i) {
                          final data = state.productList?[i];
                          return Container(
                            margin: EdgeInsets.only(bottom: 12.h),
                            height: 122.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              border: Border.all(color: Color(0XFFF4F5F5)),
                            ),
                            child: Column(
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
                                            (data?.images?.isEmpty ?? false)
                                            ? ''
                                            : data?.images?[0].medium ?? '',
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
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  data?.productName ?? '',
                                                  style: FontPalette.hW700S13,
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
                                                    style: FontPalette.hW700S14
                                                        .copyWith(
                                                          color: kPrimaryColor,
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
                                                'Price : ${data?.productPrice ?? ''}',
                                                style: FontPalette.hW500S13,
                                              ),
                                              10.horizontalSpace,
                                              Text(
                                                'QTY : ${data?.productQty ?? ''}',
                                                style: FontPalette.hW500S13,
                                              ),
                                            ],
                                          ),
                                          4.verticalSpace,
                                          Text(
                                            'Prod Code : ${data?.productCode ?? ''}',
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
                                                    BorderRadius.circular(6.r),
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
