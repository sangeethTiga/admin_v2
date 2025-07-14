import 'dart:developer';

import 'package:admin_v2/features/orders/domain/models/order/order_response.dart';
import 'package:admin_v2/features/orders/domain/models/order_detail/order_detail_response.dart';
import 'package:admin_v2/features/orders/domain/models/order_request/order_request.dart';
import 'package:admin_v2/features/orders/domain/models/status/order_status_response.dart';
import 'package:admin_v2/features/orders/domain/repositories/order_repositories.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/utils/helper/helper.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'order_state.dart';

@injectable
class OrderCubit extends Cubit<OrderState> {
  final OrderRepositories _orderRepositories;
  OrderCubit(this._orderRepositories) : super(InitialOrderState());

  Future<void> orders({OrderRequest? req,bool? fromSerach}) async {
    try {
      emit(state.copyWith(isLoading: ApiFetchStatus.loading));



      final res = await _orderRepositories.orders(req: req ?? OrderRequest());
      if (res.data != null) {
        emit(
          state.copyWith(
            isLoading: ApiFetchStatus.success,
            orderList: res.data,
          ),
        );
      }
      emit(state.copyWith(isLoading: ApiFetchStatus.failed));
    } catch (e, s) {
      log("Error fetching orders: $e", stackTrace: s);
      emit(state.copyWith(isLoading: ApiFetchStatus.failed));
    }
  }

  Future<void> orderStatus() async {
    try {
      emit(state.copyWith(status: ApiFetchStatus.loading));
      final res = await _orderRepositories.orderStatus();
      if (res.data != null) {
        emit(
          state.copyWith(status: ApiFetchStatus.success, statusList: res.data),
        );
      }
      emit(state.copyWith(status: ApiFetchStatus.failed));
    } catch (e) {
      emit(state.copyWith(status: ApiFetchStatus.failed));
    }
  }

  Future<void> mapEventToState(final int statusIndex) async {
    List<int> updatedSelectedStatuses = List<int>.from(
      state.selectedStatuses ?? [],
    );
    if (updatedSelectedStatuses.contains(statusIndex)) {
      updatedSelectedStatuses.remove(statusIndex);
    } else {
      updatedSelectedStatuses.add(statusIndex);
    }
    emit(state.copyWith(selectedStatuses: updatedSelectedStatuses));
  }

  Future<void> ordersDatesEvent(final int id) async {
    List<int> updatedSelectedIds = List<int>.from(state.selectedIds ?? []);
    if (updatedSelectedIds.contains(id)) {
      updatedSelectedIds.remove(id);
    } else {
      updatedSelectedIds.add(id);
    }

    log("Give me ans =-=-=-=  ${updatedSelectedIds.length}");

    emit(state.copyWith(selectedIds: updatedSelectedIds));
  }

  Future<void> chnageFromDate(DateTime date) async {
    emit(state.copyWith(fromDate: date));
  }

  Future<void> chnageToDate(DateTime date) async {
    emit(state.copyWith(toDate: date));
  }

  Future<void> chnageStatus(OrderStatusResponse status) async {
    emit(state.copyWith(selectedOrder: status));
  }

  Future<void> orderDetail(int id) async {
    try {
      emit(state.copyWith(isLoading: ApiFetchStatus.loading));
      final res = await _orderRepositories.orderDetail(id);
      if (res.data != null) {
        emit(
          state.copyWith(
            isLoading: ApiFetchStatus.success,
            orderDetail: res.data,
          ),
        );
      }
      emit(state.copyWith(isLoading: ApiFetchStatus.failed));
    } catch (e, s) {
      log("Error fetching order detail: $e", stackTrace: s);
      emit(state.copyWith(isLoading: ApiFetchStatus.failed));
    }
  }

  void applyFiltersToData(Map<String, List<int>> filters, int? storeId) {
    print('Applying filters to data...');
    print('Received filters: $filters');

    int? selectedPaymentType = filters['Payment Type']?.isNotEmpty == true
        ? filters['Payment Type']!.first
        : null;

    int? selectedWaiter = filters['Waiters']?.isNotEmpty == true
        ? filters['Waiters']!.first
        : null;

    int? selectedKiosk = filters['KIOSK']?.isNotEmpty == true
        ? filters['KIOSK']!.first
        : null;

    int? selectedCashier = filters['CASHIER']?.isNotEmpty == true
        ? filters['CASHIER']!.first
        : null;

    // print('Selected Payment Type ID: $selectedPaymentType');
    // print('Selected Waiter ID: $selectedWaiter');
    // print('Selected Kiosk ID: $selectedKiosk');
    // print('Selected Cashier ID: $selectedCashier');

    orders(
      req: OrderRequest(
        payMethodId: selectedPaymentType,
        waiterId: selectedWaiter,
        kioskId: selectedKiosk,
        cashierId: selectedCashier,
        version: "v2",
        fromDate: parsedDate(state.fromDate ?? DateTime.now()),
        toDate: parsedDate(state.toDate ?? DateTime.now()),
        storeId: storeId,
      ),
    );
  }
}
