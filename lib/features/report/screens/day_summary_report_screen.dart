//import 'dart:math';

import 'dart:developer';

import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/date_picker/date_picker_container.dart';
import 'package:admin_v2/shared/widgets/dropdown_field_widget/dropdown_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';

class DaySummaryReportScreen extends StatelessWidget {
  const DaySummaryReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Day Summary'),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            _buildStoreDropdown(),

            10.verticalSpace,

            BlocBuilder<ReportCubit, ReportState>(
              buildWhen: (previous, current) =>
                  previous.fromDate != current.fromDate,
              builder: (context, state) {
                return Row(
                  children: [
                    Expanded(
                      child: DatePickerContainer(
                        hintText: '',
                        value: apiFormat.format(
                          state.fromDate ?? DateTime.now(),
                        ),
                        changeDate: (DateTime date) {
                          context.read<ReportCubit>().changeToDate(date);
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
            10.verticalSpace,

            Container(
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: titleAndValue(
                whilte: true,
                bold: true,

                title: "DAY SUMMARY",
                value: "",
                label: '',
              ),
            ),

            BlocConsumer<ReportCubit, ReportState>(
              listener: (context, state) {},
              builder: (context, state) {
                return Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async {},
                    child: ListView(
                      shrinkWrap: true,
                      physics: const AlwaysScrollableScrollPhysics(),
                      children: [
                        if (state.daySummary?.isNotEmpty ?? false) ...[
                          Text('Mode Of Payments'),
                          _buildModeOfPayments(state),
                          10.verticalSpace,
                          Text('Bill Type Details'),
                          _buildBillTypeDetails(state),
                          10.verticalSpace,
                          Text(" Amount - By Delivery Partners"),
                          _buildDeliveryPartners(state),
                          10.verticalSpace,
                          Text('Receipt'),
                          _buildReceipts(state),
                          10.verticalSpace,

                          Text('Payment'),
                          _buildPayments(state),
                          Text('Discount Bill Type'),
                          _buildDiscountBillType(state),
                          10.verticalSpace,
                          Text('AMOUNT - BY CATEGORY'),

                          _buildAmountByCategory(state),
                          10.verticalSpace,

                          Text('AMOUNT - BY MAIN CATEGORY'),
                          _buildAmountByMainCategories(state),
                        ],
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoadingShimmer(double screenWidth, double screenHeight) {
    return Expanded(
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.012,
                vertical: screenWidth * .02,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.12,
                      vertical: screenWidth * .2,
                    ),
                    height: screenHeight * 0.065,
                    color: Colors.grey[300],
                  ),
                  const SizedBox(height: 10),
                  for (int i = 0; i < 8; i++)
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 4.0),
                      color: Colors.grey[200],
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildModeOfPayments(ReportState state) {
    if (state.daySummary?.isEmpty ?? false) return const SizedBox.shrink();

    return Column(
      children: [
        Container(
          color: Colors.black,
          child: titleAndValue(
            whilte: true,
            title: "Type",
            bold: true,
            value: "Amount",
            label: '',
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: state.daySummary?.length,
          itemBuilder: (context, i) {
            final bill = state.daySummary?[i];

            log(
              "===================================${bill?.modeOfPayments?.card}",
            );
            return Column(
              children: [
                titleAndValue(
                  label: '',

                  title: 'Card',
                  value: bill?.modeOfPayments?.card,
                ),
                titleAndValue(
                  label: '',

                  title: 'Cash',
                  value: bill?.modeOfPayments?.cash,
                ),
                titleAndValue(
                  label: '',

                  title: 'Credit',
                  value: bill?.modeOfPayments?.credit,
                ),
                titleAndValue(
                  label: '',

                  title: 'Online',
                  value: bill?.modeOfPayments?.online,
                ),
              ],
            );
          },
        ),
        Container(
          color: Colors.grey,
          child: titleAndValue(
            whilte: true,
            title: "Total",
            bold: true,
            value: '${state.daySummary?.first.totalSales}',
            label: '',
          ),
        ),
      ],
    );
  }

  Widget _buildBillTypeDetails(ReportState state) {
    return Column(
      children: [
        Container(
          color: Colors.black,
          child: titleAndValue(
            whilte: true,
            title: "Type",
            bold: true,
            value: "Amount",
            label: 'count',
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: state.daySummary?.length,
          itemBuilder: (context, index) {
            final data = state.daySummary?[index];

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: data?.billTypeDetails?.length ?? 0,
                  itemBuilder: (context, i) {
                    final bill = data?.billTypeDetails?[i];
                    return titleAndValue(
                      label: bill?.ordercount.toString(),

                      title: bill?.orderOptionName ?? '',
                      value: bill?.totalamount?.toStringAsFixed(2),
                    );
                  },
                ),
                Container(
                  color: Colors.grey,
                  child: titleAndValue(
                    whilte: true,
                    title: "Total",
                    bold: true,
                    value: '${state.daySummary?.first.billTypeGrandTotal}',
                    label: '${state.daySummary?.first.billTypeTotalOrderCount}',
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }

  Widget _buildDeliveryPartners(ReportState state) {
    if (state.daySummary?.isEmpty ?? false) return const SizedBox.shrink();
    return Column(
      children: [
        Container(
          color: Colors.black,
          child: titleAndValue(
            whilte: true,
            title: "Delivery Partners",
            bold: true,
            value: "Amount",
            label: 'count',
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: state.daySummary?.length,
          itemBuilder: (context, index) {
            final data = state.daySummary?[index].deliveryPartners;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: data?.length,
                  itemBuilder: (context, i) {
                    return titleAndValue(
                      label: '${data?[i].ordercount}',

                      title: '${data?[i].name}',
                      value: '${data?[i].totalamount}',
                    );
                  },
                ),
                Container(
                  color: Colors.grey,
                  child: titleAndValue(
                    whilte: true,
                    title: "Total",
                    bold: true,
                    value: '${state.daySummary?.first.deliveryPartnersTotal}',
                    label: '',
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }

  Widget _buildReceipts(ReportState state) {
    return Column(
      children: [
        Container(
          color: Colors.black,
          child: titleAndValue(
            whilte: true,
            title: "Account Head",
            bold: true,
            value: "Amount",
            label: '',
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: state.daySummary?.length,
          itemBuilder: (context, index) {
            final data = state.daySummary?[index].receiptsData;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: data?.length ?? 0,
                  itemBuilder: (context, i) {
                    // final bill = data?.billTypeDetails?[i];
                    return titleAndValue(
                      label: '',

                      title: data?[i].accountHeadName ?? '',
                      value: data?[i].amount,
                    );
                  },
                ),
              ],
            );
          },
        ),
      ],
    );
    // const SizedBox.shrink();
  }

  Widget _buildPayments(ReportState state) {
    return Column(
      children: [
        Container(
          color: Colors.black,
          child: titleAndValue(
            whilte: true,
            title: "Account Head",
            bold: true,
            value: "Amount",
            label: '',
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: state.daySummary?.length,
          itemBuilder: (context, index) {
            final data = state.daySummary?[index].paymentData;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: data?.length ?? 0,
                  itemBuilder: (context, i) {
                    // final bill = data?.billTypeDetails?[i];
                    return titleAndValue(
                      label: '',

                      title: data?[i].accountHeadName ?? '',
                      value: data?[i].amount,
                    );
                  },
                ),
              ],
            );
          },
        ),
      ],
    );
  }

  Widget _buildAmountByCategory(ReportState state) {
    return Column(
      children: [
        Container(
          color: Colors.black,
          child: titleAndValue(
            whilte: true,
            title: "Category",
            bold: true,
            value: "Amount",
            label: '',
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: state.daySummary?.length,
          itemBuilder: (context, index) {
            final data = state.daySummary?[index].amountByCategory;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: data?.length ?? 0,
                  itemBuilder: (context, i) {
                    // final bill = data?.billTypeDetails?[i];
                    return titleAndValue(
                      label: '',

                      title: '${data?[i]['category_name']}',
                      value: '${data?[i]['totalamount ']}',
                    );
                  },
                ),
              ],
            );
          },
        ),
      ],
    );
  }

  Widget _buildAmountByMainCategories(ReportState state) {
    return Column(
      children: [
        Container(
          color: Colors.black,
          child: titleAndValue(
            whilte: true,
            title: "Main Category",
            bold: true,
            value: "Amount",
            label: '',
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: state.daySummary?.length,
          itemBuilder: (context, index) {
            final data = state.daySummary?[index].amountByMainCategory;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: data?.length ?? 0,
                  itemBuilder: (context, i) {
                    // final bill = data?.billTypeDetails?[i];
                    return titleAndValue(
                      label: '',

                      title: '${data?[i]['category_name']}',
                      value: '${data?[i]['totalamount']}',
                    );
                  },
                ),
              ],
            );
          },
        ),
      ],
    );
  }

  Widget _buildDiscountBillType(ReportState state) {
    return Column(
      children: [
        Container(
          color: Colors.black,
          child: titleAndValue(
            whilte: true,
            title: "Account Head",
            bold: true,
            value: "Amount",
            label: 'Count',
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: state.daySummary?.length,
          itemBuilder: (context, index) {
            final data = state.daySummary?[index].discBillTypeDetails;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: data?.length ?? 0,
                  itemBuilder: (context, i) {
                    // final bill = data?.billTypeDetails?[i];
                    return titleAndValue(
                      label: '${data?[i].ordercount}',

                      title: '${data?[i].orderOptionName}',
                      value: '${data?[i].discAmount}',
                    );
                  },
                ),
                Container(
                  color: Colors.grey,
                  child: titleAndValue(
                    whilte: true,
                    title: "Total",
                    bold: true,
                    value:
                        '${state.daySummary?.first.discBillTypeDetailsTotal}',
                    label:
                        '${state.daySummary?.first.discBillTypeDetailsCount}',
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}

Container titleAndValue({
  required title,
  required label,
  required value,
  String? extra,
  bool isExtraNeed = false,
  bool bold = false,
  bool whilte = false,
}) {
  return Container(
    padding: EdgeInsets.all(10),
    child: Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 12,
              color: whilte ? Colors.white : Colors.black,
              fontWeight: bold ? FontWeight.w800 : FontWeight.normal,
            ),
          ),
        ),
        Expanded(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 13,
              color: whilte ? Colors.white : Colors.black,
              fontWeight: bold ? FontWeight.w800 : FontWeight.normal,
            ),
          ),
        ),
        if (isExtraNeed) ...[
          Expanded(
            child: Text(
              extra ?? '',
              style: TextStyle(
                fontSize: 13,
                color: whilte ? Colors.white : Colors.black,
                fontWeight: bold ? FontWeight.w800 : FontWeight.normal,
              ),
            ),
          ),
        ],
        Text(
          value.toString(),
          style: TextStyle(
            fontSize: 13,
            color: whilte ? Colors.white : Colors.black,
            fontWeight: bold ? FontWeight.w800 : FontWeight.normal,
          ),
        ),
      ],
    ),
  );
}

Widget _buildStoreDropdown() {
  return BlocBuilder<DashboardCubit, DashboardState>(
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
        onChanged: (store) {
          context.read<ReportCubit>().loadDaySummary(
            storeId: state.selectedStore?.storeId,
          );
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
