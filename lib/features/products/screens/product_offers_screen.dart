import 'package:admin_v2/features/common/cubit/common_cubit.dart';
import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/orders/cubit/order_cubit.dart';
import 'package:admin_v2/features/orders/domain/models/order_request/order_request.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/utils/helper/helper.dart';
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
import 'package:shimmer/shimmer.dart';

class ProductOffersScreen extends StatelessWidget {
  const ProductOffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.r),
        ),
        backgroundColor: kPrimaryColor,
        onPressed: () {},
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
                BlocBuilder<CommonCubit, CommonState>(
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
                        context.read<CommonCubit>().selectedStore(p0);
                        context.read<OrderCubit>().orders(
                          req: OrderRequest(
                            storeId: state.selectedStore?.storeId,
                            fromDate: parsedDate(DateTime.now()),
                            toDate: parsedDate(DateTime.now()),
                          ),
                        );
                      },

                      labelText: '',
                    );
                  },
                ),
                14.verticalSpace,
                Row(
                  children: [
                    Expanded(
                      child: DatePickerContainer(
                        hintText: 'Pls',
                        changeDate: () {},
                      ),
                    ),
                    12.horizontalSpace,
                    Expanded(
                      child: DatePickerContainer(
                        hintText: 'Pls',
                        changeDate: () {},
                      ),
                    ),
                  ],
                ),
                12.verticalSpace,
                TextFeildWidget(
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
                      height: 235.h,
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
                          final offer = state.productOffers;
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
                                      (''),
                                      style: FontPalette.hW700S13.copyWith(
                                        color: kBlack,
                                      ),
                                    ),
                                    Spacer(),
                                    SvgPicture.asset('assets/icons/Edit.svg'),
                                    3.horizontalSpace,
                                    Text(
                                      'Edit',
                                      style: FontPalette.hW700S14.copyWith(
                                        color: kPrimaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              dividerWidget(color: kLightBorderColor),
                              10.verticalSpace,
                              rowWidget(name: 'Offer', status: "Big deals"),
                              8.verticalSpace,
                              rowWidget(name: 'Offer price', status: 'AED 123'),
                              8.verticalSpace,
                              rowWidget(name: 'Discount', status: "10%"),
                              8.verticalSpace,

                              rowWidget(
                                name: 'From date',
                                status: "23-mar-2025",
                              ),
                              8.verticalSpace,

                              rowWidget(name: 'To date', status: "28-mar 2025"),
                              5.verticalSpace,

                              rowWidget(name: 'Status', status: "Paid"),
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

Widget _shimmerExpenseList() {
  return ListView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: 8,
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
