import 'package:admin_v2/features/common/cubit/common_cubit.dart';
import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/features/report/domain/models/createOffer/create_offer_response.dart';
import 'package:admin_v2/features/report/domain/models/specialOffer/special_offer_response.dart';
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

class CreateOffer extends StatefulWidget {
  const CreateOffer({super.key});

  @override
  State<CreateOffer> createState() => _CreateOfferState();
}

class _CreateOfferState extends State<CreateOffer> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController offerPriceController = TextEditingController();
  final TextEditingController discountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700.h,
      child: Column(
        children: [
          MainPadding(
            top: 29.5.h,
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

          BlocBuilder<DashboardCubit, DashboardState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(10),
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

                  onChanged: (p0) {
                    context.read<DashboardCubit>().selectedStore(p0);
                  },
                  labelText: '',
                ),
              );
            },
          ),

          Padding(
            padding: EdgeInsets.all(10),
            child: TextFeildWidget(
              controller: nameController,
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
            padding: EdgeInsets.all(10),
            child: TextFeildWidget(
              controller: offerPriceController,
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
            padding: EdgeInsets.all(10),
            child: TextFeildWidget(
              controller: discountController,
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

          // 12.verticalSpace,
          Padding(
            padding: const EdgeInsets.all(10),
            child: BlocBuilder<ReportCubit, ReportState>(
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
          ),

          // Padding(
          //   padding: EdgeInsets.all(10),
          //   child: TextFeildWidget(
          //     topLabelText: 'From Date',
          //     //  controller: discountController,
          //     hight: 48.h,
          //     fillColor: kWhite,
          //     inputBorder: OutlineInputBorder(
          //       borderRadius: BorderRadius.circular(8.r),
          //       borderSide: BorderSide(color: Color(0XFFB7C6C2)),
          //     ),
          //     contentPadding: EdgeInsets.symmetric(
          //       vertical: 14.h,
          //       horizontal: 8.w,
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: EdgeInsets.all(10),
          //   child: TextFeildWidget(
          //     topLabelText: 'To Date',
          //     //  controller: discountController,
          //     hight: 48.h,
          //     fillColor: kWhite,
          //     inputBorder: OutlineInputBorder(
          //       borderRadius: BorderRadius.circular(8.r),
          //       borderSide: BorderSide(color: Color(0XFFB7C6C2)),
          //     ),
          //     contentPadding: EdgeInsets.symmetric(
          //       vertical: 18.h,
          //       horizontal: 8.w,
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: CustomMaterialBtton(
              buttonText: 'Save',
                onPressed: () async {
  final selectedStore = context.read<DashboardCubit>().state.selectedStore;
  final selectedOffer = context.read<ReportCubit>().state.selectedType;

  if (selectedStore == null || selectedOffer == null) return;

  final offerRequest = CreateOfferResponse(
    //productName: nameController.text,
    offerPrice: int.tryParse(offerPriceController.text),
    offerPricePercentage: int.tryParse(discountController.text),
    offerFromDate: context.read<ReportCubit>().state.fromDate,
    offerToDate: context.read<ReportCubit>().state.toDate,
 
   // offerTypeName: selectedOffer.offerTypeName,
  );

  await context.read<ReportCubit>().loadProductOffer(
    offerRequest,
    20113, 
    selectedStore.storeId ?? 0,
  );

  // Close modal and return success signal
  Navigator.pop(context, true);
}

            ),
          ),
        ],
      ),
    );
  }
}
