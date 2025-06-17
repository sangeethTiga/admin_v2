part of 'dashboard_cubit.dart';

class DashboardState extends Equatable {
  final ApiFetchStatus? apiFetchStatus;
  final List<RevenueResponse>? revenueReport;
  final ApiFetchStatus? isRevenueGraph;
  final List<OrdersGraphResponse>? ordersReport;
  final ApiFetchStatus? isOrdersReport;

  const DashboardState({
    this.isRevenueGraph,
    this.revenueReport,
    this.ordersReport,
    this.isOrdersReport,
    this.apiFetchStatus,
  });

  DashboardState copyWith({
    List<RevenueResponse>? revenueReport,
    final ApiFetchStatus? isRevenueGraph,
     List<OrdersGraphResponse>? ordersReport,

    final ApiFetchStatus? isOrdersReport,
    final ApiFetchStatus? apiFetchStatus,
  }) {
    return DashboardState(
      isRevenueGraph: isRevenueGraph ?? this.isRevenueGraph,
      revenueReport: revenueReport ?? this.revenueReport,
      ordersReport: ordersReport ?? this.ordersReport,
      isOrdersReport: isOrdersReport ?? this.isOrdersReport,
      apiFetchStatus: apiFetchStatus ?? this.apiFetchStatus,
    );
  }

  @override
  List<Object?> get props => [
    revenueReport,
    isRevenueGraph,
    ordersReport,
    isOrdersReport,
    apiFetchStatus,
  ];
}

class InitialDashBoardState extends DashboardState {}
