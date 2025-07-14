part of 'order_cubit.dart';

class OrderState extends Equatable {
  final ApiFetchStatus? status;
  final List<OrderStatusResponse>? statusList;
  final List<OrderResponse>? orderList;
  final OrderStatusResponse? selectedOrder;
  final List<int>? selectedIds;
  final List<int>? selectedStatuses;
  final DateTime? fromDate;
  final DateTime? toDate;
  final ApiFetchStatus? isLoading;
  final OrderDetailResponse? orderDetail;


  const OrderState({
    this.status = ApiFetchStatus.idle,
    this.statusList,
    this.orderList,
    this.selectedIds,
    this.selectedStatuses,
    this.fromDate,
    this.toDate,
    this.isLoading = ApiFetchStatus.idle,
    this.selectedOrder,
    this.orderDetail,
  });

  OrderState copyWith({
    ApiFetchStatus? status = ApiFetchStatus.idle,
    List<OrderStatusResponse>? statusList,
    List<OrderResponse>? orderList,
    List<int>? selectedIds,
    List<int>? selectedStatuses,
    DateTime? fromDate,
    DateTime? toDate,
    ApiFetchStatus? isLoading,
    OrderStatusResponse? selectedOrder,
    OrderDetailResponse? orderDetail,
  }) {
    return OrderState(
      status: status ?? this.status,
      statusList: statusList ?? this.statusList,
      orderList: orderList ?? this.orderList,
      selectedIds: selectedIds ?? this.selectedIds,
      selectedStatuses: selectedStatuses ?? this.selectedStatuses,
      fromDate: fromDate ?? this.fromDate,
      toDate: toDate ?? this.toDate,
      isLoading: isLoading ?? this.isLoading,
      selectedOrder: selectedOrder ?? this.selectedOrder,
      orderDetail: orderDetail ?? this.orderDetail,
    );
  }

  @override
  List<Object?> get props => [
    status,
    statusList,
    orderList,
    selectedIds,
    selectedStatuses,
    fromDate,
    toDate,
    isLoading,
    selectedOrder,
    orderDetail,
  ];
}

class InitialOrderState extends OrderState {}
