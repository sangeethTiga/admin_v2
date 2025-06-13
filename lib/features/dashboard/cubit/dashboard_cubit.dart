import 'dart:math';

import 'package:admin_v2/features/dashboard/domain/models/revenueGraph/revenue_graph_response.dart';
import 'package:admin_v2/features/dashboard/domain/repositories/dashboard_repositories.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
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
     dateRangeId: 1,
     roleId: 1,
     storeArray: 1043,
     userId: 1
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
    }
    emit(state.copyWith(isRevenueGraph: ApiFetchStatus.failed));
  }

 
}
