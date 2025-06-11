import 'package:admin_v2/features/report/domain/models/categorysales/categorySales_response.dart';
import 'package:admin_v2/features/report/domain/models/customers/customers_report_response.dart';
import 'package:admin_v2/features/report/domain/models/delivery_charge/delivery_charge_response.dart';
import 'package:admin_v2/features/report/domain/models/expense/expense_report_response.dart';
import 'package:admin_v2/features/report/domain/models/offers/offers_response.dart';
import 'package:admin_v2/features/report/domain/models/parcel/parcel_charge_response.dart';
import 'package:admin_v2/features/report/domain/models/profit/profitloss_response.dart';
import 'package:admin_v2/features/report/domain/models/purchase/purchase_response.dart';
import 'package:admin_v2/features/report/domain/models/revenue/revenue_report_response.dart';
import 'package:admin_v2/features/report/domain/models/sales/sales_report_response.dart';
import 'package:admin_v2/features/report/domain/models/tax/tax_response.dart';
import 'package:admin_v2/features/report/domain/models/topStores/topStores_response.dart';
import 'package:admin_v2/features/report/domain/models/usershift/usershift_report_response.dart';
import 'package:admin_v2/shared/utils/result.dart';

abstract class ReportRepositories {
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
  });

  Future<ResponseResult<List<ReveneReportResponse>>> loadRevenueReport({
    required int pageFirstResult,
    required int resultPerPage,
    required int storeId,
    required String fromDate,
    required String toDate,
  });

  Future<ResponseResult<List<ExpenseReportResponse>>> loadExpenseReport({
    required int pageFirstResult,
    required int resultPerPage,
    required int storeId,
    required String fromDate,
    required String toDate,
    required int accountId,
  });
  Future<ResponseResult<List<ProfitlossResponse>>> loadProfitAndLoss({
    required int storeId,
    required String fromDate,
    required String toDate,
  });
  Future<ResponseResult<List<DeliveryChargeResponse>>> loadDeliveryCharge({
    // required int pageFirstResult,
    // required int resultPerPage,
    required int storeId,
    required int pageSize,
    required int offset,
    required String fromDate,
    required String toDate,
  });

  Future<ResponseResult<List<CustomersResponse>>> loadCustomersReport({
    required int pageFirstResult,
    required int resultPerPage,
    required int storeId,
    required String fromDate,
    required String toDate,
    required String filterValue,
    required int filterId,
  });

  Future<ResponseResult<List<CategorySalesResponse>>> loadCategorySalesReport({
    required int storeId,
    required String fromDate,
    required String toDate,
  });
  Future<ResponseResult<List<ParcelChargeResponse>>> loadParcelReport({
    required int pageFirstLimit,
    required int resultPerPage,
    required String fromDate,
    required String toDate,
    required int storeId,
    required int orderOptionId,
  });

  Future<ResponseResult<List<UserShiftReportResponse>>> loadUserShiftReport({
    required int storeId,
    required String fromDate,
    required String toDate,
    required int pageFirstResult,
    required int resultPerPage,
  });

  Future<ResponseResult<List<PurchaseResponse>>> loadPurchaseReport({
    required int storeId,
    required String fromDate,
    required String toDate,
    required int pageFirstLimit,
    required int resultPerPage,
    required int purchaseType,
    required int supplierId,
  });

  Future<ResponseResult<TaxResponse>> loadTaxReport({
    required int storeId,
    required String fromDate,
    required String toDate,
  });
  Future<ResponseResult<List<TopstoresResponse>>> loadTopStores({
    required int roleId,
    required int userId,
  });
  Future<ResponseResult<List<OffersResponse>>> loadOffers({
    required int storeId,
  });
}
