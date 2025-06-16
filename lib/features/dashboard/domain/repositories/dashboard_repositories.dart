import 'package:admin_v2/features/dashboard/domain/models/Ordergraph/orders_graph_response.dart';
import 'package:admin_v2/features/dashboard/domain/models/revenueGraph/revenue_graph_response.dart';
import 'package:admin_v2/shared/utils/result.dart';

abstract class DashboardRepositories {
  Future<ResponseResult<List<OrdersGraphResponse>>> ordersGraph();

  Future<ResponseResult<List<RevenueResponse>>> loadRevenueGraph({
    required int dateRangeId,
    required int roleId,
    required int storeArray,
    required int userId,
  });
}
