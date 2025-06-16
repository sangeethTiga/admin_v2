import 'dart:math';

import 'package:admin_v2/features/dashboard/domain/models/Ordergraph/orders_graph_response.dart';
import 'package:admin_v2/features/dashboard/domain/models/revenueGraph/revenue_graph_response.dart';
import 'package:admin_v2/features/dashboard/domain/repositories/dashboard_repositories.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
// import 'package:admin_v2/shared/utils/auth/auth_utils.dart';
// import 'package:admin_v2/shared/utils/result.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'dashboard_state.dart';

@injectable
class DashboardCubit extends Cubit<DashboardState> {
  final DashboardRepositories _dashboardRepositories;
  DashboardCubit(this._dashboardRepositories) : super(InitialDashBoardState());
  Future<void> loadRevenueGraph({bool isLoadMore = false}) async {
    if (!isLoadMore) {
      emit(
        state.copyWith(
          isRevenueGraph: ApiFetchStatus.loading,
          revenueReport: [],
        ),
      );
    }
    emit(state.copyWith(isRevenueGraph: ApiFetchStatus.loading));
    final res = await _dashboardRepositories.loadRevenueGraph(
      dateRangeId: 4,
      roleId: 1,
      storeArray: '18',
      userId: 1,
    );

    // log('Response data: ${res.data}');
    if (res.data != null) {
      final List<RevenueResponse> fetchedList = res.data!;

      final List<RevenueResponse> newList = isLoadMore
          ? <RevenueResponse>[...?state.revenueReport, ...fetchedList]
          : fetchedList;

      emit(
        state.copyWith(
          revenueReport: newList,
          isRevenueGraph: ApiFetchStatus.success,
        ),
      );
      return;
    }
    emit(state.copyWith(isRevenueGraph: ApiFetchStatus.failed));
  }

  Future<void> loadOrderGraph({bool isLoadMore = false}) async {
    if (!isLoadMore) {
      emit(
        state.copyWith(
          isOrdersReport: ApiFetchStatus.loading,
          ordersReport: [],
        ),
      );
    }
    emit(state.copyWith(isOrdersReport: ApiFetchStatus.loading));
    final res = await _dashboardRepositories.ordersGraph(
      dateRangeId: 1,
      roleId: 1,
      storeArray: 1055,
      userId: 1,
    );
    

    if (res.data != null) {
      final List<OrdersGraphResponse> fetchedList = res.data!;

      final List<OrdersGraphResponse> newList = isLoadMore
          ? <OrdersGraphResponse>[...?state.ordersReport, ...fetchedList]
          : fetchedList;

      emit(
        state.copyWith(
          ordersReport: newList,
          isOrdersReport: ApiFetchStatus.success,
        ),
      );
    }


    emit(state.copyWith(isOrdersReport: ApiFetchStatus.failed));
  }
}
