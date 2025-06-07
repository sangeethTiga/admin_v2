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

  const OrderState({
    this.status,
    this.statusList,
    this.orderList,
    this.selectedIds,
    this.selectedStatuses,
    this.fromDate,
    this.toDate,
    this.isLoading,
    this.selectedOrder,
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
  ];
}

class InitialOrderState extends OrderState {}
