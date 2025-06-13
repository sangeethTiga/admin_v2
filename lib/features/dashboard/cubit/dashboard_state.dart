part of 'dashboard_cubit.dart';

class DashboardState extends Equatable {
  final List<RevenueResponse>? revenueReport;
  final ApiFetchStatus? isRevenueGraph;

  const DashboardState({this.isRevenueGraph, this.revenueReport});

  DashboardState copyWith({
    List<RevenueResponse>? revenueReport,
    final ApiFetchStatus? isRevenueGraph,
  }) {
    return DashboardState(
      isRevenueGraph: isRevenueGraph ?? this.isRevenueGraph,
      revenueReport: revenueReport ?? this.revenueReport,
    );
  }

  @override
  List<Object?> get props => [revenueReport, isRevenueGraph];
}

class InitialDashBoardState extends DashboardState {}
