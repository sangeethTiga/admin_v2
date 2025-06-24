import 'package:admin_v2/features/products/cubit/product_cubit.dart';
import 'package:admin_v2/features/products/domain/models/stock_status/stock_status_response.dart';
import 'package:admin_v2/features/products/domain/models/stock_update_req/stock_update_request.dart';
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

class StockUpdateCard extends StatefulWidget {
  final double? currentStock;
  final int?productVarId;
  final int?maintainStock;
  final int?productId;

  const StockUpdateCard({super.key, this.currentStock,this.productVarId,this.maintainStock,this.productId});

  @override
  State<StockUpdateCard> createState() => _StockUpdateCardState();
}

class _StockUpdateCardState extends State<StockUpdateCard> {
  final TextEditingController totalStockController = TextEditingController();
  final TextEditingController pricePerUnitController = TextEditingController();
  StockStatusResponse? selectedStockStatus;


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
                Text('Stock Details', style: FontPalette.hW700S14),
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
                BlocSelector<
                  ProductCubit,
                  ProductState,
                  List<StockStatusResponse>?
                >(
                  selector: (state) {
                    return state.stockStatusList;
                  },
                  builder: (context, state) {
                    if(selectedStockStatus==null){
                      selectedStockStatus=state?.first;
                            context.read<ProductCubit>().selectStockType(selectedStockStatus!);

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
                                            context.read<ProductCubit>().totalStockCalculation(double.tryParse(totalStockController.text)??0.0,widget.currentStock??0.0);
                      
                      
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
                    print('value ===$value');
                  context.read<ProductCubit>().totalStockCalculation(double.tryParse(totalStockController.text)??0.0,widget.currentStock??0.0);

                  },

                  labelText: 'Enter  Stock',
                  textStyle: FontPalette.hW500S12,
                ),
                12.verticalSpace,
                Container(
                  // alignment: Alignment.center,
                  height: 64.h,
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 12.h, left: 12.w),
                  decoration: BoxDecoration(
                    color: Color(0XFFEFF1F1),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: BlocSelector<ProductCubit, ProductState, double>(
                    selector: (state) {

                      return state.totalStock ??0;
                    },
                    builder: (context, state) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Current stock : ${widget.currentStock}',
                            style: FontPalette.hW500S13,
                          ),
                          Text(
                            'Total stock : ${state==0?widget.currentStock:state}',
                            style: FontPalette.hW500S13,
                          ),
                        ],
                      );
                    },
                  ),
                ),
                10.verticalSpace,

               

                DatePickerContainer(labelText:"Date", changeDate: (value) {}),
                10.verticalSpace,

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

                  labelText: 'Enter a price per unit',
                  controller: pricePerUnitController,
                ),
                10.verticalSpace,

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

                  labelText: 'Total Price',
                ),
              ],
            ),
          ),
          10.verticalSpace,
          Divider(color: kBorderColor, thickness: 1),
          10.verticalSpace,
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
                  child: CustomMaterialBtton(
                    onPressed: () {
                      context.read<ProductCubit>().stockUpdate(StockUpdateRequest(
                        prodVarId:widget.productVarId,maintainStock:widget.maintainStock,pricePerUnit: double.tryParse(pricePerUnitController.text),productId: widget.productId,
                        stockQty: double.tryParse(totalStockController.text),productItemConditionId: context.read<ProductCubit>().state.selectedStockResponse?.productItemConditionId,
                        

                      ));
                    },
                    buttonText: 'Submit',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
