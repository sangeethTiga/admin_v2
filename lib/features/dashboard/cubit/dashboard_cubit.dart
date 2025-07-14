import 'dart:developer';

import 'package:admin_v2/features/common/domain/models/account/account_response.dart';
import 'package:admin_v2/features/common/domain/models/deliveryOption/option_response.dart';
import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/common/domain/repositores/common_repostories.dart';
import 'package:admin_v2/features/dashboard/domain/models/Ordergraph/orders_graph_response.dart';
import 'package:admin_v2/features/dashboard/domain/models/revenueGraph/revenue_graph_response.dart';
import 'package:admin_v2/features/dashboard/domain/repositories/dashboard_repositories.dart';
import 'package:admin_v2/features/report/domain/models/cashier/cashier_response.dart';
import 'package:admin_v2/features/report/domain/models/delivery_agent/delivery_agent_response.dart';
import 'package:admin_v2/features/report/domain/models/kiosk_response/kiosk_response.dart';
import 'package:admin_v2/features/report/domain/models/mostSellingProducts/most_selling_response.dart';
import 'package:admin_v2/features/report/domain/models/paymentMethod/payment_method_response.dart';
import 'package:admin_v2/features/report/domain/models/waiters_response/waiters_response.dart';
import 'package:admin_v2/features/report/domain/repositories/report_repositores.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/app/list/common_map.dart';
import 'package:admin_v2/shared/utils/auth/auth_utils.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'dashboard_state.dart';

@injectable
class DashboardCubit extends Cubit<DashboardState> {
  final DashboardRepositories _dashboardRepositories;
  final CommonRepostories _commonRepostories;
  final ReportRepositories _reportRepositories;
  DashboardCubit(
    this._commonRepostories,
    this._dashboardRepositories,
    this._reportRepositories,
  ) : super(InitialDashBoardState());
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
    final userAssign=await AuthUtils.instance.readUserData();

    final res = await _dashboardRepositories.loadRevenueGraph(
      dateRangeId: state.selectMonth?.id.toString()??" ",
      roleId:userAssign?.user?.userRoleId??1,
      storeArray: state.selectedStore!.storeId.toString(),

      userId: userAssign?.user?.companyUsersId??0,
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
    final userAssign=await AuthUtils.instance.readUserData();
    final res = await _dashboardRepositories.ordersGraph(
      dateRangeId: state.selectMonth?.id.toString() ?? '',
      roleId: userAssign?.user?.userRoleId??1,
      storeArray: state.selectedStore?.storeId ?? 0,
      userId: userAssign?.user?.companyUsersId??0,
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

  Future<void> monthSelection(ListOfDemo selectedMonth) async {
    emit(state.copyWith(selectMonth: selectedMonth));
  }

  Future<void> getDeliveryAgent() async {
    try {
      final res = await _reportRepositories.getDeliveryAgent(
        deliveryPartnerId: state.selectedDeliveryPartner ?? 0,
        storeId: state.selectedStore?.storeId ?? 0,
      );
      emit(state.copyWith(deliveryAgents: res.data));
    } catch (e, s) {
      log('$e', stackTrace: s);
    }
  }

  Future<void> selectedDeliveryAgent(DeliveryAgentResponse agent) async {
    emit(state.copyWith(selectedDeliveryAgent: agent));
  }

  Future<void> getPaymethod() async {
    try {
      final res = await _reportRepositories.getPaymethod();

      emit(state.copyWith(paymethodList: res.data));
    } catch (e, s) {
      log('$e', stackTrace: s);
    }
  }

  Future<void> selectedPayMethod(PaymentMethodResponse paymethod) async {
    emit(state.copyWith(selectedPaymethod: paymethod));
  }

  Future<void> getWaiters() async {
    try {
      final res = await _reportRepositories.getWaiters(
        storeId: state.selectedStore?.storeId ?? 0,
      );

      emit(state.copyWith(waitersList: res.data));
    } catch (e, s) {
      log('$e', stackTrace: s);
    }
  }

  Future<void> selectedWaiter(WaitersResponse waiter) async {
    emit(state.copyWith(selectedWaiter: waiter));
  }

  Future<void> getKiosk() async {
    try {
      final res = await _reportRepositories.getKiosk(
        storeId: state.selectedStore?.storeId ?? 0,
      );
      emit(state.copyWith(kioskList: res.data));
    } catch (e, s) {
      log('$e', stackTrace: s);
    }
  }

  Future<void> selectedKiosk(KioskResponse kiosk) async {
    emit(state.copyWith(selectedKiosk: kiosk));
  }

  Future<void> selctedShift(ListOfDemo shift) async {
    emit(state.copyWith(selectedShift: shift));
  }

  Future<void> getCashier() async {
    final res = await _reportRepositories.getCashier(
      storeId: state.selectedStore?.storeId ?? 0,
    );
    try {
      emit(state.copyWith(cashierList: res.data));
    } catch (e, s) {
      log('$e', stackTrace: s);
    }
  }

  Future<void> selectedCashier(CashierResponse cashier) async {
    emit(state.copyWith(selectedCashier: cashier));
  }

  Future<void> selectedGroupBy(Dates selectedGroupby) async {
    emit(state.copyWith(selectedGroupBy: selectedGroupby));
  }

  Future<void> changeFromDate(DateTime date) async {
    emit(state.copyWith(fromDate: date));
  }

  Future<void> changeToDate(DateTime date) async {
    emit(state.copyWith(toDate: date));
  }

  Future<void> clearSelectedCategories() async {
    emit(state.copyWith(selectedCategory: null));
  }

  Future<void> loadProductsCategory(int? storeId) async {
    try {
      emit(state.copyWith(apiFetchStatus: ApiFetchStatus.loading));
      final res = await _dashboardRepositories.loadProductsCategory(
        storeId: storeId ?? 0,
      );
      if (res.data != null && (res.data?.isNotEmpty ?? false)) {
        emit(
          state.copyWith(
            apiFetchStatus: ApiFetchStatus.success,
            sellingProductsReport: res.data,
            selectedProducts: res.data?.first,
          ),
        );
      } else {
        emit(
          state.copyWith(
            apiFetchStatus: ApiFetchStatus.failed,
            sellingProductsReport: [],
          ),
        );
      }
      emit(state.copyWith(apiFetchStatus: ApiFetchStatus.failed));
    } catch (e) {
      emit(state.copyWith(apiFetchStatus: ApiFetchStatus.failed));
    }
  }

  Future<void> selectCategory(MostSellingResponse category) async {
    emit(state.copyWith(selectedCategory: category));
  }

  Future<void> clearData() async {
    emit(
      state.copyWith(
        selectedWaiter: WaitersResponse(),
        selectedShift: ListOfDemo(),
        selectedCashier: CashierResponse(),
        selectedKiosk: KioskResponse(),
        selectMonth: durationMonths.first,
        selectedGroupBy: Dates(),
        selectedPaymethod: PaymentMethodResponse(),
      ),
    );
  }
    Future<void> orderOption(int? storeId, int? appTypeId) async {
    try {
      emit(state.copyWith(apiFetchStatus: ApiFetchStatus.loading));
      final res = await _commonRepostories.orderOption(
        storeId: storeId ?? 0,
        appTypeId: appTypeId ?? 0,
      );
      if (res.data != null) {
        emit(
          state.copyWith(
            apiFetchStatus: ApiFetchStatus.success,
            optionList: res.data,
            selectedOption: res.data?.first,
          ),
        );
      }
      emit(state.copyWith(apiFetchStatus: ApiFetchStatus.failed));
    } catch (e) {
      emit(state.copyWith(apiFetchStatus: ApiFetchStatus.failed));
    }
  }

  Future<void> selectedOption(OptionResponse options) async {
    emit(state.copyWith(selectedOption: options,),
    );
  }
}
