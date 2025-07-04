import 'package:admin_v2/features/common/cubit/common_cubit.dart';
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/products/cubit/product_cubit.dart';
import 'package:admin_v2/features/products/domain/models/stock_status/stock_status_response.dart';
import 'package:admin_v2/features/products/domain/models/stock_update_req/stock_update_request.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/utils/helper/helper.dart';
import 'package:admin_v2/shared/widgets/buttons/custom_material_button.dart';
import 'package:admin_v2/shared/widgets/date_picker/date_picker_container.dart';
import 'package:admin_v2/shared/widgets/dropdown_field_widget/dropdown_field_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:admin_v2/shared/widgets/text_fields/text_field_widget.dart';
import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class StockUpdateCard extends StatefulWidget {
  final double? currentStock;

  final int? maintainStock;
  final int? productId;
  final bool fromVariant;
  final String? variantName;
  final int? variantId;

  const StockUpdateCard({
    super.key,
    this.currentStock,
    this.maintainStock,
    this.productId,
    required this.fromVariant,
    this.variantName,
    this.variantId,
  });

  @override
  State<StockUpdateCard> createState() => _StockUpdateCardState();
}

class _StockUpdateCardState extends State<StockUpdateCard> {
  final TextEditingController totalStockController = TextEditingController();
  final TextEditingController pricePerUnitController = TextEditingController();
  final TextEditingController totalPriceController = TextEditingController();
  StockStatusResponse? selectedStockStatus;

   @override
     void initState() {
    super.initState();
    final stockList = context.read<ProductCubit>().state.stockStatusList;
    if (stockList != null && stockList.isNotEmpty) {
      selectedStockStatus = stockList.first;
      context.read<ProductCubit>().selectStockType(selectedStockStatus!);
    }
  }


  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: widget.fromVariant? 500.h: 700.h,

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
                Text(widget.fromVariant? '${widget.variantName} Stock Update':'Stock Details', style: FontPalette.hW700S14),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    context.read<ProductCubit>().closeButton();
                  },
                  child: SvgPicture.asset('assets/icons/x-close.svg'),
                ),
              ],
            ),
          ),
          Divider(color: kBorderColor, thickness: 1),
          10.verticalSpace,
          MainPadding(
            top: 0,
            child: Column(
              children: [
                 Text(
                            'Current stock : ${widget.currentStock}',
                            style: FontPalette.hW500S13,
                          ),
                BlocSelector<
                  ProductCubit,
                  ProductState,
                  List<StockStatusResponse>?
                >(
                  selector: (state) {
                    return state.stockStatusList;
                  },
                  builder: (context, state) {
                    if (selectedStockStatus == null) {
                      selectedStockStatus = state?.first;
                      context.read<ProductCubit>().selectStockType(
                        selectedStockStatus!,
                      );
                    }

                    return SizedBox(
                      height: 75.h,
                      child: DropDownFieldWidget(
                        labelText: 'Stock Condition',
                        value: selectedStockStatus,
                        items: (state ?? []).map((e) {
                          return DropdownMenuItem<StockStatusResponse>(
                            value: e,
                            child: Text(e.productItemConditionName ?? ''),
                          );
                        }).toList(),
                        onChanged: (value) {
                          context.read<ProductCubit>().selectStockType(value);
                          context.read<ProductCubit>().totalStockCalculation(
                            double.tryParse(totalStockController.text) ?? 0.0,
                            widget.currentStock ?? 0.0,
                          );
                          updateTotalPrice();
                        },
                        borderColor: kBlack,
                        inputBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide(color: Color(0XFFB7C6C2)),
                        ),

                        suffixWidget: Padding(
                          padding: const EdgeInsets.all(14.0),
                        ),
                      ),
                    );
                  },
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
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 14.h,
                    horizontal: 8.w,
                  ),
                  textInputType: TextInputType.number,
                  controller: totalStockController,

                  onChanged: (value) {
                    context.read<ProductCubit>().totalStockCalculation(
                      double.tryParse(totalStockController.text) ?? 0.0,
                      widget.currentStock ?? 0.0,
                    );
                  },

                  labelText: 'Enter Stock',
                  textStyle: FontPalette.hW500S12,
                ),
                12.verticalSpace,
                 Container(
                  // alignment: Alignment.center,
                   height: 64.h,
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 12.h, left: 12.w),
                  decoration: BoxDecoration(
                    color: widget.fromVariant?kWhite: Color(0XFFEFF1F1),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: BlocSelector<ProductCubit, ProductState, double>(
                    selector: (state) {
                      return state.totalStock ?? 0;
                    },
                    builder: (context, state) {
                      return widget.fromVariant?Center(
                        child: Text(
                              'Total stock : ${state == 0 ? widget.currentStock : state}',
                              style: FontPalette.hW500S13,
                            ),
                      ): Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Current stock : ${widget.currentStock}',
                            style: FontPalette.hW500S13,
                          ),
                          
                          Text(
                            'Total stock : ${state == 0 ? widget.currentStock : state}',
                            style: FontPalette.hW500S13,
                          ),
                        ],
                      );
                    },
                  ),
                ),
                10.verticalSpace,

                widget.fromVariant?SizedBox(): DatePickerContainer(
                  labelText: "Date",
                  changeDate: (value) {
                    context.read<ProductCubit>().dateSelection(value);
                  },
                ),
                widget.fromVariant?SizedBox():10.verticalSpace,

               widget.fromVariant?SizedBox(): TextFeildWidget(
                  borderColor: kBlack,
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
                  textInputType: TextInputType.number,

                  labelText: 'Enter a price per unit',
                  controller: pricePerUnitController,
                  onChanged: (p0) {
                    updateTotalPrice();
                  },
                ),
               widget.fromVariant?SizedBox(): 10.verticalSpace,

                widget.fromVariant?SizedBox(): TextFeildWidget(
                  borderColor: kBlack,
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
                  textInputType: TextInputType.number,
                  controller: totalPriceController,

                  labelText: 'Total Price',
                ),
              ],
            ),
          ),
         widget.fromVariant?SizedBox(): 10.verticalSpace,
          Divider(color: kBorderColor, thickness: 1),
          widget.fromVariant?SizedBox():10.verticalSpace,
          MainPadding(
            child: Row(
              children: [
                Expanded(
                  child: CustomMaterialBtton(
                    onPressed: () {
                      Navigator.pop(context);
                      context.read<ProductCubit>().closeButton();
                    },
                    buttonText: 'Cancel',
                    color: kWhite,
                    textColor: kPrimaryColor,
                  ),
                ),
                10.horizontalSpace,
                Expanded(
                  child: BlocListener<ProductCubit, ProductState>(
                    listenWhen: (previous, current) =>
                        previous.isProduct != current.isProduct,
                    listener: (context, state) async {
                      final storeId =
                          context
                              .read<DashboardCubit>()
                              .state
                              .selectedStore
                              ?.storeId ??
                          0;

                      if (state.isProduct == ApiFetchStatus.success) {
                        CherryToast.success(
                          title: Text('Stock updated successfully'),
                          displayIcon: true,
                          animationType: AnimationType.fromTop,
                          displayCloseButton: false,
                        ).show(context);
                        context.read<ProductCubit>().product(
                          storeId,
                          0,
                          '',
                          '',
                          0
                        );

                        Navigator.pop(context);
                      }

                      if (state.isProduct == ApiFetchStatus.failed) {
                        CherryToast.error(
                          title: Text('Stock update failed'),
                          displayIcon: true,

                          displayCloseButton: false,
                          animationType: AnimationType.fromTop,
                        ).show(context);
                      }
                    },

                    child: CustomMaterialBtton(
                      onPressed: () async {
                        if (totalStockController.text.isEmpty) {
                          CherryToast.error(
                            title: Text('Enter stock quantity'),
                            displayIcon: true,

                            displayCloseButton: false,
                            animationType: AnimationType.fromTop,
                          ).show(context);
                          return;
                        }
                        final cubit = context.read<ProductCubit>();

                        if(widget.fromVariant){
                          await cubit.stockUpdate(StockUpdateRequest(
                            maintainStock: widget.maintainStock,
                            prodVarId: widget.variantId,
                            productId: widget.productId,
                            productItemConditionId: context
                                .read<ProductCubit>()
                                .state
                                .selectedStockResponse
                                ?.productItemConditionId,
                            stockQty:  double.tryParse(
                              totalStockController.text,
                            ),   
                          ));



                        }else{
                          await cubit.stockUpdate(
                          StockUpdateRequest(
                            maintainStock: widget.maintainStock,
                            pricePerUnit: double.tryParse(
                              pricePerUnitController.text,
                            ),
                            productId: widget.productId,
                            prodVarId: 0,
                            stockQty: double.tryParse(
                              totalStockController.text,
                            ),
                            productItemConditionId: context
                                .read<ProductCubit>()
                                .state
                                .selectedStockResponse
                                ?.productItemConditionId,
                            totalPrice:
                                cubit.state.totalStock ??
                                0.0 *
                                    (double.tryParse(
                                          pricePerUnitController.text,
                                        ) ??
                                        0.0),

                            updatedDate:
                                context
                                    .read<ProductCubit>()
                                    .state
                                    .selectedDate ??
                                getCurrentDate(),
                          ),
                        );




                        }

                       
                      },
                      buttonText: 'Submit',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void updateTotalPrice() {
    final totalStock = double.tryParse(totalStockController.text) ?? 0.0;
    final pricePerUnit = double.tryParse(pricePerUnitController.text) ?? 0.0;
    final totalPrice = totalStock * pricePerUnit;
    totalPriceController.text = totalPrice.toStringAsFixed(2);
  }
}
