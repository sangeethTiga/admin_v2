import 'package:admin_v2/features/dashboard/domain/models/Ordergraph/orders_graph_response.dart';
import 'package:admin_v2/features/dashboard/domain/models/revenueGraph/revenue_graph_response.dart';
import 'package:admin_v2/features/dashboard/domain/repositories/dashboard_repositories.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final DashboardRepositories _dashboardRepositories;

  DashboardCubit(this._dashboardRepositories) : super(InitialDashBoardState());

  Future<void> ordersGraph({bool isLoadMore = false}) async {
    if (!isLoadMore) {
      emit(
        state.copyWith(
          isOrdersReport: ApiFetchStatus.loading,
          ordersReport: [],
        ),
      );
    }
    emit(state.copyWith(isOrdersReport: ApiFetchStatus.loading));
    final res = await _dashboardRepositories.ordersGraph();

    if (res.data != null) {
      final List<dynamic> rawList = res.data!;
      final List<OrdersGraphResponse> fetchedList = rawList.map((element) {
        if (element is OrdersGraphResponse) {
          return element;
        } else if (element is Map<String, dynamic>) {
          return OrdersGraphResponse.fromJson(element);
        } else {
          throw Exception(
            'Unexpected element type in loadCustomersReport: ${element.runtimeType}',
          );
        }
      }).toList();
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
