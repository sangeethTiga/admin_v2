import 'dart:developer';

import 'package:admin_v2/features/common/domain/models/deliveryOption/option_response.dart';
import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/report/domain/models/categorysales/categorySales_response.dart';
import 'package:admin_v2/features/report/domain/models/cheque/chequeStatus_response.dart';
import 'package:admin_v2/features/report/domain/models/cheque/cheque_response.dart';
import 'package:admin_v2/features/report/domain/models/createOffer/create_offer_response.dart';
import 'package:admin_v2/features/report/domain/models/custSearch/custSearch_response.dart';
import 'package:admin_v2/features/report/domain/models/customers/customers_report_response.dart';
import 'package:admin_v2/features/report/domain/models/day_summary/day_summary_response.dart'
    hide DeliveryPartner;
import 'package:admin_v2/features/report/domain/models/delivery_charge/delivery_charge_response.dart';
import 'package:admin_v2/features/report/domain/models/editoffer/edit_offer_response.dart';
import 'package:admin_v2/features/report/domain/models/expense/expense_report_response.dart';
import 'package:admin_v2/features/report/domain/models/mess/mess_report_response.dart';
import 'package:admin_v2/features/report/domain/models/mostSellingProducts/most_selling_response.dart';
import 'package:admin_v2/features/report/domain/models/mostSellingProducts/products_response.dart';
import 'package:admin_v2/features/report/domain/models/offers/offers_response.dart';
import 'package:admin_v2/features/report/domain/models/parcel/parcel_charge_response.dart';
import 'package:admin_v2/features/report/domain/models/product_offers/product_offers_response.dart';
import 'package:admin_v2/features/report/domain/models/productname/product_name_response.dart';
import 'package:admin_v2/features/report/domain/models/profit/profitloss_response.dart';
import 'package:admin_v2/features/report/domain/models/purchase/purchase_response.dart';
import 'package:admin_v2/features/report/domain/models/revenue/revenue_report_response.dart';
import 'package:admin_v2/features/report/domain/models/sale_deals/sale_on_deals_response.dart';
import 'package:admin_v2/features/report/domain/models/sales/sales_report_response.dart';
import 'package:admin_v2/features/report/domain/models/specialOffer/special_offer_response.dart';
import 'package:admin_v2/features/report/domain/models/suppliers/suppliers_response.dart';
import 'package:admin_v2/features/report/domain/models/tax/tax_response.dart';
import 'package:admin_v2/features/report/domain/models/topStores/topStores_response.dart';
import 'package:admin_v2/features/report/domain/models/usershift/usershift_report_response.dart';
import 'package:admin_v2/features/report/domain/repositories/report_repositores.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/app/list/common_map.dart';
import 'package:admin_v2/shared/utils/helper/helper.dart';
import 'package:admin_v2/shared/widgets/date_picker/date_picker_container.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'report_state.dart';

@injectable
class ReportCubit extends Cubit<ReportState> {
  final ReportRepositories _reportRepositories;
  final DashboardCubit _dashboardCubit;
  static const int _itemsPerPage = 10;

  ReportCubit(this._reportRepositories, this._dashboardCubit)
    : super(InitialReportState());

  Future<void> loadSalesReport({
    int? selectedStoreId,
    String? fromDate,
    String? toDate,
    String? selectedDeliveryAgentId,
    String? selectedPaymentMethodId,
    String? selectedWaiterId,
    String? selectedShiftId,
    bool? isDayClosed,
    String? selectedCashierId,
    String? selectedKIOSK,
    String? selectedGroupBy,

    int? selectedDuration,
  }) async {
    emit(state.copyWith(isSaleReport: ApiFetchStatus.loading));
    final res = await _reportRepositories.loadSalesReport(
      selectedStoreId: selectedStoreId ?? 0,
      selectedDuration: selectedDuration ?? 0,
      selectedPaymentMethodId: selectedPaymentMethodId ?? '',
      selectedWaiterId: selectedWaiterId ?? "",
      selectedShiftId: selectedShiftId ?? '',
      selectedCashierId: selectedCashierId ?? "",
      selectedKIOSK: selectedKIOSK ?? '',
      selectedGroupBy: selectedGroupBy ?? '',
      selectedDeliveryAgentId: selectedDeliveryAgentId ?? '',
      isDayClosed: isDayClosed,
      fromDate: fromDate ?? '',
      toDate: toDate ?? '',
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

  Future<void> changeStore(StoreResponse res) async {
    emit(state.copyWith(selectedStore: res));
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
    int page = 1,
    int limit = 20,
    bool isLoadMore = false,
  }) async {
    try {
      if (isLoadMore) {
        emit(state.copyWith(isLoadingMore: true));
      } else {
        emit(
          state.copyWith(
            isSaleReport: ApiFetchStatus.loading,
            revenueReport: [],
            currentPage: 0,
            hasMoreData: false,
            isLoadingMore: false,
          ),
        );
      }
      // if (!isLoadMore) {
      //   emit(
      //     state.copyWith(
      //       isSaleReport: ApiFetchStatus.loading,
      //       revenueReport: [],
      //       currentPage: 0,
      //       hasMoreData: true,
      //     ),
      //   );
      // }
      // final int offset = page * limit;
      final currentPage = isLoadMore ? (state.currentPage) + limit : 1;

      final res = await _reportRepositories.loadRevenueReport(
        storeId: storeId ?? 0,
        fromDate: parsedDate(state.fromDate ?? DateTime.now()),
        toDate: parsedDate(state.toDate ?? DateTime.now()),
        pageFirstResult: currentPage,
        resultPerPage: limit,
      );
      if (res.data != null && (res.data?.isNotEmpty ?? false)) {
        List<ReveneReportResponse> updatedList;
        if (isLoadMore) {
          updatedList = [...(state.revenueReport ?? []), ...res.data!];
        } else {
          updatedList = res.data!;
        }
        final hasMoreData = res.data!.length >= limit;
        emit(
          state.copyWith(
            revenueReport: updatedList,
            isSaleReport: ApiFetchStatus.success,
            currentPage: currentPage,
            hasMoreData: hasMoreData,
            isLoadingMore: false,
          ),
        );
      } else {
        emit(
          state.copyWith(
            isSaleReport: ApiFetchStatus.failed,
            isLoadingMore: false,
            hasMoreData: false,
          ),
        );
      }
    } catch (error) {
      log('Error loading customers report: $error');
      emit(
        state.copyWith(
          isSaleReport: ApiFetchStatus.failed,
          isLoadingMore: false,
          hasMoreData: false,
        ),
      );
      // if (res.data != null) {
      //   emit(state.copyWith(isLoadingMore: true));
      // } else {
      //   final List<dynamic> rawList = res.data!;
      //   final List<ReveneReportResponse> fetchedList = rawList.map((element) {
      //     if (element is ReveneReportResponse) {
      //       return element;
      //     } else if (element is Map<String, dynamic>) {
      //       return ReveneReportResponse.fromJson(element);
      //     } else {
      //       throw Exception(
      //         'Unexpected element type in loadRevenueReport: ${element.runtimeType}',
      //       );
      //     }
      //   }).toList();
      //   final newData = List<ReveneReportResponse>.from(res.data!);
      //   // final List<ReveneReportResponse> newList = isLoadMore
      //   //     ? <ReveneReportResponse>[...?state.revenueReport, ...fetchedList]
      //   //     : fetchedList;
      //   final hasMore = newData.length >= _itemsPerPage;
      //   emit(
      //     state.copyWith(
      //       revenueReport: newData,
      //       isSaleReport: ApiFetchStatus.success,
      //       currentPage: 0,
      //       hasMoreData: hasMore,
      //       totalItems: newData.length,
      //     ),
      //   );
      // }
      // emit(state.copyWith(isSaleReport: ApiFetchStatus.failed));
    }
  }
  // Future<void> loadMoreProducts() async {
  //   if (state.isLoadingMore ?? false || !(state.hasMoreData ?? false)) return;
  //   try {
  //     emit(state.copyWith(isLoadingMore: true));
  //     final nextPage = (state.currentPage ?? 0) + 1;
  //     final pageFirstResult = nextPage * _itemsPerPage;
  //     final res = await _reportRepositories.loadRevenueReport(
  //       pageFirstResult: pageFirstResult,
  //       storeId: state.lastStoreId!,
  //       fromDate: '',
  //       toDate: '',
  //       resultPerPage: _itemsPerPage,
  //     );
  //     if (res.data != null && res.data!.isNotEmpty) {
  //       final newProducts = List<ReveneReportResponse>.from(res.data!);
  //       final allProducts = List<ReveneReportResponse>.from(
  //         state.revenueReport ?? [],
  //       );
  //       allProducts.addAll(newProducts);

  //       final hasMore = newProducts.length >= _itemsPerPage;
  //       emit(
  //         state.copyWith(
  //           isLoadingMore: false,
  //           revenueReport: allProducts,

  //           currentPage: nextPage,
  //           hasMoreData: hasMore,
  //           totalItems: allProducts.length,
  //         ),
  //       );
  //     } else {
  //       emit(state.copyWith(isLoadingMore: false, hasMoreData: false));
  //     }
  //   } catch (e, s) {
  //     log("Error loading more products: $e", stackTrace: s);
  //     emit(state.copyWith(isLoadingMore: false));
  //   }
  // }

  Future<void> loadExpenseReport({
    int? storeId,

    String? fromDate,
    String? toDate,
    int page = 1,
    int limit = 20,
    bool isLoadMore = false,
    required int accountId,
  }) async {
    try {
      if (isLoadMore) {
        emit(state.copyWith(isLoadingMore: true));
      } else {
        emit(
          state.copyWith(
            isSaleReport: ApiFetchStatus.loading,
            expenseReport: [],
            currentPage: 0,
            hasMoreData: false,
            isLoadingMore: false,
          ),
        );
      }

      final currentPage = isLoadMore ? (state.currentPage) + limit : 1;

      // if (!isLoadMore) {
      //   emit(
      //     state.copyWith(isSaleReport: ApiFetchStatus.loading, revenueReport: []),
      //   );
      // }
      // final int offset = page * limit;

      final res = await _reportRepositories.loadExpenseReport(
        storeId: storeId ?? 0,
        fromDate: parsedDate(state.fromDate ?? DateTime.now()),
        toDate: parsedDate(state.toDate ?? DateTime.now()),
        pageFirstResult: currentPage,
        resultPerPage: limit,
        accountId: accountId,
      );
      if (res.data != null && (res.data?.isNotEmpty ?? false)) {
        List<ExpenseReportResponse> updatedList;
        if (isLoadMore) {
          updatedList = [...(state.expenseReport ?? []), ...res.data!];
        } else {
          updatedList = res.data!;
        }
        final hasMoreData = res.data!.length >= limit;
        emit(
          state.copyWith(
            expenseReport: updatedList,
            isSaleReport: ApiFetchStatus.success,
            currentPage: currentPage,
            hasMoreData: hasMoreData,
            isLoadingMore: false,
          ),
        );
      } else {
        emit(
          state.copyWith(
            isSaleReport: ApiFetchStatus.failed,
            isLoadingMore: false,
            hasMoreData: false,
          ),
        );
      }
    } catch (error) {
      log('Error loading customers report: $error');
      emit(
        state.copyWith(
          isSaleReport: ApiFetchStatus.failed,
          isLoadingMore: false,
          hasMoreData: false,
        ),
      );
    }
    // if (res.data != null) {
    //   final List<dynamic> rawList = res.data!;
    //   final List<ExpenseReportResponse> fetchedList = rawList.map((element) {
    //     if (element is ExpenseReportResponse) {
    //       return element;
    //     } else if (element is Map<String, dynamic>) {
    //       return ExpenseReportResponse.fromJson(element);
    //     } else {
    //       throw Exception(
    //         'Unexpected element type in loadRevenueReport: ${element.runtimeType}',
    //       );
    //     }
    //   }).toList();

    //   final List<ExpenseReportResponse> newList = isLoadMore
    //       ? <ExpenseReportResponse>[...?state.expenseReport, ...fetchedList]
    //       : fetchedList;

    //   emit(
    //     state.copyWith(
    //       expenseReport: newList,
    //       isSaleReport: ApiFetchStatus.success,
    //     ),
    //   );
    // }
    // emit(state.copyWith(isSaleReport: ApiFetchStatus.failed));
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
    log('-=-=-=-=-=$res');

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
    int page = 1,
    int limit = 20,

    bool isLoadMore = false,
    int? accountId,
  }) async {
    try {
      if (isLoadMore) {
        emit(state.copyWith(isLoadingMore: true));
      } else {
        emit(
          state.copyWith(
            isDeliverychargeReport: ApiFetchStatus.loading,
            deliverychargeReport: [],
            currentPage: 1,
            hasMoreData: false,
            isLoadingMore: false,
          ),
        );
      }

      //final currentPage = isLoadMore ? (state.currentPage) + limit : 1;
      final pageToUse = isLoadMore ? state.currentPage + 1 : 1;
      final offset = (pageToUse - 1) * limit;

      final res = await _reportRepositories.loadDeliveryCharge(
        storeId: storeId ?? 0,

        resultPerPage: limit,
        pageFirstResult: offset,
        fromDate: parsedDate(state.fromDate ?? DateTime.now()),
        toDate: parsedDate(state.toDate ?? DateTime.now()),
      );

      log('Response data: ${res.data}');

      if (res.data != null && (res.data?.isNotEmpty ?? false)) {
        List<DeliveryChargeResponse> updatedList;
        if (isLoadMore) {
          updatedList = [...(state.deliverychargeReport ?? []), ...res.data!];
        } else {
          updatedList = res.data!;
        }
        final hasMoreData = res.data!.length >= limit;

        emit(
          state.copyWith(
            deliverychargeReport: updatedList,
            isDeliverychargeReport: ApiFetchStatus.success,
            currentPage: pageToUse,
            hasMoreData: hasMoreData,
            isLoadingMore: false,
          ),
        );
      } else {
        emit(
          state.copyWith(
            isDeliverychargeReport: ApiFetchStatus.success,
            isLoadingMore: false,
            hasMoreData: false,
          ),
        );
      }
    } catch (error) {
      log('Error loading customers report: $error');
      emit(
        state.copyWith(
          isDeliverychargeReport: ApiFetchStatus.failed,
          isLoadingMore: false,
          hasMoreData: false,
        ),
      );
    }
    // if (res.data != null) {
    //   if (res.data != null) {
    //     final List<DeliveryChargeResponse> fetchedList = res.data!;

    //     final List<DeliveryChargeResponse> newList = isLoadMore
    //         ? <DeliveryChargeResponse>[
    //             ...?state.deliverychargeReport,
    //             ...fetchedList,
    //           ]
    //         : fetchedList;
    //     log('neww-=-=-=-=-$newList');
    //     emit(
    //       state.copyWith(
    //         deliverychargeResponse: newList,
    //         isDeliverychargeReport: ApiFetchStatus.success,
    //       ),
    //     );
    //   } else {
    //     emit(state.copyWith(isDeliverychargeReport: ApiFetchStatus.failed));
    //   }
    // }
  }

  Future<void> loadCustomersReport({
    int? storeId,
    String? fromDate,
    String? toDate,
    int? accountId,
    int page = 1,
    int limit = 20,
    bool isLoadMore = false,
  }) async {
    try {
      if (isLoadMore) {
        emit(state.copyWith(isLoadingMore: true));
      } else {
        emit(
          state.copyWith(
            isCustomersReport: ApiFetchStatus.loading,
            customersReport: [],
            currentPage: 0,
            hasMoreData: false,
            isLoadingMore: false,
          ),
        );
      }

      final currentPage = isLoadMore ? (state.currentPage) + limit : 1;

      final res = await _reportRepositories.loadCustomersReport(
        filterId: 1,
        pageFirstResult: currentPage,
        resultPerPage: limit,
        storeId: storeId ?? 0,
        fromDate: parsedDate(state.fromDate ?? DateTime.now()),
        toDate: parsedDate(state.toDate ?? DateTime.now()),
        filterValue: '',
      );

      log('Response data: ${res.data}');

      if (res.data != null && (res.data?.isNotEmpty ?? false)) {
        List<CustomersResponse> updatedList;
        if (isLoadMore) {
          updatedList = [...(state.customersReport ?? []), ...res.data!];
        } else {
          updatedList = res.data!;
        }
        final hasMoreData = res.data!.length >= limit;
        emit(
          state.copyWith(
            customersReport: updatedList,
            isCustomersReport: ApiFetchStatus.success,
            currentPage: currentPage,
            hasMoreData: hasMoreData,
            isLoadingMore: false,
          ),
        );
      } else {
        emit(
          state.copyWith(
            isCustomersReport: ApiFetchStatus.failed,
            isLoadingMore: false,
            hasMoreData: false,
          ),
        );
      }
    } catch (error) {
      log('Error loading customers report: $error');
      emit(
        state.copyWith(
          isCustomersReport: ApiFetchStatus.failed,
          isLoadingMore: false,
          hasMoreData: false,
        ),
      );
    }
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
    int page = 1,
    int limit = 20,
    String? fromDate,

    String? toDate,
    int? storeId,
    int? orderOptionId,

    bool isLoadMore = false,
  }) async {
    try {
      if (isLoadMore) {
        emit(state.copyWith(isLoadingMore: true));
      } else {
        emit(
          state.copyWith(
            isParcelCharge: ApiFetchStatus.loading,
            parcelChargeList: [],
            currentPage: 0,
            hasMoreData: false,
            isLoadingMore: false,
          ),
        );
      }
      // if (!isLoadMore) {
      //   emit(
      //     state.copyWith(
      //       isParcelCharge: ApiFetchStatus.loading,
      //       parcelChargeList: [],
      //     ),
      //   );
      // }
      final int offset = page * limit;
      final currentPage = isLoadMore ? (state.currentPage) + limit : 1;
      // emit(state.copyWith(isParcelCharge: ApiFetchStatus.loading));
      final res = await _reportRepositories.loadParcelReport(
        pageFirstLimit: currentPage,
        resultPerPage: limit,

        fromDate: parsedDate(state.fromDate ?? DateTime.now()),
        toDate: parsedDate(state.toDate ?? DateTime.now()),
        storeId: storeId ?? 0,
        orderOptionId: orderOptionId ?? 0,
      );

      log('Response data: $orderOptionId');

      if (res.data != null && (res.data?.isNotEmpty ?? false)) {
        List<ParcelChargeResponse> updatedList;
        if (isLoadMore) {
          updatedList = [...(state.parcelChargeList ?? []), ...res.data!];
        } else {
          updatedList = res.data!;
        }
        final hasMoreData = res.data!.length >= limit;
        emit(
          state.copyWith(
            parcelChargeList: updatedList,
            isParcelCharge: ApiFetchStatus.success,
            currentPage: currentPage,
            hasMoreData: hasMoreData,
            isLoadingMore: false,
          ),
        );
      } else {
        emit(
          state.copyWith(
            isParcelCharge: ApiFetchStatus.failed,
            isLoadingMore: false,
            hasMoreData: false,
          ),
        );
      }
    } catch (error) {
      log('Error loading customers report: $error');
      emit(
        state.copyWith(
          isParcelCharge: ApiFetchStatus.failed,
          isLoadingMore: false,
          hasMoreData: false,
        ),
      );
    }
    // if (res.data != null) {
    //   final List<ParcelChargeResponse> fetchedList = res.data!;

    //   final List<ParcelChargeResponse> newList = isLoadMore
    //       ? <ParcelChargeResponse>[...?state.parcelChargeList, ...fetchedList]
    //       : fetchedList;

    //   emit(
    //     state.copyWith(
    //       parcelChargeList: newList,
    //       isParcelCharge: ApiFetchStatus.success,
    //     ),
    //   );
    // } else {
    //   emit(state.copyWith(isParcelCharge: ApiFetchStatus.failed));
    // }
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

  Future<void> loadPurchaseReport({
    int? storeId,
    String? fromDate,
    String? toDate,
    int page = 0,
    int limit = 20,
    bool isLoadMore = false,
    int? purchaseType,
  }) async {
    if (!isLoadMore) {
      emit(state.copyWith(isLoadingMore: true));
    } else {
      emit(
        state.copyWith(
          isPurchaseReport: ApiFetchStatus.loading,
          purchaseReport: [],
          currentPage: 0,
          hasMoreData: false,
          isLoadingMore: false,
        ),
      );
    }
    final currentPage = isLoadMore ? (state.currentPage) + limit : 1;

    final res = await _reportRepositories.loadPurchaseReport(
      supplierId: 0,
      storeId: storeId ?? 0,
      fromDate: parsedDate(state.fromDate ?? DateTime.now()),
      toDate: parsedDate(state.toDate ?? DateTime.now()),
      pageFirstLimit: currentPage,
      resultPerPage: limit,
      purchaseType: purchaseType ?? 0,
    );
    log("TYPE ID  -= -= -= $purchaseType");
    if (res.data != null && (res.data?.isNotEmpty ?? false)) {
      final hasMoreData = res.data!.length >= limit;
      emit(
        state.copyWith(
          purchaseReport: res.data,
          isPurchaseReport: ApiFetchStatus.success,
          currentPage: currentPage,
          hasMoreData: hasMoreData,
          isLoadingMore: false,
        ),
      );
    } else {
      emit(
        state.copyWith(
          isPurchaseReport: ApiFetchStatus.failed,
          isLoadingMore: false,
          hasMoreData: false,
        ),
      );
    }
  }

  Future<void> changePucrhaeType(PurchaseType v) async {
    emit(state.copyWith(selectedPurchaseType: v));
  }

  Future<void> loadTaxReport({
    int? storeId,
    String? fromDate,
    String? toDate,
    bool isLoadMore = false,
  }) async {
    if (!isLoadMore) {
      emit(
        state.copyWith(isTaxReport: ApiFetchStatus.loading, taxReport: null),
      );
    }

    final res = await _reportRepositories.loadTaxReport(
      storeId: storeId ?? 0,
      fromDate: parsedDate(state.fromDate ?? DateTime.now()),
      toDate: parsedDate(state.toDate ?? DateTime.now()),
    );

    log('Response data: ${res.data}');

    if (res.data != null) {
      emit(
        state.copyWith(
          taxReport: res.data,
          isTaxReport: ApiFetchStatus.success,
        ),
      );
      return;
    }

    emit(state.copyWith(isTaxReport: ApiFetchStatus.failed, taxReport: null));
  }

  Future<void> loadTopStores({
    int? roleId,
    int? userId,

    bool isLoadMore = false,
  }) async {
    if (!isLoadMore) {
      emit(state.copyWith(isTopStores: ApiFetchStatus.loading, topStores: []));
    }
    emit(state.copyWith(isTopStores: ApiFetchStatus.loading));
    final res = await _reportRepositories.loadTopStores(
      roleId: roleId ?? 0,
      userId: userId ?? 0,
    );

    log('Response data: ${res.data}');
    if (res.data != null) {
      final List<TopstoresResponse> fetchedList = res.data!;

      final List<TopstoresResponse> newList = isLoadMore
          ? <TopstoresResponse>[...?state.topStores, ...fetchedList]
          : fetchedList;

      emit(
        state.copyWith(topStores: newList, isTopStores: ApiFetchStatus.success),
      );
    }
    emit(state.copyWith(isTopStores: ApiFetchStatus.failed));
  }

  Future<void> loadOffers({int? storeId, bool isLoadMore = false}) async {
    if (!isLoadMore) {
      emit(
        state.copyWith(isOffersReport: ApiFetchStatus.loading, offerReport: []),
      );
    }
    // emit(state.copyWith(isOffersReport: ApiFetchStatus.loading));
    final res = await _reportRepositories.loadOffers(storeId: storeId ?? 0);

    log('Response data: ${res.data}');
    if (res.data != null) {
      final List<OffersResponse> fetchedList = res.data!;

      final List<OffersResponse> newList = isLoadMore
          ? <OffersResponse>[...?state.offerReport, ...fetchedList]
          : fetchedList;

      emit(
        state.copyWith(
          offerReport: newList,
          isOffersReport: ApiFetchStatus.success,
        ),
      );
    }
    emit(state.copyWith(isOffersReport: ApiFetchStatus.failed));
  }

  Future<void> loadSalesDealsReport({
    String? fromDate,
    String? toDate,
    int? storeId,
    bool isLoadMore = false,
  }) async {
    if (!isLoadMore) {
      emit(
        state.copyWith(isOffersReport: ApiFetchStatus.loading, offerReport: []),
      );
    }
    emit(state.copyWith(isOffersReport: ApiFetchStatus.loading));
    final res = await _reportRepositories.loadSaleOnDealsReport(
      storeId: storeId ?? 0,
      fromDate: parsedDate(state.fromDate ?? DateTime.now()),
      toDate: parsedDate(state.toDate ?? DateTime.now()),

      pageFirstResult: 0,
      resultPerPage: 50,
      pageSize: 10,
      offset: 10,
    );

    log('Response data: ${res.data}');
    if (res.data != null) {
      final List<dynamic> rawList = res.data!;
      final List<SaleOnDeals> fetchedList = rawList.map((element) {
        if (element is SaleOnDeals) {
          return element;
        } else if (element is Map<String, dynamic>) {
          return SaleOnDeals.fromJson(element);
        } else {
          throw Exception(
            'Unexpected element type in loadCustomersReport: ${element.runtimeType}',
          );
        }
      }).toList();
      final List<SaleOnDeals> newList = isLoadMore
          ? <SaleOnDeals>[...?state.salesDealsReport, ...fetchedList]
          : fetchedList;

      emit(
        state.copyWith(
          salesDealsReport: newList,
          isOffersReport: ApiFetchStatus.success,
        ),
      );
    }
    emit(state.copyWith(isOffersReport: ApiFetchStatus.failed));
  }

  Future<void> loadChequeTrans({
    int? storeId,
    String? status,
    String? searchText,
    String? fromChequeIssueDate,
    String? toChequeIssueDate,
    String? fromChequeDate,
    String? toChequeDate,

    bool isLoadMore = false,
  }) async {
    if (!isLoadMore) {
      emit(
        state.copyWith(
          isChequeReport: ApiFetchStatus.loading,
          chequeTransReport: [],
        ),
      );
    }
    emit(state.copyWith(isParcelCharge: ApiFetchStatus.loading));
    final res = await _reportRepositories.loadCheque(
      fromChequeDate: apiFormat.format(state.fromDate ?? DateTime.now()),
      fromChequeIssueDate: apiFormat.format(state.fromDate ?? DateTime.now()),
      toChequeDate: apiFormat.format(state.toDate ?? DateTime.now()),
      toChequeIssueDate: apiFormat.format(state.toDate ?? DateTime.now()),
      storeId: storeId ?? 0,
      status: status ?? '',
      searchText: searchText ?? '',
    );

    log('Response data: ${res.data}');
    if (res.data != null) {
      final List<ChequeTrans> fetchedList = res.data!;

      final List<ChequeTrans> newList = isLoadMore
          ? <ChequeTrans>[...?state.chequeTransReport, ...fetchedList]
          : fetchedList;

      emit(
        state.copyWith(
          chequeTransReport: newList,
          isChequeReport: ApiFetchStatus.success,
        ),
      );
    } else {
      emit(state.copyWith(isChequeReport: ApiFetchStatus.failed));
    }
  }

  Future<void> loadStatus({
    int? storeId,

    // String? status,
    bool isLoadMore = false,
  }) async {
    if (!isLoadMore) {
      emit(
        state.copyWith(
          isChequeStatus: ApiFetchStatus.loading,
          chequeStatus: [],
        ),
      );
    }
    emit(state.copyWith(isChequeStatus: ApiFetchStatus.loading));
    final res = await _reportRepositories.loadStatus(
      storeId: storeId ?? 0,
      //  status: status ?? state.status,
    );

    log('Response data: ${res.data}');
    if (res.data != null) {
      final List<ChequeStatusResponse> fetchedList = res.data!;

      final List<ChequeStatusResponse> newList = isLoadMore
          ? <ChequeStatusResponse>[...?state.chequeStatus, ...fetchedList]
          : fetchedList;

      emit(
        state.copyWith(
          chequeStatus: newList,
          isChequeStatus: ApiFetchStatus.success,
        ),
      );
    }
    emit(state.copyWith(isChequeStatus: ApiFetchStatus.failed));
  }

  Future<void> selectedStatus(ChequeStatusResponse data) async {
    emit(
      state.copyWith(
        selectedStatus: data,
        status: data.chequeStatusId.toString(),
      ),
    );
  }

  Future<void> loadMessReport({
    int? storeId,
    String? fromDate,
    String? toDate,
    bool isLoadMore = false,
  }) async {
    if (!isLoadMore) {
      emit(
        state.copyWith(isMessReport: ApiFetchStatus.loading, messReport: []),
      );
    }
    emit(state.copyWith(isMessReport: ApiFetchStatus.loading));
    final res = await _reportRepositories.loadMessReport(
      storeId: storeId ?? 0,
      fromDate: parsedDate(state.fromDate ?? DateTime.now()),
      toDate: parsedDate(state.toDate ?? DateTime.now()),
      pageFirstResult: 0,
      resultPerPage: 50,
      query: '',
      mealPlansId: 0,
    );

    log('Response data: ${res.data}');
    if (res.data != null) {
      final List<dynamic> rawList = res.data!;
      final List<MessReportResponse> fetchedList = rawList.map((element) {
        if (element is MessReportResponse) {
          return element;
        } else if (element is Map<String, dynamic>) {
          return MessReportResponse.fromJson(element);
        } else {
          throw Exception(
            'Unexpected element type in loadCustomersReport: ${element.runtimeType}',
          );
        }
      }).toList();
      final List<MessReportResponse> newList = isLoadMore
          ? <MessReportResponse>[...?state.messReport, ...fetchedList]
          : fetchedList;

      emit(
        state.copyWith(
          messReport: newList,
          isMessReport: ApiFetchStatus.success,
        ),
      );
    }
    emit(state.copyWith(isMessReport: ApiFetchStatus.failed));
  }

  Future<void> loadProductOffers({
    int? storeId,
    String? fromDate,
    String? toDate,
    String? search,
    bool isLoadMore = false,
    int page = 0,
    int limit = 20,
  }) async {
    if (!isLoadMore) {
      emit(state.copyWith(isLoadingMore: true));
    } else {
      emit(
        state.copyWith(
          isProductOffers: ApiFetchStatus.loading,
          productOffers: [],
          currentPage: 0,
          hasMoreData: false,
          isLoadingMore: false,
        ),
      );
    }
    final currentPage = isLoadMore ? (state.currentPage) + limit : 1;
    emit(state.copyWith(isProductOffers: ApiFetchStatus.loading));
    final res = await _reportRepositories.loadProductOffers(
      storeId: storeId ?? 0,
      fromDate: parsedDate(state.fromDate ?? DateTime.now()),
      toDate: parsedDate(state.toDate ?? DateTime.now()),

      search: search ?? '',
      pageFirstResult: currentPage,
      resultPerPage: limit,
    );

    if (res.data != null && (res.data?.isNotEmpty ?? false)) {
      List<ProductOffersResponse> updatedList;
      if (isLoadMore) {
        updatedList = [...(state.productOffers ?? []), ...res.data!];
      } else {
        updatedList = res.data!;
      }
      final hasMoreData = res.data!.length >= limit;

      emit(
        state.copyWith(
          productOffers: updatedList,
          isProductOffers: ApiFetchStatus.success,
          filteredProducts: res.data,
          apiFetchStatus: ApiFetchStatus.success,
          currentPage: currentPage,
          hasMoreData: hasMoreData,
          isLoadingMore: false,
        ),
      );
    }
    emit(
      state.copyWith(
        isProductOffers: ApiFetchStatus.failed,
        isLoadingMore: false,
        hasMoreData: false,
      ),
    );
  }

  Future<void> loadSpecialOffer({int? storeId}) async {
    emit(state.copyWith(isSpecialOffer: ApiFetchStatus.loading));
    final res = await _reportRepositories.loadSpecialOffer(
      storeId: storeId ?? 0,
    );

    log('/////SPECIAL OFFER////: ${res.data}');
    if (res.data != null) {
      final List<dynamic> rawList = res.data!;
      final List<SpecialOfferResponse> fetchedList = rawList.map((element) {
        if (element is SpecialOfferResponse) {
          return element;
        } else if (element is Map<String, dynamic>) {
          return SpecialOfferResponse.fromJson(element);
        } else {
          throw Exception(
            'Unexpected element type in loadCustomersReport: ${element.runtimeType}',
          );
        }
      }).toList();
      // final List<ProductOffersResponse> newList = isLoadMore
      //     ? <ProductOffersResponse>[...?state.productOffers, ...fetchedList]
      //     : fetchedList;

      emit(
        state.copyWith(
          specialOffer: res.data,
          isSpecialOffer: ApiFetchStatus.success,
        ),
      );
    }
    emit(state.copyWith(isSpecialOffer: ApiFetchStatus.failed));
  }

  Future<void> loadSelectedOffer(SpecialOfferResponse offer) async {
    emit(state.copyWith(selectedType: offer));
  }

  Future<void> createProductOffer({required CreateOfferResponse offer}) async {
    emit(state.copyWith(isCreated: ApiFetchStatus.loading));
    final res = await _reportRepositories.createProductOffer(offer);

    if (res.data != null) {
      emit(state.copyWith(isCreated: ApiFetchStatus.success));
    } else {
      emit(state.copyWith(isCreated: ApiFetchStatus.failed));
    }
    emit(state.copyWith(isCreated: ApiFetchStatus.failed));
  }

  Future<void> loadEditOffer(
    EditOfferResponse editOffer,
    int prodOfferId,
    int storeId,
  ) async {
    emit(state.copyWith(isAdded: ApiFetchStatus.loading));
    final res = await _reportRepositories.loadEditOffer(
      editOffer,
      prodOfferId,
      storeId,
    );
    log('EDIT DATA////: ${res.data}');

    if (res.data != null) {
      emit(
        state.copyWith(isAdded: ApiFetchStatus.success, editData: editOffer),
      );

      return;
    } else {
      emit(state.copyWith(isAdded: ApiFetchStatus.failed));
    }
  }

  Future<void> loadSuppliersReport({
    int? storeId,
    int? admin,
    String? query,
    int page = 0,
    int limit = 20,

    bool isLoadMore = false,
  }) async {
    if (!isLoadMore) {
      emit(state.copyWith(isLoadingMore: true));
    } else {
      emit(
        state.copyWith(
          isSupplierReport: ApiFetchStatus.loading,
          suppliersReport: [],
          currentPage: 0,
          hasMoreData: false,
          isLoadingMore: false,
        ),
      );
    }
    final currentPage = isLoadMore ? (state.currentPage) + limit : 1;
    emit(state.copyWith(isSupplierReport: ApiFetchStatus.loading));
    final res = await _reportRepositories.loadSuppliers(
      storeId: storeId ?? 0,
      admin: admin ?? 0,
      query: query ?? '',
    );

    log('Response data: ${res.data}');
    if (res.data != null) {
      final List<dynamic> rawList = res.data!;
      final List<SuppliersResponse> fetchedList = rawList.map((element) {
        if (element is SuppliersResponse) {
          return element;
        } else if (element is Map<String, dynamic>) {
          return SuppliersResponse.fromJson(element);
        } else {
          throw Exception(
            'Unexpected element type in loadCustomersReport: ${element.runtimeType}',
          );
        }
      }).toList();
      final List<SuppliersResponse> newList = isLoadMore
          ? <SuppliersResponse>[...?state.suppliersReport, ...fetchedList]
          : fetchedList;

      emit(
        state.copyWith(
          suppliersReport: newList,
          filteredProduct: newList,
          isSupplierReport: ApiFetchStatus.success,
        ),
      );
    }
    emit(state.copyWith(isSupplierReport: ApiFetchStatus.failed));
  }

  Future<void> loadProductReport({
    int page = 1,
    int limit = 20,
    int? storeId,
    String? fromDate,
    String? toDate,
    int? roleId,
    int? userId,
    String? searchText,
    int? categoryId,
    bool isLoadMore = false,
  }) async {
    try {
      final isSearchChanged = (searchText ?? '') != (state.lastSearch ?? '');
      final currentPage = isLoadMore && !isSearchChanged
          ? state.currentPage + 1
          : 1;
      final offset = (currentPage - 1) * limit;

      if (!isLoadMore || isSearchChanged) {
        emit(
          state.copyWith(
            isProductReport: ApiFetchStatus.loading,
            productsReport: [],
            currentPage: 0,
            hasMoreData: false,
            isLoadingMore: false,
          ),
        );
      } else {
        emit(state.copyWith(isLoadingMore: true));
      }

      final res = await _reportRepositories.loadProductReport(
        pageFirstResult: offset,
        resultPerPage: limit,
        storeId: storeId ?? 0,
        fromDate: parsedDate(state.fromDate ?? DateTime.now()),
        toDate: parsedDate(state.toDate ?? DateTime.now()),
        roleId: roleId ?? 0,
        userId: userId ?? 0,
        searchText: searchText ?? '',
        categoryId: categoryId,
      );

      log('Response data: ${res.data}');

      if (res.data != null && res.data!.isNotEmpty) {
        final updatedList = (isLoadMore && !isSearchChanged)
            ? <ProductsResponse>[
                ...(state.productsReport ?? []),
                ...(res.data as List<ProductsResponse>),
              ]
            : res.data as List<ProductsResponse>;

        final hasMoreData = res.data!.length >= limit;

        emit(
          state.copyWith(
            productsReport: updatedList,
            isProductReport: ApiFetchStatus.success,
            currentPage: currentPage,
            hasMoreData: hasMoreData,
            isLoadingMore: false,
            lastSearch: searchText,
          ),
        );
      } else {
        emit(
          state.copyWith(
            isProductReport: ApiFetchStatus.success,
            hasMoreData: false,
            isLoadingMore: false,
            lastSearch: searchText,
          ),
        );
      }
    } catch (error) {
      log('Error loading product report: $error');
      emit(
        state.copyWith(
          isProductReport: ApiFetchStatus.failed,
          isLoadingMore: false,
          hasMoreData: false,
        ),
      );
    }
  }

  // Future<void> loadProductReport({
  //   int page = 1,
  //   int limit = 20,
  //   int? storeId,
  //   String? fromDate,
  //   String? toDate,
  //   int? roleId,
  //   int? userId,
  //   String? searchText,
  //   int? categoryId,

  //   bool isLoadMore = false,
  // }) async {
  //   try {
  //     if (isLoadMore) {
  //       emit(state.copyWith(isLoadingMore: true));
  //     } else {
  //       emit(
  //         state.copyWith(
  //           isProductReport: ApiFetchStatus.loading,
  //           productsReport: [],
  //           currentPage: 0,
  //           hasMoreData: false,
  //           isLoadingMore: false,
  //           lastSearch: searchText,
  //         ),
  //       );
  //     }

  //     //  final int offset = page * limit;
  //     //final currentPage = isLoadMore ? (state.currentPage) + limit : 1;
  //     //final currentPage = isLoadMore ? (state.currentPage + 1) : 0;

  //     final isSearchChanged = (searchText ?? '') != (state.lastSearch ?? '');
  //     final currentPage = isLoadMore && !isSearchChanged
  //         ? state.currentPage + 1
  //         : 1;
  //     final offset = (currentPage - 1) * limit;
  //     emit(state.copyWith(isProductReport: ApiFetchStatus.loading));
  //     final res = await _reportRepositories.loadProductReport(
  //       pageFirstResult: offset,
  //       resultPerPage: limit,
  //       storeId: storeId ?? 0,
  //       fromDate: parsedDate(state.fromDate ?? DateTime.now()),
  //       toDate: parsedDate(state.toDate ?? DateTime.now()),
  //       roleId: roleId ?? 0,
  //       userId: userId ?? 0,
  //       searchText: searchText ?? '',
  //       categoryId: categoryId,
  //     );

  //     log('Response data: ${res.data}');
  //     if (res.data != null && (res.data?.isNotEmpty ?? false)) {
  //       List<ProductsResponse> updatedList;
  //       if (isLoadMore) {
  //         updatedList = [...(state.productsReport ?? []), ...res.data!];
  //       } else {
  //         updatedList = res.data!;
  //       }
  //       final hasMoreData = res.data!.length >= limit;
  //       emit(
  //         state.copyWith(
  //           productsReport: updatedList,
  //           isProductReport: ApiFetchStatus.success,
  //           currentPage: currentPage,
  //           hasMoreData: hasMoreData,
  //           isLoadingMore: false,
  //           lastSearch: searchText,
  //         ),
  //       );
  //     } else {
  //       emit(
  //         state.copyWith(
  //           isProductReport: ApiFetchStatus.failed,
  //           isLoadingMore: false,
  //           hasMoreData: false,
  //         ),
  //       );
  //     }
  //   } catch (error) {
  //     log('Error loading customers report: $error');
  //     emit(
  //       state.copyWith(
  //         isProductReport: ApiFetchStatus.failed,
  //         isLoadingMore: false,
  //         hasMoreData: false,
  //       ),
  //     );
  //   }
  // }
  //   if (res.data != null && (res.data?.isNotEmpty ?? false)) {
  //     emit(
  //       state.copyWith(
  //         isProductReport: ApiFetchStatus.success,
  //         productsReport: res.data,
  //       ),
  //     );
  //   } else {
  //     emit(
  //       state.copyWith(
  //         isProductReport: ApiFetchStatus.failed,
  //         productsReport: [],
  //       ),
  //     );
  //   }
  //   emit(state.copyWith(isProductReport: ApiFetchStatus.failed));
  // }
  // Future<void> loadProductReport({
  //   int? storeId,
  //   String? fromDate,
  //   String? toDate,
  //   int? accountId,
  //   int page = 1,
  //   int limit = 20,
  //   int? roleId,
  //   int? userId,
  //   String? searchText,
  //   int? categoryId,
  //   bool isLoadMore = false,
  // }) async {
  //   try {
  //     if (isLoadMore) {
  //       emit(state.copyWith(isLoadingMore: true));
  //     } else {
  //       emit(
  //         state.copyWith(
  //           isProductReport: ApiFetchStatus.loading,
  //           productsReport: [],
  //           currentPage: 0,
  //           hasMoreData: false,
  //           isLoadingMore: false,
  //         ),
  //       );
  //     }

  //     final currentPage = isLoadMore ? (state.currentPage) + limit : 1;

  //     final res = await _reportRepositories.loadProductReport(
  //       pageFirstResult: currentPage,
  //       resultPerPage: limit,
  //       storeId: storeId ?? 0,
  //       fromDate: parsedDate(state.fromDate ?? DateTime.now()),
  //       toDate: parsedDate(state.toDate ?? DateTime.now()),
  //       roleId: roleId ?? 0,
  //       userId: userId ?? 0,
  //       searchText: searchText ?? '',
  //       categoryId: categoryId,
  //     );

  //     log('Response data: ${res.data}');

  //     if (res.data != null && (res.data?.isNotEmpty ?? false)) {
  //       List<ProductsResponse> updatedList;
  //       if (isLoadMore) {
  //         updatedList = [...(state.productsReport ?? []), ...res.data!];
  //       } else {
  //         updatedList = res.data!;
  //       }
  //       final hasMoreData = res.data!.length >= limit;
  //       emit(
  //         state.copyWith(
  //           productsReport: updatedList,
  //           isProductReport: ApiFetchStatus.success,
  //           currentPage: currentPage,
  //           hasMoreData: hasMoreData,
  //           isLoadingMore: false,
  //         ),
  //       );
  //     } else {
  //       emit(
  //         state.copyWith(
  //           isProductReport: ApiFetchStatus.failed,
  //           isLoadingMore: false,
  //           hasMoreData: false,
  //         ),
  //       );
  //     }
  //   } catch (error) {
  //     log('Error loading customers report: $error');
  //     emit(
  //       state.copyWith(
  //         isProductReport: ApiFetchStatus.failed,
  //         isLoadingMore: false,
  //         hasMoreData: false,
  //       ),
  //     );
  //   }
  // }

  Future<void> changeCategory(MostSellingResponse cate) async {
    emit(state.copyWith(selectCategory: cate));
  }

  Future<void> loadDaySummary({
    int? storeId,
    String? toDate,
    bool isLoadMore = false,
  }) async {
    emit(state.copyWith(isDaySummary: ApiFetchStatus.loading, daySummary: []));

    final res = await _reportRepositories.loadDaySummary(
      storeId: storeId ?? 0,

      toDate: parsedDate(state.toDate ?? DateTime.now()),
    );

    if (res.data != null && res.data!.isNotEmpty) {
      emit(
        state.copyWith(
          daySummary: res.data,
          isDaySummary: ApiFetchStatus.success,
        ),
      );

      return;
    }

    emit(state.copyWith(isDaySummary: ApiFetchStatus.failed));
  }

  //   Future<void> loadProductName({String? query, int? storeId}) async {
  //   emit(state.copyWith(isProductName: ApiFetchStatus.loading));
  //   final res = await _reportRepositories.getProductName(
  //     storeId: storeId ?? 0,
  //     query: query ?? '',
  //   );

  //   if (res.data != null) {
  //     final List<ProductNameResponse> fetchedList = res.data!
  //         .map<ProductNameResponse>((e) {
  //           if (e is ProductNameResponse) {
  //             return e;
  //           } else if (e is Map<String, dynamic>) {
  //             return ProductNameResponse.fromJson(e);
  //           } else {
  //             throw Exception(
  //               'Unexpected element type in loadProductName: ${e.runtimeType}',
  //             );
  //           }
  //         })
  //         .toList();

  //     emit(state.copyWith(
  //       getProductName: fetchedList,
  //       isProductName: ApiFetchStatus.success,
  //     ));
  //   }
  // }

  Future<void> loadProductName({String? query, int? storeId}) async {
    emit(state.copyWith(isProductName: ApiFetchStatus.loading));
    final res = await _reportRepositories.getProductName(
      storeId: storeId ?? 0,
      query: query ?? '',
    );
    if (res.data != null) {
      final List<dynamic> rawList = res.data!;
      final List<ProductNameResponse> fetchedList = rawList.map((element) {
        if (element is ProductNameResponse) {
          return element;
        } else if (element is Map<String, dynamic>) {
          return ProductNameResponse.fromJson(element);
        } else {
          throw Exception(
            'Unexpected element type in loadCustomersReport: ${element.runtimeType}',
          );
        }
      }).toList();

      emit(
        state.copyWith(
          getProductName: res.data,
          isProductName: ApiFetchStatus.success,
        ),
      );
    }
  }

  Future<void> selectedProductName(ProductNameResponse product) async {
    emit(state.copyWith(selectedProductName: product));
  }

  Future<void> clearCategories() async {
    emit(state.copyWith(selectCategory: MostSellingResponse()));
  }

  Future<void> selectedStore(StoreResponse store) async {
    emit(state.copyWith(selectedStore: store));
  }

  void initState() {
    emit(state.copyWith(fromDate: DateTime.now(), toDate: DateTime.now()));
  }

  Future<void> custSearch({String? searchText, int? storeId}) async {
    try {
      emit(state.copyWith(isCustomersReport: ApiFetchStatus.loading));
      final result = await _reportRepositories.custSearch(
        storeId: storeId,
        custSearch: searchText,
      );
      if (result.data != null) {
        print('serch-=-==-${result.data}');

        emit(state.copyWith(customersReport: result.data));
        emit(state.copyWith(isCustomersReport: ApiFetchStatus.success));
      }
      emit(state.copyWith(isCustomersReport: ApiFetchStatus.failed));
    } catch (e, s) {
      log('order search error-$e', stackTrace: s);
      emit(state.copyWith(isCustomersReport: ApiFetchStatus.failed));
    }
  }
}
