import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/features/report/domain/models/cashier/cashier_response.dart';
import 'package:admin_v2/features/report/domain/models/delivery_agent/delivery_agent_response.dart';
import 'package:admin_v2/features/report/domain/models/kiosk_response/kiosk_response.dart';
import 'package:admin_v2/features/report/domain/models/paymentMethod/payment_method_response.dart';
import 'package:admin_v2/features/report/domain/models/waiters_response/waiters_response.dart';
import 'package:admin_v2/shared/app/list/common_map.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/widgets/buttons/custom_material_button.dart';
import 'package:admin_v2/shared/widgets/date_picker/date_picker_container.dart';
import 'package:admin_v2/shared/widgets/dropdown_field_widget/dropdown_field_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SalesReportFilter extends StatelessWidget {
  const SalesReportFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 750.h,

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
                Text('Filter', style: FontPalette.hW700S14),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
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
            child: BlocBuilder<DashboardCubit, DashboardState>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text('Duration', style: FontPalette.hW700S14),
                    DropDownFieldWidget(
                      topLabelText: 'Duration',
                      borderColor: kBlack,

                      value: state.selectMonth ?? durationMonths.first,

                      items: durationMonths.map((e) {
                        return DropdownMenuItem<ListOfDemo>(
                          value: e,
                          child: Text(e.name ?? ''),
                        );
                      }).toList(),
                      fillColor: Color(0XFFEFF1F1),

                      onChanged: (p0) {
                        context.read<DashboardCubit>().monthSelection(p0);
                      },
                    ),
                    if (state.selectMonth?.id == 5)...[
                      10.verticalSpace,
                       BlocBuilder<ReportCubit, ReportState>(
                        builder: (context, state) {
                          return Row(
                            children: [
                                  

                              Expanded(
                                child: DatePickerContainer(
                                  firstDate: state.fromDate ?? DateTime.now(),
                                  labelText: 'Date',
                                  changeDate: (DateTime pickedDate) {
                                    context.read<DashboardCubit>().changeFromDate(
                                      pickedDate,
                                    );
                                  },
                                ),
                              ),
                              12.horizontalSpace,
                              Expanded(
                                child: DatePickerContainer(
                                  labelText: 'Date',
                                  changeDate: (DateTime pickedDate) {
                                    context.read<DashboardCubit>().changeToDate(
                                      pickedDate,
                                    );
                                  },
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      
                    ],
                     
                    10.verticalSpace,

                    DropDownFieldWidget(
                      topLabelText: 'Select Delivery Agent',
                      hintText: 'All',
                      borderColor: kBlack,

                      value: state.selectedDeliveryAgent,

                      items: (state.deliveryAgents ?? []).map((e) {
                        return DropdownMenuItem<DeliveryAgentResponse>(
                          value: e,
                          child: Text(e.userName.toString()),
                        );
                      }).toList(),
                      fillColor: Color(0XFFEFF1F1),

                      onChanged: (p0) {
                        context.read<DashboardCubit>().selectedDeliveryAgent(
                          p0,
                        );
                      },
                    ),
                    10.verticalSpace,

                    Row(
                      spacing: 10.w,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Expanded(
                          child: DropDownFieldWidget(
                            topLabelText: 'Waiters',
                            borderColor: kBlack,
                            hintText: 'All',

                            value: state.selectedWaiter,

                            items: (state.waitersList ?? []).map((e) {
                              return DropdownMenuItem<WaitersResponse>(
                                value: e,
                                child: Text(e.userName.toString()),
                              );
                            }).toList(),
                            fillColor: Color(0XFFEFF1F1),

                            onChanged: (p0) {
                              context.read<DashboardCubit>().selectedWaiter(p0);
                            },
                          ),
                        ),
                        Expanded(
                          child: DropDownFieldWidget(
                            topLabelText: 'Payment Type',
                            borderColor: kBlack,
                            hintText: 'All',

                            value: state.selectedPaymethod,

                            items: (state.paymethodList ?? []).map((e) {
                              return DropdownMenuItem<PaymentMethodResponse>(
                                value: e,
                                child: Text(e.payMethodName.toString()),
                              );
                            }).toList(),
                            fillColor: Color(0XFFEFF1F1),

                            onChanged: (p0) {
                              context.read<DashboardCubit>().selectedPayMethod(
                                p0,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    10.verticalSpace,
                    Row(
                      spacing: 10.w,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Expanded(
                          child: DropDownFieldWidget(
                            topLabelText: 'KIOSK',
                            borderColor: kBlack,
                            hintText: 'Selected KIOSK',

                            value: state.selectedKiosk,

                            items: (state.kioskList ?? []).map((e) {
                              return DropdownMenuItem<KioskResponse>(
                                value: e,
                                child: Text(e.kioskName.toString()),
                              );
                            }).toList(),
                            fillColor: Color(0XFFEFF1F1),

                            onChanged: (p0) {
                              context.read<DashboardCubit>().selectedKiosk(p0);
                            },
                          ),
                        ),
                        Expanded(
                          child: DropDownFieldWidget(
                            topLabelText: 'Shift',
                            borderColor: kBlack,
                            hintText: 'Selected shift',

                            value: state.selectedShift,

                            items: (shifts).map((e) {
                              return DropdownMenuItem<ListOfDemo>(
                                value: e,
                                child: Text(e.name.toString()),
                              );
                            }).toList(),
                            fillColor: Color(0XFFEFF1F1),

                            onChanged: (p0) {
                              context.read<DashboardCubit>().selctedShift(p0);
                            },
                          ),
                        ),
                      ],
                    ),
                    10.verticalSpace,
                    Row(
                      spacing: 10.w,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Expanded(
                          child: DropDownFieldWidget(
                            topLabelText: 'Cashier',
                            borderColor: kBlack,
                            hintText: 'Selected Cashier',

                            value: state.selectedCashier,

                            items: (state.cashierList ?? []).map((e) {
                              return DropdownMenuItem<CashierResponse>(
                                value: e,
                                child: Text(e.userName.toString()),
                              );
                            }).toList(),
                            fillColor: Color(0XFFEFF1F1),

                            onChanged: (p0) {
                              context.read<DashboardCubit>().selectedCashier(
                                p0,
                              );
                            },
                          ),
                        ),
                        Expanded(
                          child: DropDownFieldWidget(
                            topLabelText: 'Group By',
                            borderColor: kBlack,
                            hintText: 'Selected group by',

                            value: state.selectedGroupBy,

                            items: (groupBy).map((e) {
                              return DropdownMenuItem<Dates>(
                                value: e,
                                child: Text(e.title??''),
                              );
                            }).toList(),
                            fillColor: Color(0XFFEFF1F1),

                            onChanged: (p0) {
                              context.read<DashboardCubit>().selectedGroupBy(p0);
                            },
                          ),
                        ),
                      ],
                    ),
                    10.verticalSpace,
                    Row(
                      spacing: 10.w,

                      children: [
                        Expanded(
                          child: CustomMaterialBtton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            buttonText: 'Cancel',
                            color: kWhite,
                            textColor: kPrimaryColor,
                          ),
                        ),
                        Expanded(child: CustomMaterialBtton(onPressed: ()async {

                          context.read<ReportCubit>().loadSalesReport(storeId: state.selectedStore?.storeId,deliveryPartner: state.selectedDeliveryPartner.toString(),paymentMethod: state.selectedPaymethod?.payMethodId.toString(),waiter: state.selectedWaiter?.userId.toString(),shift: state.selectedShift?.id.toString(),cashe:state.selectedCashier?.userId.toString(),kiosks: state.selectedKiosk?.kioskId.toString(),duration: state.selectMonth?.id.toString(),groupBy: state.selectedGroupBy?.id,fromDate:state.fromDate.toString(),toDate: state.toDate.toString()  );
                        Navigator.pop(context);
                        
                        })),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
