import 'dart:developer';

import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/report/domain/models/categorysales/categorySales_response.dart';
import 'package:admin_v2/features/report/domain/models/cheque/chequeStatus_response.dart';
import 'package:admin_v2/features/report/domain/models/cheque/cheque_response.dart';
import 'package:admin_v2/features/report/domain/models/createOffer/create_offer_response.dart';
import 'package:admin_v2/features/report/domain/models/customers/customers_report_response.dart';
import 'package:admin_v2/features/report/domain/models/day_summary/day_summary_response.dart';
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
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'report_state.dart';

@injectable
class ReportCubit extends Cubit<ReportState> {
  final ReportRepositories _reportRepositories;
  final DashboardCubit _dashboardCubit;

  ReportCubit(this._reportRepositories, this._dashboardCubit)
    : super(InitialReportState());

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
      if (res.data != null) {
        final List<DeliveryChargeResponse> fetchedList = res.data!;

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
    int page = 0,
    int limit = 20,
    int? orderOptionId,

    bool isLoadMore = false,
  }) async {
    if (!isLoadMore) {
      emit(
        state.copyWith(
          isParcelCharge: ApiFetchStatus.loading,
          parcelChargeList: [],
        ),
      );
    }
    final int offset = page * limit;
    // emit(state.copyWith(isParcelCharge: ApiFetchStatus.loading));
    final res = await _reportRepositories.loadParcelReport(
      pageFirstLimit: offset,
      resultPerPage: limit,
      orderOptionId: orderOptionId ?? 0,
      storeId: storeId ?? 0,
      fromDate: parsedDate(state.fromDate ?? DateTime.now()),
      toDate: parsedDate(state.toDate ?? DateTime.now()),
    );

    log('Response data: ${res.data}');
    if (res.data != null) {
      final List<ParcelChargeResponse> fetchedList = res.data!;

      final List<ParcelChargeResponse> newList = isLoadMore
          ? <ParcelChargeResponse>[...?state.parcelChargeList, ...fetchedList]
          : fetchedList;

      emit(
        state.copyWith(
          parcelChargeList: newList,
          isParcelCharge: ApiFetchStatus.success,
        ),
      );
    } else {
      emit(state.copyWith(isParcelCharge: ApiFetchStatus.failed));
    }
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
      emit(
        state.copyWith(
          isPurchaseReport: ApiFetchStatus.loading,
          purchaseReport: [],
        ),
      );
    }
    final int offset = page * limit;

    final res = await _reportRepositories.loadPurchaseReport(
      supplierId: 0,
      storeId: storeId ?? 0,
      fromDate: parsedDate(state.fromDate ?? DateTime.now()),
      toDate: parsedDate(state.toDate ?? DateTime.now()),
      pageFirstLimit: offset,
      resultPerPage: limit,
      purchaseType: (state.selectedPurchaseType is int)
          ? state.selectedPurchaseType as int
          : purchaseType ?? 0,
    );
    // print('purchase:${res.data}');

    if (res.data != null) {
      final List<dynamic> rawList = res.data!;
      final List<PurchaseResponse> fetchedList = rawList.map((element) {
        if (element is PurchaseResponse) {
          return element;
        } else if (element is Map<String, dynamic>) {
          return PurchaseResponse.fromJson(element);
        } else {
          throw Exception(
            'Unexpected element type in loadPurchaseReport: ${element.runtimeType}',
          );
        }
      }).toList();

      final List<PurchaseResponse> newList = isLoadMore
          ? <PurchaseResponse>[...?state.purchaseReport, ...fetchedList]
          : fetchedList;

      emit(
        state.copyWith(
          purchaseReport: newList,
          isPurchaseReport: ApiFetchStatus.success,
        ),
      );
    }
    emit(state.copyWith(isPurchaseReport: ApiFetchStatus.failed));
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
      // fromDate: '',
      // toDate: '',
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
      fromChequeDate: parsedDate(state.fromDate ?? DateTime.now()),
      fromChequeIssueDate: parsedDate(state.fromDate ?? DateTime.now()),
      toChequeDate: parsedDate(state.toDate ?? DateTime.now()),
      toChequeIssueDate: parsedDate(state.toDate ?? DateTime.now()),
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
      final List<ChequestatusResponse> fetchedList = res.data!;

      final List<ChequestatusResponse> newList = isLoadMore
          ? <ChequestatusResponse>[...?state.chequeStatus, ...fetchedList]
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

  Future<void> selectedStatus(ChequestatusResponse data) async {
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
  }) async {
    if (!isLoadMore) {
      emit(
        state.copyWith(
          isProductOffers: ApiFetchStatus.loading,
          productOffers: [],
        ),
      );
    }
    emit(state.copyWith(isProductOffers: ApiFetchStatus.loading));
    final res = await _reportRepositories.loadProductOffers(
      storeId: storeId ?? 0,
      fromDate: parsedDate(state.fromDate ?? DateTime.now()),
      toDate: parsedDate(state.toDate ?? DateTime.now()),
      pageFirstResult: 0,
      resultPerPage: 50,
      search: search ?? '',
    );

    log('/////Response data////: ${res.data}');
    if (res.data != null) {
      final List<dynamic> rawList = res.data!;
      final List<ProductOffersResponse> fetchedList = rawList.map((element) {
        if (element is ProductOffersResponse) {
          return element;
        } else if (element is Map<String, dynamic>) {
          return ProductOffersResponse.fromJson(element);
        } else {
          throw Exception(
            'Unexpected element type in loadCustomersReport: ${element.runtimeType}',
          );
        }
      }).toList();
      final List<ProductOffersResponse> newList = isLoadMore
          ? <ProductOffersResponse>[...?state.productOffers, ...fetchedList]
          : fetchedList;

      emit(
        state.copyWith(
          productOffers: newList,
          isProductOffers: ApiFetchStatus.success,
          filteredProducts: res.data,
        ),
      );
    }
    emit(state.copyWith(isProductOffers: ApiFetchStatus.failed));
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

      final storeId = _dashboardCubit.state.selectedStore?.storeId;
      if (storeId != null) {
        await loadProductOffers(storeId: storeId);
      }
    } else {
      emit(state.copyWith(isCreated: ApiFetchStatus.failed));
    }
  }

  Future<void> loadEditOffer(EditOfferResponse editOffer, int productId) async {
    emit(state.copyWith(isAdded: ApiFetchStatus.loading));
    final res = await _reportRepositories.loadEditOffer(
      editOffer,
      productId,
      // storeId,
    );
    log('EDIT DATA/////: ${res.data}');

    if (res.data != null) {
      // final updatedProduct = res.data!;
      emit(
        state.copyWith(isAdded: ApiFetchStatus.success, editData: editOffer),
      );

      return;
    }
    emit(state.copyWith(isAdded: ApiFetchStatus.failed));
  }

  Future<void> loadSuppliersReport({
    int? storeId,
    int? admin,
    String? query,

    bool isLoadMore = false,
  }) async {
    if (!isLoadMore) {
      emit(
        state.copyWith(
          isSupplierReport: ApiFetchStatus.loading,
          suppliersReport: [],
        ),
      );
    }
    emit(state.copyWith(isSupplierReport: ApiFetchStatus.loading));
    final res = await _reportRepositories.loadSuppliers(
      storeId: storeId ?? 0,
      admin: admin ?? 0,
      query: '',
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
          isSupplierReport: ApiFetchStatus.success,
        ),
      );
    }
    emit(state.copyWith(isSupplierReport: ApiFetchStatus.failed));
  }

  Future<void> loadProductReport({
    int page = 0,
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
    if (!isLoadMore) {
      emit(
        state.copyWith(
          isProductReport: ApiFetchStatus.loading,
          productsReport: [],
        ),
      );
    }
    final int offset = page * limit;
    emit(state.copyWith(isProductReport: ApiFetchStatus.loading));
    final res = await _reportRepositories.loadProductReport(
      pageFirstResult: offset,
      resultPerPage: limit,
      storeId: storeId ?? 0,
      fromDate: parsedDate(state.fromDate ?? DateTime.now()),
      toDate: parsedDate(state.toDate ?? DateTime.now()),
      roleId: roleId ?? 0,
      userId: userId ?? 0,
      searchText: searchText ?? '',
      categoryId: categoryId ?? 0,
    );

    log('Response data: ${res.data}');
    if (res.data != null) {
      final List<ProductsResponse> fetchedList = res.data!;

      final List<ProductsResponse> newList = isLoadMore
          ? <ProductsResponse>[...?state.productsReport, ...fetchedList]
          : fetchedList;

      emit(
        state.copyWith(
          isProductReport: ApiFetchStatus.success,
          productsReport: newList,
        ),
      );
      return;
    }
    emit(state.copyWith(isProductReport: ApiFetchStatus.failed));
  }

  Future<void> changeCategory(MostSellingResponse cate) async {
    emit(state.copyWith(selectCategory: cate));
  }

  Future<void> loadDaySummary({
    int? storeId,
    String? toDate,
    bool isLoadMore = false,
  }) async {
    if (!isLoadMore) {
      emit(
        state.copyWith(isDaySummary: ApiFetchStatus.loading, daySummary: []),
      );
    }

    final res = await _reportRepositories.loadDaySummary(
      storeId: storeId ?? 0,

      toDate: parsedDate(state.toDate ?? DateTime.now()),
    );

    log(" ///API raw response//////: ${res.toString()}");
    // log(" res.statusCode/// = ${res.statusCode}, res.data = ${res.data}");

    log('.,.,.,.,.,Response data.,.,.,.,: ${res.data}');

    if (res.data != null && res.data!.isNotEmpty) {
      final DaySummaryResponse fetched = res.data!.first;
      // final List<DaySummaryResponse> newList = isLoadMore
      //     ? <DaySummaryResponse>[...?state.daySummary, fetched]
      //     : [fetched];

      emit(
        state.copyWith(
          daySummary: res.data,
          isDaySummary: ApiFetchStatus.success,
        ),
      );
      print('///fswsd///:${res.data}');
      return;
    }

    // if (res.data != null && res.data!.isNotEmpty) {
    //   final List<DaySummaryResponse> newList = isLoadMore
    //       ? <DaySummaryResponse>[...?state.daySummary, ...res.data!]
    //       : res.data!;

    //   emit(
    //     state.copyWith(
    //       daySummary: newList,
    //       isDaySummary: ApiFetchStatus.success,
    //     ),
    //   );
    //   return;
    // }

    // if (res.data != null) {
    //   final fetched = DaySummaryResponse.fromJson(
    //     res.data as Map<String, dynamic>,
    //   );
    //   final List<DaySummaryResponse> newList = isLoadMore
    //       ? <DaySummaryResponse>[...?state.daySummary, fetched]
    //       : [fetched];

    //   emit(
    //     state.copyWith(
    //       daySummary: newList,
    //       isDaySummary: ApiFetchStatus.success,
    //     ),
    //   );
    //   return;
    // }

    emit(state.copyWith(isDaySummary: ApiFetchStatus.failed));
  }
}

    // if (res.data != null) {
    //   final List<DaySummaryResponse> fetchedList = res.data!;

    //   final List<DaySummaryResponse> newList = isLoadMore
    //       ? <DaySummaryResponse>[...?state.daySummary, ...fetchedList]
    //       : fetchedList;

    //   emit(
    //     state.copyWith(
    //       daySummary: newList,
    //       isDaySummary: ApiFetchStatus.success,
    //     ),
    //   );
    //   return;
    // }