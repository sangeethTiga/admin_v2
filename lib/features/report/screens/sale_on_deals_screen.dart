import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/report/cubit/report_cubit.dart';
import 'package:admin_v2/features/report/screens/purchase_screen.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/widgets/appbar/appbar.dart';
import 'package:admin_v2/shared/widgets/buttons/custom_material_button.dart';
import 'package:admin_v2/shared/widgets/date_picker/date_picker_container.dart';
import 'package:admin_v2/shared/widgets/divider/divider_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:admin_v2/shared/widgets/tables/custom_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class SaleOnDealsScreen extends StatelessWidget {
  const SaleOnDealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Sale on Deals Report'),
      body: Column(
        children: [
          dividerWidget(height: 6.0),
          MainPadding(
            top: 0.h,
            child: Column(
              children: [
                commonStoreDropDown(
                  onChanged: (p0) {
                    context.read<DashboardCubit>().selectedStore(p0);
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
                            labelText: 'From Date',
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
                            labelText: 'To Date',
                            value: apiFormat.format(
                              state.toDate ?? DateTime.now(),
                            ),
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

                10.verticalSpace,

                BlocBuilder<DashboardCubit, DashboardState>(
                  builder: (context, state) {
                    return CustomMaterialBtton(
                      onPressed: () {
                        context.read<ReportCubit>().loadSalesDealsReport(
                          isLoadMore: false,
                          storeId: state.selectedStore?.storeId,
                        );
                      },

                      buttonText: 'View Report',
                    );
                  },
                ),
                10.verticalSpace,
              ],
            ),
          ),

          Expanded(child: _commonTable()),
        ],
      ),
    );
  }

  Widget _commonTable() {
    final ValueNotifier<bool> showNoMoreData = ValueNotifier(false);
    return BlocBuilder<ReportCubit, ReportState>(
      builder: (context, state) {
        final ScrollController scrollController = ScrollController();

        return MainPadding(
          child: Column(
            children: [
              Expanded(
                child: NotificationListener<ScrollNotification>(
                  onNotification: (ScrollNotification scrollInfo) {
                    final maxScroll = scrollInfo.metrics.maxScrollExtent;
                    final currentScroll = scrollInfo.metrics.pixels;
                    final threshold = maxScroll - 100;

                    final atBottom = currentScroll >= threshold;

                    if (scrollInfo is ScrollEndNotification && atBottom) {
                      final reportState = context.read<ReportCubit>().state;

                      if (reportState.hasMoreData == true &&
                          reportState.isLoadingMore != true) {
                        _loadMoreData(context);
                      }

                      if (reportState.hasMoreData == false &&
                          reportState.salesDealsReport?.isNotEmpty == true) {
                        showNoMoreData.value = true;
                      }
                    }
                    if (scrollController.hasClients &&
                        scrollController.position.userScrollDirection ==
                            ScrollDirection.forward) {
                      showNoMoreData.value = false;
                    }

                    return false;
                  },

                  child: CommonTableWidget(
                    controller: scrollController,
                    isLoading:
                        state.isSalesDealsReport == ApiFetchStatus.loading,
                    headers: [
                      // "#",
                      "Order No",
                      "Order Date",
                      "Product",
                      "Offer Price",
                      "Total",
                    ],
                    columnFlex: [3, 4, 4, 3, 2],

                    data:
                        state.salesDealsReport?.map((e) {
                          //    int index =
                          // state.salesDealsReport?.indexOf(e) ?? 0;

                          return {
                            // '#': index + 1,
                            'Order No': e.prodOrderId ?? '',

                            'Order Date': e.orderDate?.toString().padLeft(
                              2,
                              '0',
                            ),

                            'Product': e.productName ?? '',
                            'Offer Price': e.offerPrice ?? '',
                            'Total': e.orderItemTotal ?? '',
                          };
                        }).toList() ??
                        [],
                  ),
                ),
              ),
              if (state.isLoadingMore == true)
                Container(
                  padding: EdgeInsets.all(16.w),
                  child: CircularProgressIndicator(),
                ),
              ValueListenableBuilder<bool>(
                valueListenable: showNoMoreData,
                builder: (context, value, _) {
                  if (!value) return SizedBox.shrink();
                  return Padding(
                    padding: EdgeInsets.all(16.w),
                    child: Text(
                      'No more data',
                      style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class DateTimeabc {
  static String formatDateTimeFromString(String dateString) {
    try {
      DateTime? dateTime;

      if (dateString.contains('-') && dateString.contains(':')) {
        List<String> parts = dateString.split(' ');
        if (parts.length >= 2) {
          String datePart = parts[0];
          String timePart = parts[1];
          String fixInvalidTime(String timeString) {
            try {
              List<String> parts = timeString.split(':');
              int hour = int.parse(parts[0]);
              int minute = int.parse(parts[1]);

              if (minute >= 60) {
                int extraHours = minute ~/ 60;
                minute = minute % 60;
                hour += extraHours;
              }

              if (hour >= 24) {
                hour = hour % 24;
              }

              return '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
            } catch (e) {
              return '00:00';
            }
          }

          timePart = fixInvalidTime(timePart);

          List<String> dateParts = datePart.split('-');
          if (dateParts.length == 3) {
            int day = int.parse(dateParts[0]);
            int month = int.parse(dateParts[1]);
            int year = int.parse(dateParts[2]);

            List<String> timeParts = timePart.split(':');
            int hour = int.parse(timeParts[0]);
            int minute = int.parse(timeParts[1]);

            dateTime = DateTime(year, month, day, hour, minute);
          }
        }
      }

      if (dateTime != null) {
        return DateFormat('dd MMM yyyy').format(dateTime);
      } else {
        return 'Invalid date format';
      }
    } catch (e) {
      return 'Error parsing date: $e';
    }
  }
}

void _loadMoreData(BuildContext context) {
  final reportState = context.read<ReportCubit>().state;
  final dashboardState = context.read<DashboardCubit>().state;

  print('_loadMoreData called');
  print('hasMoreData: ${reportState.hasMoreData}');
  print('isLoadingMore: ${reportState.isLoadingMore}');
  print('currentPage: ${reportState.currentPage}');
  print('total records: ${reportState.customersReport?.length}');

  if (reportState.hasMoreData == true && reportState.isLoadingMore != true) {
    context.read<ReportCubit>().loadSalesDealsReport(
      storeId: dashboardState.selectedStore?.storeId,
      isLoadMore: true,
    );
  }
}
