import 'dart:developer';

import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/orders/cubit/order_cubit.dart';
import 'package:admin_v2/features/orders/domain/models/order/order_response.dart';
import 'package:admin_v2/features/orders/domain/models/order_request/order_request.dart';
import 'package:admin_v2/features/orders/domain/models/status/order_status_response.dart';
import 'package:admin_v2/features/orders/screens/widgets/order_filter.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/app/list/common_map.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/routes/routes.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/utils/helper/helper.dart';
import 'package:admin_v2/shared/widgets/common_widgets/common_show_dialogue/common_show_dialogue.dart';
import 'package:admin_v2/shared/widgets/date_picker/date_picker_container.dart';
import 'package:admin_v2/shared/widgets/divider/divider_widget.dart';
import 'package:admin_v2/shared/widgets/dropdown_field_widget/dropdown_field_widget.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  bool showSearch = false;
  final TextEditingController searchController = TextEditingController();

  void _toggleSearch() {
    setState(() {
      showSearch = !showSearch;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          transitionBuilder: (child, animation) {
            return SizeTransition(
              sizeFactor: animation,
              axis: Axis.horizontal,
              child: child,
            );
          },
          child: showSearch
              ? TextField(
                  key: ValueKey('search field'),
                  controller: searchController,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText:
                        'Search,Order No/Bill No/Customer/Phone/Delivery Partner',
                  ),
                  onChanged: (v) {
                    context.read<OrderCubit>().searchOrder(
                      storeId: context
                          .read<DashboardCubit>()
                          .state
                          .selectedStore
                          ?.storeId,
                      searchText: v,
                    );
                  },
                )
              : Text(
                  'New Orders',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.start,
                  key: ValueKey('title text'),
                ),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              _toggleSearch();
            },
            icon: SvgPicture.asset(
              'assets/icons/Search.svg',
              height: 20.h,
              width: 20.w,
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/bell-icon.svg',
              height: 32.h,
              width: 32.w,
            ),
          ),
        ],
      ),

      body: BlocBuilder<OrderCubit, OrderState>(
        builder: (context, state) {
          log("STATUS LENGTH 1=-= -${state.statusList?.length}");

          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                dividerWidget(height: 6.h),
                10.verticalSpace,
                _buildStatusFilterSection(0),
                12.verticalSpace,
                const Divider(),
                MainPadding(
                  child: Column(
                    children: [
                      5.verticalSpace,
                      _commonStoreDropDown(
                        onChanged: (p0) {
                          context.read<DashboardCubit>().selectedStore(p0);
                        },
                      ),
                      4.verticalSpace,
                      _buildFilterContainer(state),
                      12.verticalSpace,
                      _buildOrdersList(state),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildStatusFilterSection(int orderId) {
    return BlocBuilder<OrderCubit, OrderState>(
      builder: (context, state) {
        return BlocBuilder<DashboardCubit, DashboardState>(
          builder: (context, common) {
            log("STATUS LENGTH =-= -${state.statusList?.length}");
            return SizedBox(
              height: 48.h,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 12.w),
                scrollDirection: Axis.horizontal,
                itemCount: state.statusList?.length ?? 0,
                shrinkWrap: true,
                itemBuilder: (context, i) {
                  final statusItem = state.statusList?[i];

                  if (statusItem == null) return const SizedBox.shrink();

                  final isSelected =
                      state.selectedOrder?.orderStatusId ==
                      statusItem.orderStatusId;

                  return _StatusFilterChip(
                    statusItem: statusItem,
                    isSelected: isSelected,
                    onTap: () =>
                        _handleStatusFilter(context, statusItem, common, state),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }

  Widget _commonStoreDropDown({Function(StoreResponse)? onChanged}) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return DropDownFieldWidget(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.w,
            vertical: 15.h,
          ),
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
            onChanged?.call(p0);
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

  Widget _buildFilterContainer(OrderState state) {
    return Container(
      height: 75.h,
      decoration: BoxDecoration(
        border: Border.all(color: kLightBorderColor),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, common) {
          return Column(
            children: [
              // _buildCheckboxRow(state, common, context),
              7.verticalSpace,
              _buildDatePickerRow(state, common, context),
            ],
          );
        },
      ),
    );
  }

  Widget _buildCheckboxRow(
    OrderState state,
    DashboardState common,
    BuildContext context,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: mapItems.map((item) {
        final isSelected = state.selectedIds?.contains(item.id) ?? false;

        return _FilterCheckbox(
          item: item,
          isSelected: isSelected,
          onChanged: (v) =>
              _handleCheckboxChange(context, item.id, state, common),
        );
      }).toList(),
    );
  }

  Widget _buildDatePickerRow(
    OrderState state,
    DashboardState common,
    BuildContext context,
  ) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w, right: 5.w),
      child: Row(
        children: [
          Expanded(
            child: DatePickerContainer(
              value: apiFormat.format(state.fromDate ?? DateTime.now()),
              hintText: '',
              changeDate: (DateTime pickedDate) {
                context.read<OrderCubit>().changeFromDate(pickedDate);
                context.read<OrderCubit>().orders(
                  req: OrderRequest(
                    filterId: state.selectedIds,
                    storeId: common.selectedStore?.storeId,
                    fromDate: parsedDate(pickedDate),
                    toDate: parsedDate(state.toDate ?? DateTime.now()),
                    version: "v2",
                  ),
                );
              },
            ),
          ),
          8.horizontalSpace,
          Expanded(
            child: DatePickerContainer(
              value: apiFormat.format(state.toDate ?? DateTime.now()),
              hintText: '',
              changeDate: (DateTime pickedDate) {
                context.read<OrderCubit>().changeToDate(pickedDate);
                context.read<OrderCubit>().orders(
                  req: OrderRequest(
                    filterId: state.selectedIds,
                    storeId: common.selectedStore?.storeId,
                    fromDate: parsedDate(state.fromDate ?? DateTime.now()),
                    toDate: parsedDate(pickedDate),
                    version: "v2",
                  ),
                );
              },
            ),
          ),
          8.horizontalSpace,
          BlocBuilder<DashboardCubit, DashboardState>(
            builder: (context, state) {
              return InkWell(
                onTap: () async {
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) =>
                        const Center(child: CircularProgressIndicator()),
                  );

                  await Future.wait([
                    context.read<DashboardCubit>().getPaymethod(),
                    context.read<DashboardCubit>().getWaiters(),
                    context.read<DashboardCubit>().getKiosk(),
                    context.read<DashboardCubit>().getCashier(),
                  ]);

                  if (context.mounted) {
                    Navigator.of(context).pop();
                  }

                  final updatedState = context.read<DashboardCubit>().state;

                  final filter = [
                    FilterCategory(
                      title: 'Payment Type',
                      items:
                          updatedState.paymethodList
                              ?.map(
                                (item) => FilterItem(
                                  id: item.payMethodId ?? 0,
                                  name: item.payMethodName ?? '',
                                  isSelected: false,
                                ),
                              )
                              .toList() ??
                          [],
                    ),
                    FilterCategory(
                      title: 'Waiters',
                      items:
                          updatedState.waitersList
                              ?.map(
                                (item) => FilterItem(
                                  id: item.userId ?? 0,
                                  name: item.userName ?? '',
                                  isSelected: false,
                                ),
                              )
                              .toList() ??
                          [],
                    ),
                    FilterCategory(
                      title: 'KIOSK',
                      items:
                          updatedState.kioskList
                              ?.map(
                                (item) => FilterItem(
                                  id: item.kioskId ?? 0,
                                  name: item.kioskName ?? '',
                                  isSelected: false,
                                ),
                              )
                              .toList() ??
                          [],
                    ),
                  ];
                  commonnShowBottomSheet(
                    context: context,
                    child: CommonOrderFilter(
                      categories: filter,
                      onFiltersChanged: (filters) {
                        context.read<OrderCubit>().applyFiltersToData(
                          filters,
                          state.selectedStore?.storeId ?? 0,
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  width: 39.w,
                  height: 56.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: kPrimaryColor),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset(
                      'assets/icons/Frame 2147226159.svg',
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildOrdersList(OrderState state) {
    if (state.isLoading == ApiFetchStatus.loading) {
      return _buildShimmerList();
    }

    if (state.orderList?.isEmpty ?? false) {
      return _buildEmptyState();
    }

    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: state.orderList?.length ?? 0,
      itemBuilder: (context, i) {
        final data = state.orderList?[i];
        return _OrderCard(orderData: data);
      },
    );
  }

  Widget _buildShimmerList() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) => _shimmerOrderCard(),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: 110.h),
        child: Text('No orders found!', style: FontPalette.hW700S13),
      ),
    );
  }

  void _handleStatusFilter(
    BuildContext context,
    OrderStatusResponse statusItem,
    DashboardState common,
    OrderState state,
  ) {
    context.read<OrderCubit>().changeStatus(statusItem);
    context.read<OrderCubit>().orders(
      isEdit: false,
      req: OrderRequest(
        orderStatusId: [statusItem.orderStatusId ?? 0],
        storeId: common.selectedStore?.storeId,
        fromDate: parsedDate(state.fromDate ?? DateTime.now()),
        toDate: parsedDate(state.toDate ?? DateTime.now()),
        version: "v2",

        // payMethodId:
      ),
    );
  }

  void _handleStoreChange(
    BuildContext context,
    StoreResponse? store,
    DashboardState state,
  ) {
    context.read<DashboardCubit>().selectedStore(store ?? StoreResponse());
    context.read<OrderCubit>().orders(
      req: OrderRequest(
        storeId: store?.storeId,
        fromDate: parsedDate(state.fromDate ?? DateTime.now()),
        toDate: parsedDate(state.toDate ?? DateTime.now()),
        version: "v2",
      ),
    );
  }

  void _handleCheckboxChange(
    BuildContext context,
    int itemId,
    OrderState state,
    DashboardState common,
  ) {
    context.read<OrderCubit>().ordersDatesEvent(itemId);
    context.read<OrderCubit>().orders(
      req: OrderRequest(
        filterId: state.selectedIds,
        storeId: common.selectedStore?.storeId,
        fromDate: parsedDate(state.fromDate ?? DateTime.now()),
        toDate: parsedDate(state.toDate ?? DateTime.now()),
        version: "v2",
      ),
    );
    log("Selected IDs count: ${state.selectedIds?.length}");
  }
}

class _StatusFilterChip extends StatelessWidget {
  final OrderStatusResponse statusItem;
  final bool isSelected;
  final VoidCallback onTap;

  const _StatusFilterChip({
    required this.statusItem,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(right: 8.w),
        height: 40.h,
        width: 106.w,
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? kPrimaryColor : kLightBorderColor,
          ),
          color: isSelected ? kPrimaryColor : kWhite,
          borderRadius: BorderRadius.circular(44.r),
        ),
        child: Text(
          textAlign: TextAlign.center,
          statusItem.orderStatusName ?? '',
          style: FontPalette.hW700S13.copyWith(
            color: isSelected ? kWhite : kBlack,
          ),
        ),
      ),
    );
  }
}

class _FilterCheckbox extends StatelessWidget {
  final dynamic item;
  final bool isSelected;
  final ValueChanged<bool?> onChanged;

  const _FilterCheckbox({
    required this.item,
    required this.isSelected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.w, right: 4.w),
      child: Row(
        children: [
          Checkbox(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            side: const BorderSide(color: Color(0xFFCBD7D4), width: 1.5),
            activeColor: kPrimaryColor,
            shape: const CircleBorder(),
            value: isSelected,
            onChanged: onChanged,
          ),
          Text(item.title, style: FontPalette.hW500S12),
        ],
      ),
    );
  }
}

class _OrderCard extends StatelessWidget {
  final OrderResponse? orderData;

  const _OrderCard({required this.orderData});

  @override
  Widget build(BuildContext context) {
    if (orderData == null) return const SizedBox.shrink();

    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      width: 351.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: kWhite,
        border: Border.all(color: kLightBorderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildOrderHeader(),
          dividerWidget(color: kLightBorderColor),
          10.verticalSpace,
          _buildCustomerInfo(),
          16.verticalSpace,
          _buildDateTimeInfo(),
          10.verticalSpace,
          _buildTotalAmount(),
          10.verticalSpace,
          _buildDeliveryAgent(),
          10.verticalSpace,
          _buildActionButtons(
            context,
            orderData?.prodOrderId ?? 0,
            orderData?.orderStatusName ?? '',
          ),
          10.verticalSpace,
        ],
      ),
    );
  }

  Widget _buildOrderHeader() {
    return Padding(
      padding: EdgeInsets.only(left: 12.w, top: 12.h, right: 16.w, bottom: 6.h),
      child: Row(
        children: [
          Text(
            'Order: ${orderData?.prodOrderId ?? 0}',
            style: FontPalette.hW700S13.copyWith(color: kBlack),
          ),
          const Spacer(),
          3.horizontalSpace,
          Text(
            'Delivery',
            style: FontPalette.hW700S14.copyWith(color: kPrimaryColor),
          ),
        ],
      ),
    );
  }

  Widget _buildCustomerInfo() {
    return _rowWidget(
      isPrimary: true,
      label: 'Customer name',
      label1: "Mobile number",
      name: orderData?.billCustName ?? 'N/A',
      name2: orderData?.billMobile ?? 'N/A',
    );
  }

  Widget _buildDateTimeInfo() {
    return _rowWidget(
      label: 'Date',
      label1: "Time",
      name: orderData?.orderDate?.isNotEmpty == true
          ? orderData!.orderDate?.substring(0, 11)
          : 'Date not available',
      name2: orderData?.orderDate?.isNotEmpty == true
          ? parseOrderTime(orderData!.orderDate)
          : '--:--',
    );
  }

  Widget _buildTotalAmount() {
    final rawAmount = orderData?.netAmount?.toString() ?? '0';
    final doubleAmount = double.tryParse(rawAmount) ?? 0.0;
    final formattedAmount = doubleAmount.toStringAsFixed(2);
    return _containerWidget(
      name: 'Total :',
      status: 'AED $formattedAmount',
      //status: ' AED ${orderData?.netAmount ?? 0}',
    );
  }

  Widget _buildDeliveryAgent() {
    return _containerWidget(
      name: 'Delivery agent : ',
      status: orderData?.deliveryBoyName ?? 'NA',
    );
  }

  Widget _buildActionButtons(
    BuildContext context,
    int orderId,
    String orderName,
  ) {
    return Row(
      children: [
        1.horizontalSpace,
        Expanded(
          child: InkWell(
            onTap: () {
              if (orderName == 'Delivered') {
                return;
              }
              _dialogBuilder(context, orderId);
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w),
              height: 44.h,
              decoration: BoxDecoration(
                border: Border.all(color: kPrimaryColor),
                color: kWhite,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    orderData?.orderStatusName ?? '',
                    style: FontPalette.hW700S14.copyWith(color: kPrimaryColor),
                  ),
                  4.horizontalSpace,
                  SvgPicture.asset(
                    'assets/icons/Arrow - Right.svg',
                    color: kPrimaryColor,
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () => _navigateToOrderDetail(context),
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w),
              height: 44.h,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Text(
                'View order',
                style: FontPalette.hW700S14.copyWith(color: kWhite),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _navigateToOrderDetail(BuildContext context) {
    context.read<OrderCubit>().orderDetail(orderData?.prodOrderId ?? 0);
    context.push(routeOrderDetail);
  }
}

Widget _rowWidget({
  String? label,
  String? label1,
  String? name,
  String? name2,
  bool isPrimary = false,
}) {
  return MainPadding(
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Text(
                label ?? '',
                style: FontPalette.hW500S11.copyWith(
                  color: const Color(0XFF5E6566),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                label1 ?? '',
                style: FontPalette.hW500S11.copyWith(
                  color: const Color(0XFF5E6566),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Text(name ?? '', style: FontPalette.hW500S13),
            ),
            Expanded(
              flex: 3,
              child: InkWell(
                onTap: () async {
                  if (name2 != null && name2.isNotEmpty) {
                    final Uri telUri = Uri(scheme: 'tel', path: name2);
                    if (await canLaunchUrl(telUri)) {
                      await launchUrl(telUri);
                    } else {
                      debugPrint('Could not launch $telUri');
                    }
                  }
                },
                child: Row(
                  children: [
                    if (isPrimary)
                      SvgPicture.asset(
                        'assets/icons/Call.svg',
                        height: 14.h,
                        width: 12.w,
                      ),
                    4.horizontalSpace,
                    Text(
                      name2 ?? '',
                      style: FontPalette.hW500S13.copyWith(
                        color: isPrimary ? kPrimaryColor : kBlack,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _containerWidget({String? name, String? status}) {
  return Container(
    height: 41.h,
    width: double.infinity,
    padding: EdgeInsets.only(top: 10.h, left: 12.w),
    margin: EdgeInsets.only(left: 10.w, right: 12.w),
    decoration: BoxDecoration(
      color: kBorderColor,
      borderRadius: BorderRadius.circular(8.r),
    ),
    child: RichText(
      text: TextSpan(
        text: name,
        style: FontPalette.hW500S13.copyWith(color: kBlack),
        children: [
          TextSpan(
            text: status,
            style: FontPalette.hW700S13.copyWith(color: kPrimaryColor),
          ),
        ],
      ),
    ),
  );
}

Widget _shimmerOrderCard() {
  return Shimmer.fromColors(
    baseColor: Colors.grey.shade300,
    highlightColor: Colors.grey.shade100,
    child: Container(
      margin: EdgeInsets.only(bottom: 12.h),
      height: 220.h,
      width: 351.w,
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: kLightBorderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: 16.h, width: 120.w, color: Colors.white),
          8.verticalSpace,
          Container(height: 12.h, width: double.infinity, color: Colors.white),
          16.verticalSpace,
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 12.h,
                  width: 100.w,
                  color: Colors.white,
                ),
              ),
              12.horizontalSpace,
              Expanded(
                child: Container(
                  height: 12.h,
                  width: 100.w,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          16.verticalSpace,
          Container(height: 12.h, width: double.infinity, color: Colors.white),
          16.verticalSpace,
          Container(height: 12.h, width: double.infinity, color: Colors.white),
          16.verticalSpace,
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 44.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Colors.white,
                  ),
                ),
              ),
              8.horizontalSpace,
              Expanded(
                child: Container(
                  height: 44.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Future<void> _dialogBuilder(BuildContext context, int? orderId) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, dash) {
          return BlocBuilder<OrderCubit, OrderState>(
            builder: (context, state) {
              return AlertDialog(
                backgroundColor: kWhite,
                title: const Text('Status'),
                content: SizedBox(
                  height: 260.h,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        state.statusList?.length ?? 0,
                        (i) => MainPadding(
                          top: 10.h,
                          child: Row(
                            children: [
                              Transform.scale(
                                scale: 1.2,
                                child: Radio<int>(
                                  value: i,
                                  groupValue: state.selectedStatusIndex,
                                  onChanged: (value) {
                                    context
                                        .read<OrderCubit>()
                                        .selectSingleStatus(value!);
                                  },
                                ),
                              ),
                              SizedBox(width: 10.w),
                              10.horizontalSpace,
                              Text(state.statusList?[i].orderStatusName ?? ''),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                actions: <Widget>[
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: Theme.of(context).textTheme.labelLarge,
                    ),
                    child: const Text('Cancel'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: Theme.of(context).textTheme.labelLarge,
                    ),
                    child: const Text('Submit'),
                    onPressed: () async {
                      if (state.selectedStatusIndex != null) {
                        await context.read<OrderCubit>().applySelectedStatus(
                          storeId: dash.selectedStore?.storeId ?? 0,
                          orderId: orderId,
                        );

                        Future.delayed(Duration(microseconds: 400));
                        await context.read<OrderCubit>().orders(
                          req: OrderRequest(
                            storeId: dash.selectedStore?.storeId,
                            orderOptionId: 0,
                            cashierId: 0,
                            fromDate: parsedDate(
                              state.fromDate ?? DateTime.now(),
                            ),
                            toDate: parsedDate(state.toDate ?? DateTime.now()),
                            version: "v2",
                          ),
                        );
                      }
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        },
      );
    },
  );
}

final Map<String, String> _timeCache = {};

String parseOrderTime(String? orderDate) {
  if (orderDate == null || orderDate.trim().isEmpty) {
    return '--:--';
  }

  if (_timeCache.containsKey(orderDate)) {
    return _timeCache[orderDate]!;
  }

  try {
    const formats = [
      "dd-MMM-yyyy hh:mm:ss a",
      "dd-MMM-yyyy HH:mm:ss",
      "yyyy-MM-dd HH:mm:ss",
      "dd/MM/yyyy HH:mm:ss",
      "yyyy-MM-ddTHH:mm:ss.000Z",
      "yyyy-MM-ddTHH:mm:ss",
    ];

    for (final format in formats) {
      try {
        final dateTime = DateFormat(format).parse(orderDate);
        final formattedTime = DateFormat("hh:mm a").format(dateTime);

        _timeCache[orderDate] = formattedTime;
        return formattedTime;
      } catch (e) {
        continue;
      }
    }

    log('Could not parse date with any format: $orderDate');
    _timeCache[orderDate] = '--:--';
    return '--:--';
  } catch (e) {
    log('Error parsing date: $orderDate - $e');
    _timeCache[orderDate] = '--:--';
    return '--:--';
  }
}
