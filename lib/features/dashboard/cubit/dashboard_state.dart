part of 'dashboard_cubit.dart';

class DashboardState extends Equatable {
  final ApiFetchStatus? apiFetchStatus;
  final List<RevenueResponse>? revenueReport;
  final ApiFetchStatus? isRevenueGraph;
  final List<OrdersGraphResponse>? ordersReport;
  final ApiFetchStatus? isOrdersReport;
  final StoreResponse? selectedStore;
    final ListOfDemo? selectDate;



  const DashboardState({
    this.isRevenueGraph,
    this.revenueReport,
    this.ordersReport,
    this.isOrdersReport,
    this.apiFetchStatus,
    this.selectedStore,
    this.selectDate,
  });

  DashboardState copyWith({
    List<RevenueResponse>? revenueReport,
    final ApiFetchStatus? isRevenueGraph,
     List<OrdersGraphResponse>? ordersReport,

    final ApiFetchStatus? isOrdersReport,
    final ApiFetchStatus? apiFetchStatus,
        StoreResponse? selectedStore,
          final ListOfDemo? selectDate


  }) {
    return DashboardState(
      isRevenueGraph: isRevenueGraph ?? this.isRevenueGraph,
      revenueReport: revenueReport ?? this.revenueReport,
      ordersReport: ordersReport ?? this.ordersReport,
      isOrdersReport: isOrdersReport ?? this.isOrdersReport,
      apiFetchStatus: apiFetchStatus ?? this.apiFetchStatus,
      selectedStore: selectedStore??this.selectedStore,
      selectDate: selectDate??this.selectDate,
    );
  }

  @override
  List<Object?> get props => [
    revenueReport,
    isRevenueGraph,
    ordersReport,
    isOrdersReport,
    apiFetchStatus,
    selectedStore,
    selectDate,
  ];
}

class InitialDashBoardState extends DashboardState {}
