import 'package:admin_v2/features/dashboard/domain/models/Ordergraph/orders_graph_response.dart';
import 'package:admin_v2/features/dashboard/domain/models/revenueGraph/revenue_graph_response.dart';
import 'package:admin_v2/features/report/domain/models/mostSellingProducts/most_selling_response.dart';
import 'package:admin_v2/shared/utils/result.dart';

abstract class DashboardRepositories {
  Future<ResponseResult<List<OrdersGraphResponse>>> ordersGraph({
    required String dateRangeId,
    required int roleId,
    required int storeArray,
    required int userId,
  });

  Future<ResponseResult<List<RevenueResponse>>> loadRevenueGraph({
    required String dateRangeId,
    required int roleId,
    required String storeArray,
    required int userId,
  });
    Future<ResponseResult<List<MostSellingResponse>>> loadProductsCategory({
    required int storeId,
    // required int categoryId,
  });
}
