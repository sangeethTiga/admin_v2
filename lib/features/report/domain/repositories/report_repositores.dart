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
import 'package:admin_v2/features/report/domain/models/mostSellingProducts/most_selling_response.dart';
import 'package:admin_v2/features/report/domain/models/mostSellingProducts/products_response.dart';
import 'package:admin_v2/features/report/domain/models/offers/offers_response.dart';
import 'package:admin_v2/features/report/domain/models/parcel/parcel_charge_response.dart';
import 'package:admin_v2/features/report/domain/models/paymentMethod/payment_method_response.dart';
import 'package:admin_v2/features/report/domain/models/product_offers/product_offers_response.dart';
//import 'package:admin_v2/features/report/domain/models/product_offers/product_offers_response.dart';
import 'package:admin_v2/features/report/domain/models/profit/profitloss_response.dart';
import 'package:admin_v2/features/report/domain/models/purchase/purchase_response.dart';
import 'package:admin_v2/features/report/domain/models/revenue/revenue_report_response.dart';
import 'package:admin_v2/features/report/domain/models/sale_deals/sale_on_deals_response.dart'
    show SaleOnDeals;
import 'package:admin_v2/features/report/domain/models/sale_deals/sale_on_deals_response.dart';
import 'package:admin_v2/features/report/domain/models/sales/sales_report_response.dart';
import 'package:admin_v2/features/report/domain/models/specialOffer/special_offer_response.dart';
import 'package:admin_v2/features/report/domain/models/suppliers/suppliers_response.dart';
//import 'package:admin_v2/features/report/domain/models/suppliers/suppliers_response.dart';
import 'package:admin_v2/features/report/domain/models/tax/tax_response.dart';
import 'package:admin_v2/features/report/domain/models/topStores/topStores_response.dart';
import 'package:admin_v2/features/report/domain/models/usershift/usershift_report_response.dart';
import 'package:admin_v2/features/report/domain/models/waiters_response/waiters_response.dart';
//import 'package:admin_v2/features/report/screens/most_selling_products.dart';
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

  Future<ResponseResult<List<SaleOnDeals>>> loadSaleOnDealsReport({
    required int storeId,
    required String fromDate,
    required String toDate,
    required int pageFirstResult,
    required int resultPerPage,
    required int pageSize,
    required int offset,
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
  Future<ResponseResult<List<ChequeTrans>>> loadCheque({
    required int storeId,
    required String status,
    required String searchText,
    required String fromChequeIssueDate,
    required String toChequeIssueDate,
    required String fromChequeDate,
    required String toChequeDate,
  });
  Future<ResponseResult<List<MessReportResponse>>> loadMessReport({
    required int storeId,
    required int pageFirstResult,
    required int resultPerPage,
    required String fromDate,
    required String toDate,
    required String query,
    required int mealPlansId,
  });
  Future<ResponseResult<List<ChequestatusResponse>>> loadStatus({
    required int storeId,
  });
  Future<ResponseResult<List<MostSellingResponse>>> loadSellingProducts({
    required int storeId,
  });
  Future<ResponseResult<List<ProductsResponse>>> loadProductReport({
    required int pageFirstResult,
    required int resultPerPage,
    required int storeId,
    required String fromDate,
    required String toDate,
    required int roleId,
    required int userId,
    required int categoryId,
    required String searchText,
  });

  Future<ResponseResult<List<SuppliersResponse>>> loadSuppliers({
    required int storeId,
    required int admin,
    required String query,
  });

  Future<ResponseResult<List<DaySummaryResponse>>> loadDaySummary({
    required int storeId,
    required String toDate,
  });

  Future<ResponseResult<List<ProductOffersResponse>>> loadProductOffers({
    required String fromDate,
    required String toDate,
    required int storeId,
    required int pageFirstResult,
    required int resultPerPage,
    required String search,
  });

  Future<ResponseResult<List<SpecialOfferResponse>>> loadSpecialOffer({
    required int storeId,
  });
  Future<ResponseResult<EditOfferResponse>> loadEditOffer(
    EditOfferResponse req,
    int productId,
    int storeId,
  );

  Future<ResponseResult<CreateOfferResponse>> loadProductOffer(
    CreateOfferResponse req,
    int productId,
    int storeId
  );
  Future<ResponseResult <List<DeliveryAgentResponse>>>getDeliveryAgent(
    {required int deliveryPartnerId,required int storeId}
  );

  Future<ResponseResult <List<PaymentMethodResponse>>> getPaymethod();
  Future<ResponseResult<List<WaitersResponse>>>getWaiters({required int storeId});
  Future<ResponseResult<List<KioskResponse>>>getKiosk({required int storeId});
  Future<ResponseResult<List<CashierResponse>>>getCashier({required int storeId});
}
