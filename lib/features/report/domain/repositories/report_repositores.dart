import 'package:admin_v2/features/report/domain/models/expense/expense_report_response.dart';
import 'package:admin_v2/features/report/domain/models/profit/profitloss_response.dart';
import 'package:admin_v2/features/report/domain/models/revenue/revenue_report_response.dart';
import 'package:admin_v2/features/report/domain/models/sales/sales_report_response.dart';
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
}
