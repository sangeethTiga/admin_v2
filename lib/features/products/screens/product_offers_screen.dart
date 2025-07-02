import 'package:admin_v2/features/common/cubit/common_cubit.dart';
import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/features/report/domain/models/editoffer/edit_offer_response.dart';
import 'package:admin_v2/features/report/domain/models/offers/offers_response.dart';
import 'package:admin_v2/features/report/widgets/create_offer.dart';
import 'package:admin_v2/features/report/widgets/edit_offer.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/date_picker/date_picker_container.dart';
import 'package:admin_v2/shared/widgets/divider/divider_widget.dart';
import 'package:admin_v2/shared/widgets/dropdown_field_widget/dropdown_field_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:admin_v2/shared/widgets/text_fields/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

class ProductOffersScreen extends StatelessWidget {
  const ProductOffersScreen({super.key});

  String formatDate(DateTime date) {
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.r),
          ),
          backgroundColor: kPrimaryColor,
          onPressed: () async {
            final result = await showModalBottomSheet<bool>(
              context: context,
              isScrollControlled: true,
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
              ),
              builder: (context) => const CreateOffer(),
            );
      
            if (result == true) {
              final storeId = context
                  .read<DashboardCubit>()
                  .state
                  .selectedStore
                  ?.storeId;
              if (storeId != null) {
                context.read<ReportCubit>().loadProductOffers(storeId: storeId);
              }
            }
          },
      
          child: Icon(Icons.add, color: kWhite, size: 25.h),
        ),
        appBar: AppbarWidget(title: 'Product Offers'),
        body: Column(
          children: [
            dividerWidget(height: 6.h),
            16.verticalSpace,
            MainPadding(
              child: Column(
                children: [
                  BlocBuilder<DashboardCubit, DashboardState>(
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
      
                        onChanged: (p0) {
                          context.read<DashboardCubit>().selectedStore(p0);
                          context.read<ReportCubit>().loadProductOffers(
                              storeId: state.selectedStore?.storeId,
                          );
                          // context.read<OrderCubit>().orders(
                          //   req: OrderRequest(
                          //     storeId: state.selectedStore?.storeId,
                          //     fromDate: parsedDate(DateTime.now()),
                          //     toDate: parsedDate(DateTime.now()),
                          //   ),
                          // );
                        },
      
                        labelText: '',
                      );
                    },
                  ),
                  14.verticalSpace,
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
                                context.read<ReportCubit>().changeToDate(
                                  pickedDate,
                                );
                              },
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  12.verticalSpace,
                  TextFeildWidget(
                    onChanged: (value) {
                      final offers = context.read<ReportCubit>();
                      final productOffers = offers.state.productOffers ?? [];
                      if (value!.isEmpty) {
                        offers.state.copyWith(filteredProducts: productOffers);
                      } else {
                        final filtered = productOffers.where((product) {
                          return product.productName?.toLowerCase().contains(
                                value.toLowerCase(),
                              ) ??
                              false;
                        }).toList();
                        offers.emit(
                          offers.state.copyWith(filteredProducts: filtered),
                        );
                      }
                    },
                    borderColor: kBlack,
                    hight: 48.h,
                    fillColor: kWhite,
                    inputBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: BorderSide(color: Color(0XFFB7C6C2)),
                    ),
                    prefix: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset('assets/icons/Search.svg'),
                    ),
                    hintText: 'Search product offers',
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset('assets/icons/x-close.svg'),
                    ),
                  ),
                  16.verticalSpace,
                  BlocBuilder<ReportCubit, ReportState>(
                    builder: (context, state) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 12.h),
                        height: 485.h,
                        width: 351.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: kWhite,
                          border: Border.all(color: kLightBorderColor),
                        ),
                        child: ListView.builder(
                          itemCount: state.productOffers?.length,
                          shrinkWrap: true,
      
                          itemBuilder: (context, i) {
                            final offer = state.productOffers?[i];
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 12.w,
                                    top: 12.h,
                                    right: 16.w,
                                    bottom: 6.h,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        (offer?.productName ?? ''),
                                        style: FontPalette.hW700S13.copyWith(
                                          color: kBlack,
                                        ),
                                      ),
                                      Spacer(),
                                      // SvgPicture.asset('assets/icons/Edit.svg'),
                                      3.horizontalSpace,
      
                                      GestureDetector(
                                        onTap: () async {
                                          context
                                              .read<ReportCubit>()
                                              .loadSpecialOffer(
                                                storeId:
                                                    state.selectedType?.storeId,
                                              );
      
                                          final editedResponse =
                                              await showModalBottomSheet<
                                                EditOfferResponse
                                              >(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(
                                                      12.r,
                                                    ),
                                                    topRight: Radius.circular(
                                                      12.r,
                                                    ),
                                                  ),
                                                ),
                                                backgroundColor: kWhite,
                                                context: context,
                                                builder: (context) {
                                                  return EditProductOffer(
                                                    product: offer!,
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
                                              style: FontPalette.hW700S14
                                                  .copyWith(color: kPrimaryColor),
                                            ),
                                            6.horizontalSpace,
                                          ],
                                        ),
                                      ),
      
                                      // Text(
                                      //   'Edit',
                                      //   style: FontPalette.hW700S14.copyWith(
                                      //     color: kPrimaryColor,
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                ),
      
                                dividerWidget(color: kLightBorderColor),
                                10.verticalSpace,
                                rowWidget(
                                  name: 'Offer',
                                  status: offer?.offerTypeName ?? '',
                                ),
                                8.verticalSpace,
                                rowWidget(
                                  name: 'Offer price',
                                  status:
                                      offer?.offerPrice?.toStringAsFixed(2) ??
                                      '0.00',
                                ),
                                8.verticalSpace,
                                rowWidget(
                                  name: 'Discount',
                                  status:
                                      offer?.offerPricePercentage?.toString() ??
                                      '0',
                                ),
                                8.verticalSpace,
      
                                rowWidget(
                                  name: 'From date',
                                  status: offer?.offerFromDate != null
                                      ? formatDate(offer!.offerFromDate!)
                                      : '',
                                ),
                                8.verticalSpace,
      
                                rowWidget(
                                  name: 'To date',
                                  status: offer?.offerToDate != null
                                      ? formatDate(offer!.offerToDate!)
                                      : '',
                                ),
                                5.verticalSpace,
      
                                rowWidget(
                                  name: 'Status',
                                  status: offer?.offerStatus ?? '',
                                ),
                              ],
                            );
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
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

// Widget _shimmerExpenseList() {
//   return ListView.builder(
//     shrinkWrap: true,
//     physics: const NeverScrollableScrollPhysics(),
//     itemCount: 8,
//     itemBuilder: (context, index) {
//       return Padding(
//         padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             ShimmerWidget.rectangular(width: 200.w, height: 25.h),
//             ShimmerWidget.rectangular(width: 60.w, height: 25.h),
//           ],
//         ),
//       );
//     },
//   );
// }

Widget rowWidget({String? name, String? status}) {
  return MainPadding(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(flex: 3, child: Text(name ?? '', style: FontPalette.hW600S13)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Text(':'),
        ),
        Expanded(
          flex: 3,
          child: Text(status ?? '', style: FontPalette.hW400S13),
        ),
      ],
    ),
  );
}
