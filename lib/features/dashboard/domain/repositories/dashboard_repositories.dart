import 'package:admin_v2/features/dashboard/domain/models/Ordergraph/orders_graph_response.dart';
import 'package:admin_v2/shared/utils/result.dart';

abstract class DashboardRepositories {
  Future<ResponseResult<List<OrdersGraphResponse>>> ordersGraph();
}
