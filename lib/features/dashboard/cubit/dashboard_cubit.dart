import 'package:admin_v2/features/common/domain/models/account/account_response.dart';
import 'package:admin_v2/features/common/domain/models/deliveryOption/option_response.dart';
import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/common/domain/repositores/common_repostories.dart';
import 'package:admin_v2/features/dashboard/domain/models/Ordergraph/orders_graph_response.dart';
import 'package:admin_v2/features/dashboard/domain/models/revenueGraph/revenue_graph_response.dart';
import 'package:admin_v2/features/dashboard/domain/repositories/dashboard_repositories.dart';
import 'package:admin_v2/features/report/domain/models/mostSellingProducts/most_selling_response.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/app/list/common_map.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
part 'dashboard_state.dart';

@injectable
class DashboardCubit extends Cubit<DashboardState> {
  final DashboardRepositories _dashboardRepositories;
  final CommonRepostories _commonRepostories;
  DashboardCubit(this._commonRepostories,this._dashboardRepositories) : super(InitialDashBoardState());
  Future<void> store() async {
    try {
      emit(state.copyWith(apiFetchStatus: ApiFetchStatus.loading));
      final res = await _commonRepostories.storeList();

      if (res.data != null) {
        emit(
          state.copyWith(
            apiFetchStatus: ApiFetchStatus.success,
            storeList: res.data,
            selectedStore: res.data?.first,
            selectDate: custDate.first,
          ),
        );
      }
      emit(state.copyWith(apiFetchStatus: ApiFetchStatus.failed));
    } catch (e) {
      emit(state.copyWith(apiFetchStatus: ApiFetchStatus.failed));
    }
  }
  
  Future<void> account() async {
    try {
      emit(state.copyWith(apiFetchStatus: ApiFetchStatus.loading));
      final res = await _commonRepostories.account();
      if (res.data != null) {
        emit(
          state.copyWith(
            apiFetchStatus: ApiFetchStatus.success,
            accountList: res.data,
            selectedAccount: res.data?.first,
          ),
        );
      }
      emit(state.copyWith(apiFetchStatus: ApiFetchStatus.failed));
    } catch (e) {
      emit(state.copyWith(apiFetchStatus: ApiFetchStatus.failed));
    }
  }
Future<void> selectedAccount(AccountDataResponse store) async {
    emit(state.copyWith(selectedAccount: store));
  }
  Future<void> selectedStore(StoreResponse store) async {
    emit(state.copyWith(selectedStore: store));
  }

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
      dateRangeId: state.selectDate!.id.toString(),
      roleId: 1,
      storeArray: state.selectedStore!.storeId.toString(),

      userId: 1,
    );

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
    // if (!isLoadMore) {
    //   emit(
    //     state.copyWith(
    //       isOrdersReport: ApiFetchStatus.loading,
    //       ordersReport: [],
    //     ),
    //   );
    // }
    emit(state.copyWith(isOrdersReport: ApiFetchStatus.loading));
    final res = await _dashboardRepositories.ordersGraph(
      dateRangeId: state.selectDate !.id.toString(),
      roleId: 1,
      storeArray: state.selectedStore?.storeId ?? 0,
      userId: 1,
    );
    if (res.data != null) {
      // final List<OrdersGraphResponse> fetchedList = res.data!;

      // final List<OrdersGraphResponse> newList = isLoadMore
      //     ? <OrdersGraphResponse>[...?state.ordersReport, ...fetchedList]
      //     : fetchedList;

      emit(
        state.copyWith(
          ordersReport: res.data,
          isOrdersReport: ApiFetchStatus.success,
        ),
      );
    }

    emit(state.copyWith(isOrdersReport: ApiFetchStatus.failed));
  }
}
