import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/features/report/screens/purchase_screen.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/date_picker/date_picker_container.dart';
import 'package:admin_v2/shared/widgets/divider/divider_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class DaySummaryReportScreen extends StatelessWidget {
  const DaySummaryReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Day Summary'),
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
                      context.read<ReportCubit>().loadDaySummary(
                        storeId: p0.storeId,
                      );
                    },
                  ),
                  10.verticalSpace,
                  BlocBuilder<ReportCubit, ReportState>(
                    buildWhen: (previous, current) =>
                        previous.fromDate != current.fromDate,
                    builder: (context, state) {
                      return Row(
                        children: [
                          Expanded(
                            child: DatePickerContainer(
                              hintText: 'Select Date',
                              value: apiFormat.format(
                                state.fromDate ?? DateTime.now(),
                              ),
                              changeDate: (DateTime date) {
                                context.read<ReportCubit>().changeToDate(date);
                                context.read<ReportCubit>().loadDaySummary(
                                  storeId: context
                                      .read<DashboardCubit>()
                                      .state
                                      .selectedStore
                                      ?.storeId,
                                );
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

                  BlocBuilder<ReportCubit, ReportState>(
                    builder: (context, state) {
                      if (state.isDaySummary == ApiFetchStatus.loading) {
                        return _buildCompleteShimmer();
                      }

                      if (state.daySummary?.isNotEmpty ?? false) {
                        return _buildReportContent(state);
                      }

                      return _buildEmptyState();
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

  Widget _buildReportContent(ReportState state) {
    final daySummary = state.daySummary;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle('Mode Of Payments'),
        _buildModeOfPayments(state),

        _buildSectionTitle('Bill Type Details'),
        _buildBillTypeDetails(state),

        _buildSectionTitle('Amount - By Delivery Partners'),
        _buildDeliveryPartners(state),

        _buildSectionTitle('Receipt'),
        _buildReceipts(state),
        if (daySummary?[0].paymentData?.isNotEmpty == true) ...{
          _buildSectionTitle('Payment'),
          _buildPayments(state),
        },
        if (daySummary?[0].amountByDelivertBoy?.isNotEmpty == true) ...{
          _buildSectionTitle('Amount - By Delivery Boys'),
          _buildAmountByDeliveryBoys(state),
        },
        if (daySummary?[0].cancelledOrders?.isNotEmpty == true) ...{
          _buildSectionTitle('List of Cancelled Orders'),
          _buildListOfCancelledOrders(state),
        },
        if (daySummary?[0].discBillTypeDetails?.isNotEmpty == true) ...{
          _buildSectionTitle('Discount Bill Type'),
          _buildDiscountBillType(state),
        },
        if (daySummary?[0].amountByCategory?.isNotEmpty == true) ...{
          _buildSectionTitle('AMOUNT - BY CATEGORY'),
          _buildAmountByCategory(state),
        },
        if (daySummary?[0].amountByMainCategory?.isNotEmpty == true) ...{
          _buildSectionTitle('AMOUNT - BY MAIN CATEGORY'),
          _buildAmountByMainCategories(state),
        },
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
      margin: EdgeInsets.only(top: 4.h),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Text(title, style: FontPalette.hW600S14),
    );
  }

  Widget _buildCompleteShimmer() {
    return Column(
      children: [
        _buildShimmerSection(title: 'Mode Of Payments', itemCount: 4),
        12.verticalSpace,

        _buildShimmerSection(title: 'Bill Type Details', itemCount: 3),
        12.verticalSpace,

        _buildShimmerSection(title: 'Delivery Partners', itemCount: 2),
        12.verticalSpace,

        _buildShimmerSection(title: 'Receipt', itemCount: 3),
        12.verticalSpace,

        _buildShimmerSection(title: 'Payment', itemCount: 4),
        12.verticalSpace,

        _buildShimmerSection(title: 'Amount by Category', itemCount: 5),
        12.verticalSpace,
      ],
    );
  }

  Widget _buildShimmerSection({required String title, required int itemCount}) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 40.h,
            margin: EdgeInsets.only(top: 8.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),

          Container(
            width: double.infinity,
            height: 45.h,
            margin: EdgeInsets.only(top: 4.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4.r),
            ),
          ),

          ...List.generate(
            itemCount,
            (index) => Container(
              width: double.infinity,
              height: 40.h,
              margin: EdgeInsets.only(top: 2.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4.r),
              ),
            ),
          ),

          Container(
            width: double.infinity,
            height: 45.h,
            margin: EdgeInsets.only(top: 4.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4.r),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return Container(
      padding: EdgeInsets.only(top: 65.h, left: 16.w, right: 16.w),
      child: Column(
        children: [
          Icon(Icons.analytics_outlined, size: 64.w, color: Colors.grey[400]),
          12.verticalSpace,
          Text(
            'No data available',
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.grey[600],
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Select a store and date to view the day summary report',
            style: TextStyle(fontSize: 14.sp, color: Colors.grey[500]),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildTableShimmer({int rowCount = 5}) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Column(
        children: [
          Container(
            height: 45.h,
            width: double.infinity,
            color: Colors.white,
            margin: EdgeInsets.only(bottom: 4.h),
          ),
          ...List.generate(
            rowCount,
            (index) => Container(
              height: 40.h,
              width: double.infinity,
              color: Colors.white,
              margin: EdgeInsets.only(bottom: 2.h),
            ),
          ),
          Container(
            height: 45.h,
            width: double.infinity,
            color: Colors.white,
            margin: EdgeInsets.only(top: 4.h),
          ),
        ],
      ),
    );
  }

  Widget _buildModeOfPayments(ReportState state) {
    if (state.daySummary?.isEmpty ?? true) return const SizedBox.shrink();

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
            final bill = state.daySummary?[i].modeOfPayments;
            return Column(
              children: [
                titleAndValue(label: '', title: 'Card', value: bill?.card),
                titleAndValue(label: '', title: 'Cash', value: bill?.cash),
                titleAndValue(label: '', title: 'Credit', value: bill?.credit),
                titleAndValue(label: '', title: 'Online', value: bill?.online),
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
            value:
                '${state.daySummary?.first.totalSales!.toStringAsFixed(2) ?? 0}',
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
            label: 'Count',
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
                    value:
                        '${state.daySummary?.first.billTypeGrandTotal!.toStringAsFixed(2) ?? 0}',
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
    if (state.daySummary?.isEmpty ?? true) return const SizedBox.shrink();
    return Column(
      children: [
        Container(
          color: Colors.black,
          child: titleAndValue(
            whilte: true,
            title: "Delivery Partners",
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
                      value: '${data?[i].totalamount ?? 0.toStringAsFixed(2)}',
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
                        '${state.daySummary?.first.deliveryPartnersTotal!.toStringAsFixed(2) ?? 0}',
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
                    return titleAndValue(
                      label: '',
                      title: data?[i].accountHeadName ?? '',
                      value: data?[i].amount ?? 0.toStringAsFixed(2),
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
                    return titleAndValue(
                      label: '',
                      title: data?[i].accountHeadName ?? '',
                      value: data?[i].amount ?? 0.toStringAsFixed(2),
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
                    return titleAndValue(
                      label: '',
                      title: '${data?[i]['category_name']}',
                      value: '${data?[i]['totalamount'].toStringAsFixed(2)}',
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
                    return titleAndValue(
                      label: '',
                      title: '${data?[i]['category_name']}',
                      value: data?[i]['totalamount'].toStringAsFixed(2),
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
                    return titleAndValue(
                      label: '${data?[i].ordercount}',
                      title: '${data?[i].orderOptionName}',
                      value: '${data?[i].discAmount ?? 0.toStringAsFixed(2)}',
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

Widget _buildAmountByDeliveryBoys(ReportState state) {
  return Column(
    children: [
      Container(
        color: Colors.black,
        child: titleAndValue(
          whilte: true,
          title: "Delivery Partners",
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
          final data = state.daySummary?[index].amountByDelivertBoy;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: data?.length ?? 0,
                itemBuilder: (context, i) {
                  return titleAndValue(
                    label: '${data?[i].ordercount ?? 0}',
                    title: '${data?[i].userName}',
                    value: data?[i].totalamount?.toStringAsFixed(2),
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
                      '${state.daySummary?.first.amountByDeliveryBoyTotal!.toStringAsFixed(2) ?? 0}',
                  label:
                      '${state.daySummary?.first.amountByDeliveryBoyCount ?? 0}',
                ),
              ),
            ],
          );
        },
      ),
    ],
  );
}

Widget _buildListOfCancelledOrders(ReportState state) {
  return Column(
    children: [
      Container(
        color: Colors.black,
        child: titleAndValue(
          whilte: true,
          title: "Bill No",
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
          final data = state.daySummary?[index].cancelledOrders;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: data?.length ?? 0,
                itemBuilder: (context, i) {
                  return titleAndValue(
                    label: '',
                    title: '${data?[i]['bill_no'] ?? 0}',
                    value: data?[i]['net_amount'].toStringAsFixed(2),
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
                      '${state.daySummary?.first.cancelledOrdersTotal!.toStringAsFixed(2) ?? 0}',
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

// Enhanced titleAndValue widget
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
    padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
    decoration: BoxDecoration(
      color: whilte ? null : Colors.white,
      border: Border(bottom: BorderSide(color: Colors.grey[200]!, width: 0.5)),
    ),
    child: Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 12.sp,
              color: whilte ? Colors.white : Colors.black,
              fontWeight: bold ? FontWeight.w800 : FontWeight.normal,
            ),
          ),
        ),
        if (label.isNotEmpty) ...[
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.sp,
                color: whilte ? Colors.white : Colors.black87,
                fontWeight: bold ? FontWeight.w800 : FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
        if (isExtraNeed) ...[
          Expanded(
            flex: 2,
            child: Text(
              extra ?? '',
              style: TextStyle(
                fontSize: 12.sp,
                color: whilte ? Colors.white : Colors.black,
                fontWeight: bold ? FontWeight.w800 : FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
        Expanded(
          flex: 2,
          child: Text(
            value.toString(),
            style: TextStyle(
              fontSize: 12.sp,
              color: whilte ? Colors.white : Colors.black,
              fontWeight: bold ? FontWeight.w800 : FontWeight.normal,
            ),
            textAlign: TextAlign.right,
          ),
        ),
      ],
    ),
  );
}
