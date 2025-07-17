import 'dart:convert';
import 'dart:developer';

import 'package:admin_v2/features/report/domain/models/cashier/cashier_response.dart';
import 'package:admin_v2/features/report/domain/models/categorysales/categorySales_response.dart';
import 'package:admin_v2/features/report/domain/models/cheque/chequeStatus_response.dart';
import 'package:admin_v2/features/report/domain/models/cheque/cheque_response.dart';
import 'package:admin_v2/features/report/domain/models/createOffer/create_offer_response.dart';
import 'package:admin_v2/features/report/domain/models/customers/customers_report_response.dart';
import 'package:admin_v2/features/report/domain/models/day_summary/day_summary_response.dart';
import 'package:admin_v2/features/report/domain/models/delivery_agent/delivery_agent_response.dart';
import 'package:admin_v2/features/report/domain/models/delivery_charge/delivery_charge_response.dart';
import 'package:admin_v2/features/report/domain/models/editoffer/edit_offer_response.dart';
import 'package:admin_v2/features/report/domain/models/expense/expense_report_response.dart';
import 'package:admin_v2/features/report/domain/models/kiosk_response/kiosk_response.dart';
import 'package:admin_v2/features/report/domain/models/mess/mess_report_response.dart';
import 'package:admin_v2/features/report/domain/models/mostSellingProducts/products_response.dart';
import 'package:admin_v2/features/report/domain/models/offers/offers_response.dart';
import 'package:admin_v2/features/report/domain/models/parcel/parcel_charge_response.dart';
import 'package:admin_v2/features/report/domain/models/paymentMethod/payment_method_response.dart';
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
import 'package:admin_v2/features/report/domain/models/waiters_response/waiters_response.dart';
import 'package:admin_v2/features/report/domain/repositories/report_repositores.dart';
import 'package:admin_v2/shared/api/endpoint/api_endpoints.dart';
import 'package:admin_v2/shared/api/network/network.dart';
import 'package:admin_v2/shared/utils/auth/auth_utils.dart';
import 'package:admin_v2/shared/utils/result.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ReportRepositories)
class ReportService implements ReportRepositories {
  @override
  Future<ResponseResult<List<SalesReportResponse>>> loadSalesReport({
    required int? selectedStoreId,
    required String? fromDate,
    required String? toDate,
    required String? selectedDeliveryAgentId,
    required String? selectedPaymentMethodId,
    required String? selectedWaiterId,
    required String? selectedShiftId,
    required bool? isDayClosed,
    required String? selectedCashierId,
    required String? selectedKIOSK,
    required String? selectedGroupBy,
    required int? selectedDuration,
  }) async {
    final networkProvider = await NetworkProvider.create();

    final res = await networkProvider.get(
      ApiEndpoints.salesReport(
        selectedStoreId: selectedStoreId,
        fromDate: fromDate,
        toDate: toDate,
        isDayClosed: isDayClosed,
        selectedCashierId: selectedCashierId.toString(),
        selectedDeliveryAgentId: selectedDeliveryAgentId.toString(),
        selectedDuration: selectedDuration,
        selectedGroupBy: selectedGroupBy,
        selectedKIOSK: selectedKIOSK.toString(),
        selectedPaymentMethodId: selectedPaymentMethodId.toString(),
        selectedShiftId: selectedShiftId.toString(),
        selectedWaiterId: selectedWaiterId.toString(),
      ),
    );
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<SalesReportResponse>.from(
            res.data.map((e) => SalesReportResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<ReveneReportResponse>>> loadRevenueReport({
    required int pageFirstResult,
     required int resultPerPage,
    required int storeId,
    required String fromDate,
    required String toDate,
  }) async {
    final networkProvider = await NetworkProvider.create();
 
    final res = await networkProvider.get(
      ApiEndpoints.revenueReport(
        pageFirstResult,
       resultPerPage,
        storeId,
        fromDate,
        toDate,
      ),
    );
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<ReveneReportResponse>.from(
            res.data.map((e) => ReveneReportResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }
 

  @override
  Future<ResponseResult<List<ExpenseReportResponse>>> loadExpenseReport({
    required int pageFirstResult,
    required int resultPerPage,
    required int storeId,
    required String fromDate,
    required String toDate,
    required int accountId,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final res = await networkProvider.get(
      ApiEndpoints.expenseReport(
        pageFirstResult,
        resultPerPage,
        storeId,
        fromDate,
        toDate,
        accountId,
      ),
    );
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<ExpenseReportResponse>.from(
            res.data.map((e) => ExpenseReportResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<ProfitlossResponse>>> loadProfitAndLoss({
    required int storeId,
    required String fromDate,
    required String toDate,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final res = await networkProvider.get(
      ApiEndpoints.profitLoss(storeId, fromDate, toDate),
    );
    log('heloo-=-=--==$res');
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<ProfitlossResponse>.from(
            res.data.map((e) => ProfitlossResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<DeliveryChargeResponse>>> loadDeliveryCharge({
    required int storeId,
    required String fromDate,
    required String toDate,
    required int resultPerPage,
    required int pageFirstResult,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final res = await networkProvider.get(
      ApiEndpoints.deliveryCharge(storeId, fromDate, toDate, resultPerPage, pageFirstResult),
    );
    log('result-=-=-=-=-=$res');
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<DeliveryChargeResponse>.from(
            res.data.map((e) => DeliveryChargeResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<CustomersResponse>>> loadCustomersReport({
    required int pageFirstResult,
    required int resultPerPage,
    required int storeId,
    required String fromDate,
    required String toDate,
    required String filterValue,
    required int filterId,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final res = await networkProvider.get(
      ApiEndpoints.customersReport(
        pageFirstResult,
        resultPerPage,
        storeId,
        fromDate,
        toDate,
        filterId,
      ),
    );
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<CustomersResponse>.from(
            res.data.map((e) => CustomersResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<CategorySalesResponse>>> loadCategorySalesReport({
    required int storeId,
    required String fromDate,
    required String toDate,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final res = await networkProvider.get(
      ApiEndpoints.categorySalesReport(storeId, fromDate, toDate),
    );
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<CategorySalesResponse>.from(
            res.data.map((e) => CategorySalesResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<ParcelChargeResponse>>> loadParcelReport({
    required int pageFirstLimit,
    required int resultPerPage,
    required String fromDate,
    required String toDate,
    required int storeId,
    required int orderOptionId,
  }) async {
    final networkProvider = await NetworkProvider.create();

    final res = await networkProvider.get(
      ApiEndpoints.parcelCharge(
        pageFirstLimit,
        resultPerPage,
        fromDate,
        toDate,
        storeId,
        orderOptionId,
      ),
    );

    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<ParcelChargeResponse>.from(
            res.data.map((e) => ParcelChargeResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<UserShiftReportResponse>>> loadUserShiftReport({
    required int storeId,
    required String fromDate,
    required String toDate,
    required int pageFirstResult,
    required int resultPerPage,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final res = await networkProvider.get(
      ApiEndpoints.userShiftReport(
        storeId,
        fromDate,
        toDate,
        pageFirstResult,
        resultPerPage,
      ),
    );
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<UserShiftReportResponse>.from(
            res.data.map((e) => UserShiftReportResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<TaxResponse>> loadTaxReport({
    required String fromDate,
    required String toDate,
    required int storeId,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final res = await networkProvider.get(
      ApiEndpoints.taxReport(fromDate, toDate, storeId),
    );
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(data: TaxResponse.fromJson(res.data));
      default:
        return ResponseResult(error: '');
    }
  }

  @override
  Future<ResponseResult<List<TopstoresResponse>>> loadTopStores({
    required int roleId,
    required int userId,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final user = await AuthUtils.instance.readUserData();
    final int userId = user?.user?.companyUsersId ?? 0;
    final int roleId = user?.user?.userRoleId ?? 0;
    final res = await networkProvider.get(
      ApiEndpoints.topStores(userId, roleId),
    );
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: (res.data is List)
              ? List<TopstoresResponse>.from(
                  res.data.map((e) => TopstoresResponse.fromJson(e)),
                )
              : [],
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<PurchaseResponse>>> loadPurchaseReport({
    int? storeId,
    String? fromDate,
    String? toDate,
    int? pageFirstLimit,
    int? resultPerPage,
    int? purchaseType,
    int? supplierId,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final res = await networkProvider.get(
      ApiEndpoints.purchaseReport(
        storeId: storeId ?? 0,
        fromDate: fromDate ?? '',
        toDate: toDate ?? '',
        supplierId: supplierId ?? 0,
        purchaseType: purchaseType ?? 0,
        pageFirstLimit: pageFirstLimit ?? 0,
        resultPerPage: resultPerPage ?? 0,
      ),
    );

    log(
      "purchase report response:${purchaseType ?? 0}, ${ApiEndpoints.purchaseReport(storeId: storeId ?? 0, fromDate: fromDate ?? '', toDate: toDate ?? '', supplierId: supplierId ?? 0, purchaseType: purchaseType ?? 0, pageFirstLimit: pageFirstLimit ?? 0, resultPerPage: resultPerPage ?? 0)}",
    );
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<PurchaseResponse>.from(
            res.data.map((e) => PurchaseResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<OffersResponse>>> loadOffers({
    required int storeId,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final res = await networkProvider.get(ApiEndpoints.offers(storeId));
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: (res.data is List)
              ? List<OffersResponse>.from(
                  res.data.map((e) => OffersResponse.fromJson(e)),
                )
              : [],
        );
      default:
        return ResponseResult(error: '');
    }
  }

  @override
  Future<ResponseResult<List<SaleOnDeals>>> loadSaleOnDealsReport({
    required int storeId,
    required String fromDate,
    required String toDate,
    required int pageFirstResult,
    required int resultPerPage,
    required int pageSize,
    required int offset,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final res = await networkProvider.get(
      ApiEndpoints.salesDealsReport(
        storeId,
        fromDate,
        toDate,
        pageFirstResult,
        resultPerPage,
      ),
    );

    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<SaleOnDeals>.from(
            res.data.map((e) => SaleOnDeals.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<ChequeTrans>>> loadCheque({
    required int storeId,
    required String status,
    required String searchText,
    required String fromChequeIssueDate,
    required String toChequeIssueDate,
    required String fromChequeDate,
    required String toChequeDate,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final res = await networkProvider.get(
      ApiEndpoints.cheque(
        storeId,
        status,
        searchText,
        fromChequeIssueDate,
        toChequeIssueDate,
        fromChequeDate,
        toChequeDate,
      ),
    );

    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: (res.data['data'] as List)
              .map((e) => ChequeTrans.fromJson(e))
              .toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<ChequeStatusResponse>>> loadStatus({
    required int storeId,

    // required String fromChequeIssueDate,
    // required String toChequeIssueDate,
    // required String fromChequeDate,
    // required String toChequeDate,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final res = await networkProvider.get(
      ApiEndpoints.chequeStatus(
        // storeId,
        // status,
        // fromChequeIssueDate,
        // toChequeIssueDate,
        // fromChequeDate,
        // toChequeDate,
      ),
    );

    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<ChequeStatusResponse>.from(
            res.data.map((e) => ChequeStatusResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<MessReportResponse>>> loadMessReport({
    required int pageFirstResult,
    required int resultPerPage,
    required int storeId,
    required String fromDate,
    required String toDate,
    required String query,
    required int mealPlansId,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final res = await networkProvider.get(
      ApiEndpoints.messReport(
        pageFirstResult,
        resultPerPage,
        storeId,
        fromDate,
        toDate,
        query,
        mealPlansId,
      ),
    );
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<MessReportResponse>.from(
            res.data.map((e) => MessReportResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  // @override
  // Future<ResponseResult<List<MostSellingResponse>>> loadSellingProducts({
  //   required int storeId,
  // }) async {
  //   final networkProvider = await NetworkProvider.create();
  //   final res = await networkProvider.get(
  //     ApiEndpoints.categoryProduct(storeId),
  //   );
  //   switch (res.statusCode) {
  //     case 200:
  //     case 201:
  //       return ResponseResult(
  //         data: List<MostSellingResponse>.from(
  //           res.data.map((e) => MostSellingResponse.fromJson(e)),
  //         ).toList(),
  //       );
  //     default:
  //       return ResponseResult(data: []);
  //   }
  // }

  @override
  Future<ResponseResult<List<ProductsResponse>>> loadProductReport({
    int? pageFirstResult,
    int? resultPerPage,
    int? storeId,
    String? fromDate,
    String? toDate,
    int? roleId,
    int? userId,
    String? searchText,
    int? categoryId,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final user = await AuthUtils.instance.readUserData();
    final int userId = user?.user?.companyUsersId ?? 0;
    final int roleId = user?.user?.userRoleId ?? 0;
    final res = await networkProvider.get(
      ApiEndpoints.productReport(
        pageFirstResult ?? 0,
        resultPerPage ?? 0,
        storeId ?? 0,
        fromDate ?? '',
        toDate ?? '',
        roleId,
        userId,
        searchText ?? '',
        categoryId ?? 0,
      ),
    );
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: (res.data is List)
              ? List<ProductsResponse>.from(
                  res.data.map((e) => ProductsResponse.fromJson(e)),
                )
              : [],
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<SuppliersResponse>>> loadSuppliers({
    required int storeId,
    required int admin,
    required String query,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final res = await networkProvider.get(
      ApiEndpoints.supplierReport(storeId, admin, query),
    );
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<SuppliersResponse>.from(
            res.data.map((e) => SuppliersResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  //   @override
  // Future<ResponseResult<List<DaySummaryResponse>>> loadDaySummary({
  //   required int storeId,
  //   required String toDate,
  // }) async {
  //   final networkProvider = await NetworkProvider.create();
  //   final res = await networkProvider.get(
  //     ApiEndpoints.daySummary(storeId, toDate),
  //   );

  //   log("res.statusCode = ${res.statusCode}, res.data = ${res.data}");

  //   switch (res.statusCode) {
  //     case 200:
  //     case 201:
  //       if (res.data is List) {
  //         return ResponseResult(
  //                 data: [
  //               DaySummaryResponse.fromJson(res.data as Map<String, dynamic>),
  //             ],
  //           // data: (res.data as List)
  //           //     .map((e) => DaySummaryResponse.fromJson(e as Map<String, dynamic>))
  //           //     .                                        toList(),
  //         );
  //       } else {
  //         return ResponseResult(
  //           error: 'Expected List but got ${res.data.runtimeType}',
  //         );
  //       }

  //     default:
  //       return ResponseResult(data: []);
  //   }
  // }

  @override
  Future<ResponseResult<List<DaySummaryResponse>>> loadDaySummary({
    required int storeId,
    required String toDate,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final res = await networkProvider.get(
      ApiEndpoints.daySummary(storeId, toDate),
    );
    log(">>> RAW RESPONSE object//: $res");
    log(">>> STATUS CODE,,,: ${res.statusCode}");
    log(">>> RESPONSE DATA???: ${res.data}");
    log(">>> DATA TYPE---: ${res.data.runtimeType}");

    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<DaySummaryResponse>.from(
            res.data.map((e) => DaySummaryResponse.fromJson(e)).toList(),
          ),
        );

      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<ProductOffersResponse>>> loadProductOffers({
    required String fromDate,
    required String toDate,
    required int storeId,
    required int pageFirstResult,
    required int resultPerPage,
    required String search,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final res = await networkProvider.get(
      ApiEndpoints.productOffers(
        fromDate,
        toDate,
        storeId,
        pageFirstResult,
        resultPerPage,
        search,
      ),
    );
    log(">>> RAW RESPONSE object//: $res");
    log(">>> STATUS CODE,,,: ${res.statusCode}");
    log(">>> RESPONSE DATA???: ${res.data}");
    log(">>> DATA TYPE---: ${res.data.runtimeType}");
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<ProductOffersResponse>.from(
            res.data.map((e) => ProductOffersResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<SpecialOfferResponse>>> loadSpecialOffer({
    required int storeId,
  }) async {
    final networkProvider = await NetworkProvider.create();

    final res = await networkProvider.get(ApiEndpoints.specialOffer(storeId));

    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<SpecialOfferResponse>.from(
            res.data.map((e) => SpecialOfferResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<EditOfferResponse>> loadEditOffer(
    EditOfferResponse? request,
    int? prodOfferId,
    int? storeId,
  ) async {
    final networkProvider = await NetworkProvider.create();

    final res = await networkProvider.put(
      ApiEndpoints.editOffer(prodOfferId ?? 0),
      data: request?.toJson(),
    );
    log(">>> RAW RESPONSE object//: $res");
    log(">>> STATUS CODE,,,: ${res.statusCode}");
    log(">>> RESPONSE DATA???: ${res.data}");
    log(">>> DATA TYPE---: ${res.data.runtimeType}");

    switch (res.statusCode) {
      case 200:
      case 201:
        dynamic decoded = res.data;
        if (res.data is String) {
          decoded = jsonDecode(res.data);
        }

        if (decoded is Map<String, dynamic>) {
          return ResponseResult(data: EditOfferResponse.fromJson(decoded));
        } else if (decoded is int) {
          return ResponseResult(data: request);
        } else {
          return ResponseResult(error: 'Unexpected response format: $decoded');
        }

      default:
        return ResponseResult(error: '');
    }
  }

  @override
  Future<ResponseResult<CreateOfferResponse>> createProductOffer(
    CreateOfferResponse? offer,
  ) async {
    final networkProvider = await NetworkProvider.create();

    final res = await networkProvider.post(
      ApiEndpoints.createOffer(),
      data: offer?.toJson(),
    );

    switch (res.statusCode) {
      case 200:
      case 201:
        dynamic decoded = res.data;
        if (res.data is String) {
          decoded = jsonDecode(res.data);
        }

        if (decoded is Map<String, dynamic>) {
          return ResponseResult(data: CreateOfferResponse.fromJson(decoded));
        } else {
          return ResponseResult(error: 'Unexpected response format: $decoded');
        }

      default:
        return ResponseResult(error: '');
    }
  }

  @override
  Future<ResponseResult<List<DeliveryAgentResponse>>> getDeliveryAgent({
    required int deliveryPartnerId,
    required int storeId,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final res = await networkProvider.get(
      ApiEndpoints.getDeliveryAgent(deliveryPartnerId, storeId),
    );
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<DeliveryAgentResponse>.from(
            res.data.map((e) => DeliveryAgentResponse.fromJson(e)),
          ),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<PaymentMethodResponse>>> getPaymethod() async {
    final networkProvider = await NetworkProvider.create();

    final res = await networkProvider.get(ApiEndpoints.getPaymethod());
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<PaymentMethodResponse>.from(
            res.data.map((e) => PaymentMethodResponse.fromJson(e)),
          ),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<WaitersResponse>>> getWaiters({
    required int storeId,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final res = await networkProvider.get(ApiEndpoints.getWaiters(storeId));
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<WaitersResponse>.from(
            res.data.map((e) => WaitersResponse.fromJson(e)),
          ),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<KioskResponse>>> getKiosk({
    required int storeId,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final res = await networkProvider.get(ApiEndpoints.getKiosk(storeId));
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<KioskResponse>.from(
            res.data.map((e) => KioskResponse.fromJson(e)),
          ),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<CashierResponse>>> getCashier({
    required int storeId,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final res = await networkProvider.get(ApiEndpoints.getCashier(storeId));
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<CashierResponse>.from(
            res.data.map((e) => CashierResponse.fromJson(e)),
          ),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<ProductNameResponse>>> getProductName({
    required String query,
    required int storeId,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final res = await networkProvider.get(
      ApiEndpoints.getProductName(query, storeId),
    );
    log(">>> RAW RESPONSE object//: $res");
    log(">>> STATUS CODE,,,: ${res.statusCode}");
    log(">>> RESPONSE DATA???: ${res.data}");

    log(">>> DATA TYPE---: ${res.data.runtimeType}");
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<ProductNameResponse>.from(
            res.data.map((e) => ProductNameResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<CustomersResponse>>> custSearch({
    int? storeId,
    String? custSearch,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final res = await networkProvider.get(
      ApiEndpoints.customerSearch(storeId ?? 0, custSearch ?? ''),
    );

    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<CustomersResponse>.from(
            res.data.map((e) => CustomersResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }
}
