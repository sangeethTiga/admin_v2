import 'dart:developer';

import 'package:admin_v2/features/report/domain/models/categorysales/categorySales_response.dart';
import 'package:admin_v2/features/report/domain/models/customers/customers_report_response.dart';
import 'package:admin_v2/features/report/domain/models/delivery_charge/delivery_charge_response.dart';
import 'package:admin_v2/features/report/domain/models/expense/expense_report_response.dart';
import 'package:admin_v2/features/report/domain/models/mess/mess_report_response.dart';
import 'package:admin_v2/features/report/domain/models/offers/offers_response.dart';
import 'package:admin_v2/features/report/domain/models/parcel/parcel_charge_response.dart';
import 'package:admin_v2/features/report/domain/models/product_offers/product_offers_response.dart';
import 'package:admin_v2/features/report/domain/models/profit/profitloss_response.dart';
import 'package:admin_v2/features/report/domain/models/purchase/purchase_response.dart';
import 'package:admin_v2/features/report/domain/models/revenue/revenue_report_response.dart';
import 'package:admin_v2/features/report/domain/models/sale_deals/sale_on_deals_response.dart';
import 'package:admin_v2/features/report/domain/models/sales/sales_report_response.dart';
import 'package:admin_v2/features/report/domain/models/suppliers/suppliers_response.dart';
import 'package:admin_v2/features/report/domain/models/tax/tax_response.dart';
import 'package:admin_v2/features/report/domain/models/topStores/topStores_response.dart';
import 'package:admin_v2/features/report/domain/models/usershift/usershift_report_response.dart';
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
    required int storeId,
    required String type,
    required String duration,
    required String paymentMethod,
    required String waiter,
    required String shift,
    required String cashier,
    required String status,
    required String kiosks,
    required String cashe,
    required String groupBy,
    required String deliveryPartner,
    required String isDayClosed,
    required String fromDate,
    required String toDate,
  }) async {
    final networkProvider = await NetworkProvider.create();

    final res = await networkProvider.get(
      ApiEndpoints.salesReport(
        selectedStoreId: storeId,
        selectedDeliveryPartner: deliveryPartner,
        selectedPaymentMethods: paymentMethod,
        selectedWaites: waiter,
        selectedShifts: shift,
        isDayClosed: isDayClosed == 'true' ? true : false,
        selectedCashe: cashe,
        selectedKIOS: kiosks,
        selectedGroupBy: groupBy,
        tempFromDate: fromDate,
        toDate: toDate,
        selectedDuration: duration,
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
    required int pageSize,
    required int offset,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final res = await networkProvider.get(
      ApiEndpoints.deliveryCharge(storeId, fromDate, toDate, pageSize, offset),
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
        storeId,
        pageFirstLimit,
        fromDate,
        toDate,
        resultPerPage,
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
    required int storeId,
    required String fromDate,
    required String toDate,
    required int pageFirstLimit,
    required int resultPerPage,
    required int purchaseType,
    required int supplierId,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final res = await networkProvider.get(
      ApiEndpoints.purchaseReport(
        storeId,
        fromDate,
        toDate,
        supplierId,
        purchaseType,
        pageFirstLimit,
        resultPerPage,
      ),
    );
    print('????purchaseDeals??? $res');
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
    print('SaleOnDeals res: $res');
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

  @override
  Future<ResponseResult<List<ProductOffersResponse>>> loadProductOffers({
    required int storeId,
    required String fromDate,
    required String toDate,
    required int pageFirstResult,
    required int resultPerPage,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final res = await networkProvider.get(
      ApiEndpoints.productOffers(
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
          data: List<ProductOffersResponse>.from(
            res.data.map((e) => ProductOffersResponse.fromJson(e)),
          ).toList(),
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
}
