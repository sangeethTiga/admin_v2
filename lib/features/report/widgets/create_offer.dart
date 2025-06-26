import 'package:admin_v2/features/common/cubit/common_cubit.dart';
import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/products/cubit/product_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/features/report/domain/models/offers/offers_response.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/widgets/dropdown_field_widget/dropdown_field_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:admin_v2/shared/widgets/text_fields/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CreateOffer extends StatefulWidget {
  const CreateOffer({super.key});

  @override
  State<CreateOffer> createState() => _CreateOfferState();
}

class _CreateOfferState extends State<CreateOffer> {
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
                Text('Add Product Offer ', style: FontPalette.hW700S14),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    //  context.read<ProductCubit>().closeButton();
                  },
                  child: SvgPicture.asset('assets/icons/x-close.svg'),
                ),
              ],
            ),
          ),

          BlocBuilder<CommonCubit, CommonState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(13),
                child: DropDownFieldWidget(
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
                  suffixWidget: SvgPicture.asset(
                    'assets/icons/Arrow - Right.svg',
                  ),
                  onChanged: (p0) {
                    context.read<CommonCubit>().selectedStore(p0);
                  },
                  labelText: '',
                ),
              );
              


            },
          ),
          
          // Padding(
          //   padding: EdgeInsets.all(13),
          //   child: BlocBuilder<ReportCubit, ReportState>(
          //     builder: (context, state) {
          //       return DropDownFieldWidget(
          //             isLoading: state.apiFetchStatus == ApiFetchStatus.loading,
          //             prefixIcon: Container(
          //               margin: EdgeInsets.only(left: 12.w),
          //               // child: SvgPicture.asset(
          //               //   'assets/icons/package-box-pin-location.svg',
          //               //   width: 20.w,
          //               //   height: 20.h,
          //               //   fit: BoxFit.contain,
          //               // ),
          //             ),
          //             borderColor: kBlack,
          //             value: state.selectedType,
          //             items:
          //                 state.offerType?.map((e) {
          //                   return DropdownMenuItem<OffersResponse>(
          //                     value: e,
          //                     child: Text(e. offerTypeName?? ''),
          //                   );
          //                 }).toList() ??
          //                 [],
          //             fillColor: const Color(0XFFEFF1F1),

          //             onChanged: (p0) {
          //               //context.read<CommonCubit>().selectedStore(p0);
          //               context.read<ReportCubit>().loadOfferType();
          //               // context.read<OrderCubit>().orders(
          //               //   req: OrderRequest(
          //               //     storeId: state.selectedStore?.storeId,
          //               //     fromDate: parsedDate(DateTime.now()),
          //               //     toDate: parsedDate(DateTime.now()),
          //               //   ),
          //               // );
          //             },

          //             labelText: '',
          //           );
          //     },
          //   ),
          // ),
                    Padding(
            padding: EdgeInsets.all(13),
            child: TextFeildWidget(
              topLabelText: 'Product Name',
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
              topLabelText: 'Offer Price',
            //  controller: offerPriceController,
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
            //  controller: discountController,
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



        ],
      ),
    );
  }
}
