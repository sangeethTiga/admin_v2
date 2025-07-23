import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/routes/routes.dart';
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
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

class ProductOffersScreen extends StatelessWidget {
  const ProductOffersScreen({super.key});

  String formatDate(DateTime date) {
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: BlocBuilder<ReportCubit, ReportState>(
        builder: (context, state) {
          return FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.r),
            ),
            backgroundColor: kPrimaryColor,
            onPressed: () async {
              context.read<ReportCubit>().clearOffersEdit();
              final storeId = context
                  .read<DashboardCubit>()
                  .state
                  .selectedStore
                  ?.storeId;
              if (storeId != null) {
                context.read<ReportCubit>().loadSpecialOffer(storeId: storeId);
                context.read<ReportCubit>().loadProductName(storeId: storeId);
              }

              context.push(
                routeCreate,
                extra: {'storeId': storeId, 'is_edit_search': false},
              );
            },

            child: Icon(Icons.add, color: kWhite, size: 25.h),
          );
        },
      ),
      appBar: AppbarWidget(title: 'Product Offers'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            dividerWidget(height: 6.h),
            MainPadding(
              child: Column(
                children: [
                  commonStoreDropDown(
                    onChanged: (p0) {
                      context.read<DashboardCubit>().selectedStore(p0);
                      context.read<ReportCubit>().loadProductOffers(
                        storeId: p0.storeId,
                      );
                      context.read<ReportCubit>().loadProductName(
                        storeId: p0.storeId,
                      );
                      context.read<ReportCubit>().loadSpecialOffer(
                        storeId: p0.storeId,
                      );
                    },
                  ),

                  8.verticalSpace,
                  BlocBuilder<ReportCubit, ReportState>(
                    builder: (context, state) {
                      return Row(
                        children: [
                          Expanded(
                            child: DatePickerContainer(
                              value: apiFormat.format(
                                state.fromDate ?? DateTime.now(),
                              ),
                              //  firstDate: state.fromDate ?? DateTime.now(),
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
                              value: apiFormat.format(
                                state.fromDate ?? DateTime.now(),
                              ),
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
                  ),
                  16.verticalSpace,
                  BlocBuilder<ReportCubit, ReportState>(
                    builder: (context, state) {
                      if (state.isProductOffers == ApiFetchStatus.loading) {
                        return productOfferShimmer();
                      }

                      final productOffers =
                          state.filteredProducts ?? state.productOffers ?? [];

                      if (productOffers.isEmpty) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.h),
                          child: Text(
                            'No product offers available.',
                            style: FontPalette.hW500S14,
                          ),
                        );
                      }

                      return ListView.builder(
                        itemCount: productOffers.length,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, i) {
                          final offer = productOffers[i];
                          return Container(
                            margin: EdgeInsets.only(bottom: 12.h),
                            padding: EdgeInsets.symmetric(vertical: 12.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              color: kWhite,
                              border: Border.all(color: kLightBorderColor),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.w,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        offer.productName ?? '',
                                        style: FontPalette.hW700S13.copyWith(
                                          color: kBlack,
                                        ),
                                      ),
                                      const Spacer(),
                                      GestureDetector(
                                        onTap: () async {
                                          context.push(
                                            routeCreate,
                                            extra: {
                                              'storeId': context
                                                  .read<DashboardCubit>()
                                                  .state
                                                  .selectedStore
                                                  ?.storeId,
                                              'is_edit': true,
                                              "offer_data": offer,
                                              'is_edit_search': true,
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
                                                  .copyWith(
                                                    color: kPrimaryColor,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                dividerWidget(height: 2.h),
                                10.verticalSpace,
                                rowWidget(
                                  name: 'Offer',
                                  status: offer.offerTypeName ?? '',
                                ),
                                8.verticalSpace,
                                rowWidget(
                                  name: 'Offer price',
                                  status:
                                      offer.offerPrice?.toStringAsFixed(2) ??
                                      '0.00',
                                ),
                                8.verticalSpace,
                                rowWidget(
                                  name: 'Discount',
                                  status:
                                      offer.offerPricePercentage?.toString() ??
                                      '0',
                                ),
                                8.verticalSpace,
                                rowWidget(
                                  name: 'From date',
                                  status: offer.offerFromDate != null
                                      ? formatDate(offer.offerFromDate!)
                                      : '',
                                ),
                                8.verticalSpace,
                                rowWidget(
                                  name: 'To date',
                                  status: offer.offerToDate != null
                                      ? formatDate(offer.offerToDate!)
                                      : '',
                                ),
                                8.verticalSpace,
                                rowWidget(
                                  name: 'Status',
                                  status: offer.offerStatus ?? '',
                                  statusColor: () {
                                    final status = offer.offerStatus
                                        ?.toLowerCase();
                                    if (status == 'active') {
                                      return kPrimaryColor;
                                    }
                                    if (status == 'coming soon') {
                                      return kBlueColor;
                                    }
                                    return kRedColor;
                                  }(),
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
      ),
    );
  }
}

Widget rowWidget({String? name, String? status, Color? statusColor}) {
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
          child: Text(
            status ?? '',
            style: FontPalette.hW400S13.copyWith(color: statusColor ?? kBlack),
          ),
        ),
      ],
    ),
  );
}

Widget commonStoreDropDown({Function(StoreResponse)? onChanged}) {
  return BlocBuilder<DashboardCubit, DashboardState>(
    builder: (context, state) {
      return DropDownFieldWidget(
        contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 15.h),
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
          onChanged?.call(p0);
        },
        labelText: '',
        textStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 16,
          letterSpacing: 0.5,
        ),
      );
    },
  );
}

Widget productOfferShimmer() {
  return ListView.builder(
    itemCount: 5,
    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemBuilder: (context, index) {
      return Container(
        margin: EdgeInsets.only(bottom: 12.h),
        padding: EdgeInsets.all(12.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: kLightBorderColor),
        ),
        child: Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(6, (_) {
              return Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: Container(
                  height: 14.h,
                  width: double.infinity,
                  color: Colors.white,
                ),
              );
            }),
          ),
        ),
      );
    },
  );
}
