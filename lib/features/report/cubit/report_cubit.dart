import 'dart:developer';

import 'package:admin_v2/features/report/domain/models/categorysales/categorySales_response.dart';
import 'package:admin_v2/features/report/domain/models/customers/customers_report_response.dart';
import 'package:admin_v2/features/report/domain/models/delivery_charge/delivery_charge_response.dart';
import 'package:admin_v2/features/report/domain/models/expense/expense_report_response.dart';
import 'package:admin_v2/features/report/domain/models/profit/profitloss_response.dart';
import 'package:admin_v2/features/report/domain/models/revenue/revenue_report_response.dart';
import 'package:admin_v2/features/report/domain/models/sales/sales_report_response.dart';
import 'package:admin_v2/features/report/domain/models/usershift/usershift_report_response.dart';
import 'package:admin_v2/features/report/domain/repositories/report_repositores.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/app/list/common_map.dart';
import 'package:admin_v2/shared/app/list/helper.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'report_state.dart';

@injectable
class ReportCubit extends Cubit<ReportState> {
  final ReportRepositories _reportRepositories;
  ReportCubit(this._reportRepositories) : super(InitialReportState());

  Future<void> loadSalesReport({
    int? storeId,
    String? type,
    String? duration,
    String? paymentMethod,
    String? waiter,
    String? shift,
    String? cashier,
    String? status,
    String? kiosks,
    String? cashe,
    String? groupBy,
    String? deliveryPartner,
    String? isDayClosed,
    String? fromDate,
    String? toDate,
  }) async {
    emit(state.copyWith(isSaleReport: ApiFetchStatus.loading));
    final res = await _reportRepositories.loadSalesReport(
      storeId: storeId ?? 0,
      type: type ?? '',
      duration: duration ?? '',
      paymentMethod: paymentMethod ?? '',
      waiter: waiter ?? '',
      shift: shift ?? '',
      cashier: cashier ?? '',
      status: status ?? '',
      kiosks: kiosks ?? '',
      cashe: cashe ?? '',
      groupBy: groupBy ?? '',
      deliveryPartner: deliveryPartner ?? '',
      isDayClosed: isDayClosed ?? '',
      fromDate: parsedDate(state.fromDate ?? DateTime.now()),
      toDate: parsedDate(state.toDate ?? DateTime.now()),
    );
    if (res.data != null) {
      emit(
        state.copyWith(
          salesReport: res.data,
          isSaleReport: ApiFetchStatus.success,
        ),
      );
    }
    emit(state.copyWith(isSaleReport: ApiFetchStatus.failed));
  }

  Future<void> changeFromDate(DateTime date) async {
    emit(state.copyWith(fromDate: date));
  }

  Future<void> changeToDate(DateTime date) async {
    emit(state.copyWith(toDate: date));
  }

  Future<void> changeMethod(ListOfDemo method) async {
    emit(state.copyWith(selectedMethod: method));
  }

  Future<void> loadReveneueReport({
    int? storeId,

    String? fromDate,
    String? toDate,
    int page = 0,
    int limit = 20,
    bool isLoadMore = false,
  }) async {
    if (!isLoadMore) {
      emit(
        state.copyWith(isSaleReport: ApiFetchStatus.loading, revenueReport: []),
      );
    }
    final int offset = page * limit;

    final res = await _reportRepositories.loadRevenueReport(
      storeId: storeId ?? 0,
      fromDate: parsedDate(state.fromDate ?? DateTime.now()),
      toDate: parsedDate(state.toDate ?? DateTime.now()),
      pageFirstResult: offset,
      resultPerPage: limit,
    );
    log("$offset $limit");
    if (res.data != null) {
      final List<dynamic> rawList = res.data!;
      final List<ReveneReportResponse> fetchedList = rawList.map((element) {
        if (element is ReveneReportResponse) {
          return element;
        } else if (element is Map<String, dynamic>) {
          return ReveneReportResponse.fromJson(element);
        } else {
          throw Exception(
            'Unexpected element type in loadRevenueReport: ${element.runtimeType}',
          );
        }
      }).toList();

      final List<ReveneReportResponse> newList = isLoadMore
          ? <ReveneReportResponse>[...?state.revenueReport, ...fetchedList]
          : fetchedList;
      emit(
        state.copyWith(
          revenueReport: newList,
          isSaleReport: ApiFetchStatus.success,
        ),
      );
    }
    emit(state.copyWith(isSaleReport: ApiFetchStatus.failed));
  }

  Future<void> loadExpenseReport({
    int? storeId,

    String? fromDate,
    String? toDate,
    int page = 0,
    int limit = 20,
    bool isLoadMore = false,
    required int accountId,
  }) async {
    if (!isLoadMore) {
      emit(
        state.copyWith(isSaleReport: ApiFetchStatus.loading, revenueReport: []),
      );
    }
    final int offset = page * limit;

    final res = await _reportRepositories.loadExpenseReport(
      storeId: storeId ?? 0,
      fromDate: parsedDate(state.fromDate ?? DateTime.now()),
      toDate: parsedDate(state.toDate ?? DateTime.now()),
      pageFirstResult: offset,
      resultPerPage: limit,
      accountId: accountId,
    );
    log("$offset $limit");
    if (res.data != null) {
      final List<dynamic> rawList = res.data!;
      final List<ExpenseReportResponse> fetchedList = rawList.map((element) {
        if (element is ExpenseReportResponse) {
          return element;
        } else if (element is Map<String, dynamic>) {
          return ExpenseReportResponse.fromJson(element);
        } else {
          throw Exception(
            'Unexpected element type in loadRevenueReport: ${element.runtimeType}',
          );
        }
      }).toList();

      final List<ExpenseReportResponse> newList = isLoadMore
          ? <ExpenseReportResponse>[...?state.expenseReport, ...fetchedList]
          : fetchedList;

      emit(
        state.copyWith(
          expenseReport: newList,
          isSaleReport: ApiFetchStatus.success,
        ),
      );
    }
    emit(state.copyWith(isSaleReport: ApiFetchStatus.failed));
  }

  Future<void> loadProfitAndLoss({
    int? storeId,
    String? fromDate,
    String? toDate,
  }) async {
    emit(state.copyWith(isSaleReport: ApiFetchStatus.loading));
    final res = await _reportRepositories.loadProfitAndLoss(
      storeId: storeId ?? 0,

      fromDate: parsedDate(state.fromDate ?? DateTime.now()),
      toDate: parsedDate(state.toDate ?? DateTime.now()),
    );

    if (res.data != null) {
      emit(
        state.copyWith(
          profitlossReport: res.data,
          isSaleReport: ApiFetchStatus.success,
        ),
      );
    }
    emit(state.copyWith(isSaleReport: ApiFetchStatus.failed));
  }

  Future<void> loadDeliveryChargeReport({
    int? storeId,
    String? fromDate,
    String? toDate,
    int pageSize = 0,

    int offset = 0,
    bool isLoadMore = false,
    int? accountId,
  }) async {
    if (!isLoadMore) {
      emit(
        state.copyWith(
          isDeliverychargeReport: ApiFetchStatus.loading,
          deliverychargeResponse: [],
        ),
      );
    }
    // final int offset = pageSize * limit;
    final res = await _reportRepositories.loadDeliveryCharge(
      pageSize: pageSize,
      offset: offset,
      storeId: storeId ?? 0,
      fromDate: parsedDate(state.fromDate ?? DateTime.now()),
      toDate: parsedDate(state.toDate ?? DateTime.now()),
    );

    log('Response data: ${res.data}');
    if (res.data != null) {
      final List<dynamic> rawList = res.data!;
      final List<CustomersResponse> fetchedList = rawList.map((element) {
        if (element is CustomersResponse) {
          return element;
        } else if (element is Map<String, dynamic>) {
          return CustomersResponse.fromJson(element);
        } else {
          throw Exception(
            'Unexpected element type in loadCustomersReport: ${element.runtimeType}',
          );
        }
      }).toList();

      log('ressssss99-=-=-=-=-=-${res.data}');
      if (res.data != null) {
        final List<dynamic> rawList = res.data!;
        final List<DeliveryChargeResponse> fetchedList = rawList.map((element) {
          if (element is DeliveryChargeResponse) {
            return element;
          } else if (element is Map<String, dynamic>) {
            return DeliveryChargeResponse.fromJson(element);
          } else {
            throw Exception(
              'Unexpected element type in loadDeliveryChargeReport: ${element.runtimeType}',
            );
          }
        }).toList();

        final List<DeliveryChargeResponse> newList = isLoadMore
            ? <DeliveryChargeResponse>[
                ...?state.deliverychargeReport,
                ...fetchedList,
              ]
            : fetchedList;
        log('neww-=-=-=-=-$newList');
        emit(
          state.copyWith(
            deliverychargeResponse: newList,
            isDeliverychargeReport: ApiFetchStatus.success,
          ),
        );
      }
      emit(state.copyWith(isDeliverychargeReport: ApiFetchStatus.failed));
    }
  }

  Future<void> loadCustomersReport({
    int? storeId,
    String? fromDate,
    String? toDate,

    int? accountId,

    int page = 0,
    int limit = 20,
    bool isLoadMore = false,
  }) async {
    if (!isLoadMore) {
      emit(
        state.copyWith(
          isCustomersReport: ApiFetchStatus.loading,
          customersReport: [],
        ),
      );
    }
    emit(state.copyWith(isCustomersReport: ApiFetchStatus.loading));
    final res = await _reportRepositories.loadCustomersReport(
      filterId: 1,
      filterValue: '',
      pageFirstResult: state.currentPage,
      resultPerPage: state.pageSize,
      storeId: storeId ?? 0,
      fromDate: parsedDate(state.fromDate ?? DateTime.now()),
      toDate: parsedDate(state.toDate ?? DateTime.now()),
    );

    log('Response data: ${res.data}');
    if (res.data != null) {
      final List<dynamic> rawList = res.data!;
      final List<CustomersResponse> fetchedList = rawList.map((element) {
        if (element is CustomersResponse) {
          return element;
        } else if (element is Map<String, dynamic>) {
          return CustomersResponse.fromJson(element);
        } else {
          throw Exception(
            'Unexpected element type in loadCustomersReport: ${element.runtimeType}',
          );
        }
      }).toList();
      final List<CustomersResponse> newList = isLoadMore
          ? <CustomersResponse>[...?state.customersReport, ...fetchedList]
          : fetchedList;

      emit(
        state.copyWith(
          customersReport: newList,
          isCustomersReport: ApiFetchStatus.success,
        ),
      );
    }
    emit(state.copyWith(isCustomersReport: ApiFetchStatus.failed));
  }

  Future<void> loadCategorySalesReport({
    int? storeId,
    String? fromDate,
    String? toDate,
    // int page = 0,
    // int limit = 20,
    bool isLoadMore = false,
  }) async {
    if (!isLoadMore) {
      emit(
        state.copyWith(
          isCategorySales: ApiFetchStatus.loading,
          salesReport: [],
        ),
      );
    }
    // final int offset = page * limit;

    final res = await _reportRepositories.loadCategorySalesReport(
      storeId: storeId ?? 0,
      fromDate: parsedDate(state.fromDate ?? DateTime.now()),
      toDate: parsedDate(state.toDate ?? DateTime.now()),
    );
    // log("$offset $limit");
    if (res.data != null) {
      final List<dynamic> rawList = res.data!;
      final List<CategorySalesResponse> fetchedList = rawList.map((element) {
        if (element is CategorySalesResponse) {
          return element;
        } else if (element is Map<String, dynamic>) {
          return CategorySalesResponse.fromJson(element);
        } else {
          throw Exception(
            'Unexpected element type in loadCategorySalesReport: ${element.runtimeType}',
          );
        }
      }).toList();

      final List<CategorySalesResponse> newList = isLoadMore
          ? <CategorySalesResponse>[...?state.categorySales, ...fetchedList]
          : fetchedList;
      emit(
        state.copyWith(
          categorySales: newList,
          isCategorySales: ApiFetchStatus.success,
        ),
      );
    }
    emit(state.copyWith(isCategorySales: ApiFetchStatus.failed));
  }

  Future<void> loadParcelCharge({
    int? storeId,
    String? fromDate,
    String? toDate,

    int? accountId,

    int page = 0,
    int limit = 20,
    bool isLoadMore = false,
  }) async {
    if (!isLoadMore) {
      emit(
        state.copyWith(
          isCustomersReport: ApiFetchStatus.loading,
          customersReport: [],
        ),
      );
    }
    emit(state.copyWith(isCustomersReport: ApiFetchStatus.loading));
    final res = await _reportRepositories.loadCustomersReport(
      filterId: 1,
      filterValue: '',
      pageFirstResult: state.currentPage,
      resultPerPage: state.pageSize,
      storeId: storeId ?? 0,
      fromDate: parsedDate(state.fromDate ?? DateTime.now()),
      toDate: parsedDate(state.toDate ?? DateTime.now()),
    );

    log('Response data: ${res.data}');
    if (res.data != null) {
      final List<dynamic> rawList = res.data!;
      final List<CustomersResponse> fetchedList = rawList.map((element) {
        if (element is CustomersResponse) {
          return element;
        } else if (element is Map<String, dynamic>) {
          return CustomersResponse.fromJson(element);
        } else {
          throw Exception(
            'Unexpected element type in loadCustomersReport: ${element.runtimeType}',
          );
        }
      }).toList();
      final List<CustomersResponse> newList = isLoadMore
          ? <CustomersResponse>[...?state.customersReport, ...fetchedList]
          : fetchedList;

      emit(
        state.copyWith(
          customersReport: newList,
          isCustomersReport: ApiFetchStatus.success,
        ),
      );
    }
    emit(state.copyWith(isCustomersReport: ApiFetchStatus.failed));
  }
  


  Future<void> loadUserShiftReport({
    int? storeId,
    String? fromDate,
    String? toDate,
      int page = 0,
    int limit = 20,
    bool isLoadMore = false,
  }) async {
    if (!isLoadMore) {
      emit(
        state.copyWith(
          isUserShiftReport: ApiFetchStatus.loading,
          userShiftReport: [],
        ),
      );
    }
    final int offset = page * limit;
    final res = await _reportRepositories.loadUserShiftReport(
      storeId: storeId ?? 0,
      fromDate: parsedDate(state.fromDate ?? DateTime.now()),
      toDate: parsedDate(state.toDate ?? DateTime.now()),
      pageFirstResult: offset,
      resultPerPage: limit,
    );



    if (res.data != null) {
      final List<dynamic> rawList = res.data!;
      final List<UserShiftReportResponse> fetchedList = rawList.map((element) {
        if (element is UserShiftReportResponse) {
          return element;
        } else if (element is Map<String, dynamic>) {
          return UserShiftReportResponse.fromJson(element);
        } else {
          throw Exception(
            'Unexpected element type in loadUserShiftReport: ${element.runtimeType}',
          );
        }
      }).toList();

      final List<UserShiftReportResponse> newList = isLoadMore
          ? <UserShiftReportResponse>[...?state.userShiftReport, ...fetchedList]
          : fetchedList;

      emit(
        state.copyWith(
          userShiftReport: newList,
          isUserShiftReport: ApiFetchStatus.success,
        ),
      );
    }
    emit(state.copyWith(isUserShiftReport: ApiFetchStatus.failed));
  }
}
