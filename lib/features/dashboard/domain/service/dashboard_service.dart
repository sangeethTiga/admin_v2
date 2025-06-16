import 'package:admin_v2/features/dashboard/domain/models/Ordergraph/orders_graph_response.dart';
import 'package:admin_v2/features/dashboard/domain/repositories/dashboard_repositories.dart';
import 'package:admin_v2/shared/api/endpoint/api_endpoints.dart';
import 'package:admin_v2/shared/api/network/network.dart';
import 'package:admin_v2/shared/utils/auth/auth_utils.dart';
import 'package:admin_v2/shared/utils/result.dart';

class DashboardService implements DashboardRepositories {
  @override
  Future<ResponseResult<List<OrdersGraphResponse>>> ordersGraph() async {
    final user = await AuthUtils.instance.readUserData();
    final networkProvider = await NetworkProvider.create();

    final res = await networkProvider.get(ApiEndpoints.ordersGraph());
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<OrdersGraphResponse>.from(
            res.data.map((e) => OrdersGraphResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }
}
