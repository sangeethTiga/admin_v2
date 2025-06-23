import 'package:admin_v2/features/dashboard/domain/models/Ordergraph/orders_graph_response.dart';
import 'package:admin_v2/features/dashboard/domain/models/revenueGraph/revenue_graph_response.dart';
import 'package:admin_v2/features/dashboard/domain/repositories/dashboard_repositories.dart';
import 'package:admin_v2/shared/api/endpoint/api_endpoints.dart';
import 'package:admin_v2/shared/api/network/network.dart';

import 'package:admin_v2/shared/utils/result.dart';

class DashboardService implements DashboardRepositories {
  @override
  Future<ResponseResult<List<OrdersGraphResponse>>> ordersGraph({
    required String dateRangeId,
    required int roleId,
    required String storeArray,
    required int userId,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final body = {
      "date_range_id": dateRangeId,
      "role_id": roleId,
      "storeArray": storeArray,
      "user_id": userId,
    };

    final res = await networkProvider.post(
      ApiEndpoints.ordersGraph(),
      data: body,
    );
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

  @override
  Future<ResponseResult<List<RevenueResponse>>> loadRevenueGraph({
    required int dateRangeId,
    required int roleId,
    required String storeArray,
    required int userId,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final body = {
      "date_range_id": dateRangeId,
      "role_id": roleId,
      "storeArray": storeArray,
      "user_id": userId,
    };
    final res = await networkProvider.post(
      ApiEndpoints.graphRevenue(),
      data: body,
    );
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<RevenueResponse>.from(
            res.data.map((e) => RevenueResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }
}
