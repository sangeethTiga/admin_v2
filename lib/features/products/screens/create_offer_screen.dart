import 'dart:developer';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/features/report/domain/models/createOffer/create_offer_response.dart';
import 'package:admin_v2/features/report/domain/models/editoffer/edit_offer_response.dart';
import 'package:admin_v2/features/report/domain/models/productname/product_name_response.dart';
import 'package:admin_v2/features/report/domain/models/specialOffer/special_offer_response.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/buttons/custom_material_button.dart';
import 'package:admin_v2/shared/widgets/date_picker/date_picker_container.dart';
import 'package:admin_v2/shared/widgets/divider/divider_widget.dart';
import 'package:admin_v2/shared/widgets/dropdown_field_widget/dropdown_field_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:admin_v2/shared/widgets/text_fields/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class CreateOfferScreen extends StatefulWidget {
  final Map<String, dynamic>? data;

  const CreateOfferScreen({super.key, this.data});

  @override
  State<CreateOfferScreen> createState() => _CreateOfferScreenState();
}

class _CreateOfferScreenState extends State<CreateOfferScreen> {
  final TextEditingController offerPrice = TextEditingController();
  final TextEditingController offerPercentage = TextEditingController();
  final TextEditingController offerTitleController = TextEditingController();
  final TextEditingController customOfferTypeController =
      TextEditingController();
  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
  bool get isEdit => widget.data?['is_edit'] == true;
  dynamic get editOffer => widget.data?['offer_data'];
  int? get editOfferId => widget.data?['offer_id'];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (isEdit && editOffer != null) {
        _loadEditData();
      } else {
        _clearFormData();
      }
    });
  }

  void _loadEditData() {
    final offer = editOffer;
    offerPrice.text = offer.offerPrice?.toString() ?? '';
    offerPercentage.text = offer.offerPricePercentage?.toString() ?? '';

    final cubit = context.read<ReportCubit>();

    final products = cubit.state.getProductName ?? [];
    if (products.isNotEmpty) {
      final selectedProduct = products.firstWhere(
        (product) => product.productId == offer.productId,
        orElse: () => ProductNameResponse(),
      );

      cubit.changeProducts(selectedProduct);
    }

    final offerTypes = cubit.state.specialOffer ?? [];
    if (offerTypes.isNotEmpty) {
      final selectedOfferType = offerTypes.firstWhere(
        (type) => type.offerTypeId == offer.offerTypeId,
        orElse: () => SpecialOfferResponse(),
      );

      cubit.changeOffeType(selectedOfferType);
    }

    try {
      if (offer.offerFromDate != null) {
        DateTime fromDateTime;
        if (offer.offerFromDate is String) {
          fromDateTime = DateTime.parse(offer.offerFromDate);
        } else if (offer.offerFromDate is DateTime) {
          fromDateTime = offer.offerFromDate;
        } else {
          fromDateTime = DateTime.now();
        }

        cubit.updateOfferDate(fromDateTime);
        cubit.updateOfferTime(TimeOfDay.fromDateTime(fromDateTime));
      }

      if (offer.offerToDate != null) {
        DateTime toDateTime;
        if (offer.offerToDate is String) {
          toDateTime = DateTime.parse(offer.offerToDate);
        } else if (offer.offerToDate is DateTime) {
          toDateTime = offer.offerToDate;
        } else {
          toDateTime = DateTime.now().add(Duration(days: 1));
        }

        cubit.updateOfferToDate(toDateTime);
        cubit.updateOfferToTime(TimeOfDay.fromDateTime(toDateTime));
      }
    } catch (e) {
      log('Error parsing dates: $e');
    }
  }

  void _updateDiscountFromOfferPrice(ReportState state) {
    final offerText = double.tryParse(offerPrice.text) ?? 0.0;
    final productText = state.selectedProductName?.productPrice;

    final offerPrices = offerText;
    final productPrice = productText ?? 0;

    if ((offerPrices) > 0 && productPrice > 0) {
      if (offerPrices > productPrice) {
        _scaffoldMessengerKey.currentState?.clearSnackBars();
        _scaffoldMessengerKey.currentState?.showSnackBar(
          SnackBar(
            content: const Text(
              'Offer price cannot be greater than product price.',
            ),
            backgroundColor: Colors.red,
            behavior: SnackBarBehavior.floating,
            margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
            duration: const Duration(seconds: 2),
          ),
        );
      } else {
        final discount = ((productPrice - offerPrices) / productPrice) * 100;
        offerPercentage.text = discount.toStringAsFixed(0);
      }
    } else {
      offerPercentage.text = '';
    }
  }

  void _clearFormData() {
    offerPrice.clear();
    offerPercentage.clear();

    // final cubit = context.read<ReportCubit>();
    // context.read<ReportCubit>().clearOfferData();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: _scaffoldMessengerKey,

      child: Scaffold(
        appBar: AppbarWidget(title: isEdit ? 'Edit Offer' : 'Create Offer'),
        body: BlocListener<ReportCubit, ReportState>(
          listenWhen: (previous, current) =>
              previous.isCreated != current.isCreated ||
              previous.isOfferEdit != current.isOfferEdit,
          listener: (context, state) {
            if (state.isCreated == ApiFetchStatus.success ||
                state.isOfferEdit == ApiFetchStatus.success) {
              context.read<ReportCubit>().loadProductOffers(
                storeId: widget.data?['storeId'],
              );
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    isEdit
                        ? 'Offer updated successfully!'
                        : 'Offer created successfully!',
                  ),
                  backgroundColor: kPrimaryColor,
                ),
              );
              context.pop();
            }
          },
          child: BlocBuilder<ReportCubit, ReportState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  dividerWidget(height: 6),
                  Expanded(
                    child: SingleChildScrollView(
                      child: MainPadding(
                        top: 8.h,
                        child: Column(
                          children: [
                            // BlocBuilder<ReportCubit, ReportState>(
                            //   builder: (context, state) {
                            //     return DropDownFieldWidget(
                            //       value: state.selectedProductName,
                            //       topLabelText: 'Product Name',
                            //       hintText: 'Select Product',
                            //       items:
                            //           state.getProductName?.map((e) {
                            //             return DropdownMenuItem<
                            //               ProductNameResponse
                            //             >(
                            //               value: e,
                            //               child: Text(e.productName ?? ''),
                            //             );
                            //           }).toList() ??
                            //           [],
                            //       borderColor: kBlack,
                            //       fillColor: const Color(0XFFEFF1F1),
                            //       onChanged: (p0) {
                            //         context.read<ReportCubit>().changeProducts(
                            //           p0,
                            //         );
                            //       },
                            //     );
                            //   },
                            // ),
                            BlocBuilder<ReportCubit, ReportState>(
                              builder: (context, state) {
                                // if (widget.data?['is_edit_search'] == true) {
                                //   return ReadOnlySearchableDropdown<
                                //     ProductNameResponse
                                //   >(
                                //     value: state.selectedProductName,
                                //     topLabelText: 'Product Name',
                                //     hintText: 'No product selected',
                                //     displayText: (product) =>
                                //         product.productName ?? '',
                                //     fillColor: const Color(0XFFEFF1F1),
                                //     borderColor: kBlack,
                                //   );
                                // }

                                return SearchableDropdownWidget<
                                  ProductNameResponse
                                >(
                                  isEdit: widget.data?['is_edit_search'],
                                  value: state.selectedProductName,
                                  items: state.getProductName ?? [],
                                  topLabelText: 'Product Name',
                                  hintText: 'Search and select product...',
                                  isEnable: false,
                                  displayText: (product) =>
                                      product.productName ?? '',
                                  fillColor: const Color(0XFFEFF1F1),
                                  borderColor: kBlack,
                                  onChanged: (selectedProduct) {
                                    context.read<ReportCubit>().changeProducts(
                                      selectedProduct ?? ProductNameResponse(),
                                    );
                                  },
                                );
                              },
                            ),
                            10.verticalSpace,

                            BlocBuilder<ReportCubit, ReportState>(
                              builder: (context, state) {
                                return Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.all(12.w),
                                  decoration: BoxDecoration(
                                    color: const Color(0XFFEFF1F1),
                                    borderRadius: BorderRadius.circular(8.r),
                                    border: Border.all(color: kDarkGrey),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Product Price',
                                        style: FontPalette.hW600S14,
                                      ),
                                      4.verticalSpace,
                                      Text(
                                        state.selectedProductName?.productPrice
                                                ?.toString() ??
                                            'Select product first',
                                        style: FontPalette.hW500S14,
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                            10.verticalSpace,

                            BlocBuilder<ReportCubit, ReportState>(
                              builder: (context, state) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    DropDownFieldWidget(
                                      topLabelText: 'Offer Type',
                                      value: state.selectedType,
                                      hintText: 'Select Offer Type',
                                      items: [
                                        ...?state.specialOffer?.map(
                                          (e) =>
                                              DropdownMenuItem<
                                                SpecialOfferResponse
                                              >(
                                                value: e,
                                                child: Text(e.offerType ?? ''),
                                              ),
                                        ),
                                        DropdownMenuItem<SpecialOfferResponse>(
                                          value: SpecialOfferResponse(
                                            offerType: 'Custom Offer Type',
                                          ),
                                          child: const Text(
                                            'Custom Offer Type',
                                          ),
                                        ),
                                      ],
                                      borderColor: kBlack,
                                      fillColor: const Color(0XFFEFF1F1),
                                      onChanged: (p0) {
                                        context
                                            .read<ReportCubit>()
                                            .changeOffeType(p0);
                                      },
                                    ),

                                    10.verticalSpace,

                                    if (state.selectedType?.offerType ==
                                        'Custom Offer Type')
                                      TextFeildWidget(
                                        controller: offerTitleController,
                                        topLabelText: 'Offer Title',
                                        hintText: 'Enter Offer Title',
                                        borderColor: kBlack,
                                        hight: 48.h,
                                        fillColor: kWhite,
                                        inputBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            8.r,
                                          ),
                                          borderSide: const BorderSide(
                                            color: Color(0XFFB7C6C2),
                                          ),
                                        ),
                                      ),
                                  ],
                                );
                              },
                            ),

                            TextFeildWidget(
                              controller: offerPrice,
                              topLabelText: 'Offer Price',
                              hintText: 'Enter a offer price',
                              borderColor: kBlack,
                              hight: 48.h,
                              fillColor: kWhite,
                              inputBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: BorderSide(
                                  color: Color(0XFFB7C6C2),
                                ),
                              ),
                              onChanged: (p0) {
                                _updateDiscountFromOfferPrice(state);
                              },
                            ),
                            10.verticalSpace,

                            TextFeildWidget(
                              controller: offerPercentage,
                              topLabelText: 'Offer Percentage',
                              hintText: 'Enter a offer percentage',
                              borderColor: kBlack,
                              hight: 48.h,
                              fillColor: kWhite,
                              inputBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: BorderSide(
                                  color: Color(0XFFB7C6C2),
                                ),
                              ),
                            ),
                            15.verticalSpace,

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: datePick(
                                    state.selectedOfferDate != null
                                        ? DateFormat(
                                            'dd/MM/yyyy',
                                          ).format(state.selectedOfferDate!)
                                        : 'Offer Date',
                                    () => _pickOfferDate(context),
                                  ),
                                ),
                                10.horizontalSpace,
                                Expanded(
                                  child: datePick(
                                    state.selectedOfferTime != null
                                        ? state.selectedOfferTime!.format(
                                            context,
                                          )
                                        : 'Offer Time',
                                    () => _pickOfferTime(context),
                                  ),
                                ),
                              ],
                            ),
                            10.verticalSpace,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: datePick(
                                    state.selectedOfferToDate != null
                                        ? DateFormat(
                                            'dd/MM/yyyy',
                                          ).format(state.selectedOfferToDate!)
                                        : 'Offer To Date',
                                    () => _pickOfferToDate(context),
                                  ),
                                ),
                                10.horizontalSpace,
                                Expanded(
                                  child: datePick(
                                    state.selectedOfferToTime != null
                                        ? state.selectedOfferToTime!.format(
                                            context,
                                          )
                                        : 'Offer To Time',
                                    () => _pickOfferToTime(context),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  dividerWidget(),
                  MainPadding(
                    bottom: 15.h,
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomMaterialBtton(
                            onPressed: () {
                              context.pop();
                            },
                            buttonText: 'Cancel',
                            color: kWhite,
                            borderColor: kPrimaryColor,
                            textColor: kPrimaryColor,
                          ),
                        ),
                        10.horizontalSpace,
                        Expanded(
                          child: CustomMaterialBtton(
                            onPressed: () {
                              _saveOffer(context, state);
                            },
                            buttonText: isEdit ? 'Update Offer' : 'Save Offer',
                            isLoading:
                                state.isCreated == ApiFetchStatus.loading ||
                                state.isOfferEdit == ApiFetchStatus.loading,
                          ),
                        ),
                      ],
                    ),
                  ),
                  15.verticalSpace,
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  void _saveOffer(BuildContext context, ReportState state) {
    if (state.selectedProductName == null) {
      _showError(context, 'Please select a product');
      return;
    }

    if (state.selectedType == null) {
      _showError(context, 'Please select an offer type');
      return;
    }

    if (offerPrice.text.isEmpty) {
      _showError(context, 'Please enter offer price');
      return;
    }

    if (state.selectedOfferDate == null) {
      _showError(context, 'Please select offer start date');
      return;
    }

    if (state.selectedOfferTime == null) {
      _showError(context, 'Please select offer start time');
      return;
    }

    if (state.selectedOfferToDate == null) {
      _showError(context, 'Please select offer end date');
      return;
    }

    if (state.selectedOfferToTime == null) {
      _showError(context, 'Please select offer end time');
      return;
    }

    final startDateTime = DateTime(
      state.selectedOfferDate!.year,
      state.selectedOfferDate!.month,
      state.selectedOfferDate!.day,
      state.selectedOfferTime!.hour,
      state.selectedOfferTime!.minute,
    );

    final endDateTime = DateTime(
      state.selectedOfferToDate!.year,
      state.selectedOfferToDate!.month,
      state.selectedOfferToDate!.day,
      state.selectedOfferToTime!.hour,
      state.selectedOfferToTime!.minute,
    );

    if (endDateTime.isBefore(startDateTime) ||
        endDateTime.isAtSameMomentAs(startDateTime)) {
      _showError(context, 'End date/time must be after start date/time');
      return;
    }

    if (isEdit) {
            final bool isCustomOffer =
          state.selectedType?.offerType == 'Custom Offer Type';
      final fromDate =
          context.read<ReportCubit>().state.selectedOfferDate ?? DateTime.now();
      final toDate =
          context.read<ReportCubit>().state.selectedOfferToDate ??
          DateTime.now();

      final editOfferData = EditOfferResponse(
        offerPrice: double.tryParse(offerPrice.text) ?? 0.0,
        offerPricePercentage: int.tryParse(offerPercentage.text) ?? 0,
        storeId: widget.data?['storeId'] ?? 0,
        productId: state.selectedProductName?.productId,
        branchId: 0,
        
        offerTitle: isCustomOffer ? offerTitleController.text.trim() : state.selectedType?.offerType,

        // couponId: 0,
        createdBy: 1,
        deliveryPartnerId: 0,
        maxOrderQty: 0,
        offerTypeId: state.selectedType?.offerTypeId,
        // prodOfferTypeId: state.selectedType?.offerTypeId,
        updatedBy: 0,
        resourceId: state.selectedType?.resourceId ?? 0,
        prodVarCode: state.selectedProductName?.prodVarCode.toString(),
        priceTypeId: 1,
        offerFromDate: DateTime(fromDate.year, fromDate.month, fromDate.day),
        offerToDate: DateTime(toDate.year, toDate.month, toDate.day),
      );

      context.read<ReportCubit>().loadEditOffer(
        editOfferData,
        widget.data?['offer_data'].prodOfferId,
        widget.data?['storeId'] ?? 0,
      );
    } else {
      final bool isCustomOffer =
          state.selectedType?.offerType == 'Custom Offer Type';
      final createOfferData = CreateOfferResponse(
        storeId: widget.data?['storeId'],
        productId: state.selectedProductName?.productId,
        branchId: 0,
        offerPrice: int.tryParse(offerPrice.text),
        offerPricePercentage: int.tryParse(offerPercentage.text),
        offerFromDate: startDateTime,
        offerToDate: endDateTime,

        offerTitle: isCustomOffer ? offerTitleController.text.trim() : state.selectedType?.offerType,
        

        createdBy: 1,
        updatedBy: 1,
        deliveryPartnerId: 0,
        maxOrderQty: 0,
        priceTypeId: 1,
        prodVarCode: state.selectedProductName?.prodVarCode?.toString() ?? "0",
        resourceId: 0,
        isSingleProductOffer: 1,
      );
      log('Offer title: "${offerTitleController.text}"');

      context.read<ReportCubit>().createProductOffer(offer: createOfferData);
    }
  }

  void _showError(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.red),
    );
  }

  Future<void> _pickOfferDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate:
          context.read<ReportCubit>().state.selectedOfferDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: kPrimaryColor,
              onPrimary: kWhite,
              onSurface: kBlack,
              surface: kWhite,
            ),
            dialogTheme: DialogThemeData(backgroundColor: kWhite),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      context.read<ReportCubit>().updateOfferDate(picked);
      final currentToDate = context
          .read<ReportCubit>()
          .state
          .selectedOfferToDate;
      if (currentToDate != null && currentToDate.isBefore(picked)) {
        context.read<ReportCubit>().updateOfferToDate(
          picked.add(Duration(days: 1)),
        );
      }
    }
  }

  Future<void> _pickOfferTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime:
          context.read<ReportCubit>().state.selectedOfferTime ??
          TimeOfDay.now(),
      builder: timePickerBuilder,
    );

    if (picked != null) {
      context.read<ReportCubit>().updateOfferTime(picked);
    }
  }

  Future<void> _pickOfferToDate(BuildContext context) async {
    final currentState = context.read<ReportCubit>().state;
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate:
          currentState.selectedOfferToDate ??
          (currentState.selectedOfferDate ?? DateTime.now()).add(
            Duration(days: 1),
          ),
      firstDate: currentState.selectedOfferDate ?? DateTime.now(),
      lastDate: DateTime(2100),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: kPrimaryColor,
              onPrimary: kWhite,
              onSurface: kBlack,
              surface: kWhite,
            ),
            dialogTheme: DialogThemeData(backgroundColor: kWhite),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      context.read<ReportCubit>().updateOfferToDate(picked);
    }
  }

  Future<void> _pickOfferToTime(BuildContext context) async {
    final currentState = context.read<ReportCubit>().state;
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime:
          currentState.selectedOfferToTime ??
          (currentState.selectedOfferTime ?? TimeOfDay.now()).replacing(
            hour:
                (currentState.selectedOfferTime?.hour ??
                    TimeOfDay.now().hour + 1) %
                24,
          ),
      builder: timePickerBuilder,
    );

    if (picked != null) {
      context.read<ReportCubit>().updateOfferToTime(picked);
    }
  }
}
