import 'package:admin_v2/features/orders/domain/models/order/order_response.dart';
import 'package:admin_v2/features/orders/domain/models/order_detail/order_detail_response.dart';
import 'package:admin_v2/features/orders/domain/models/order_request/order_request.dart';
import 'package:admin_v2/features/orders/domain/models/searchOrder/search_response.dart';
import 'package:admin_v2/features/orders/domain/models/status/order_status_response.dart';
import 'package:admin_v2/shared/utils/result.dart';

abstract class OrderRepositories {
  Future<ResponseResult<List<OrderStatusResponse>>> orderStatus();
  Future<ResponseResult<List<OrderResponse>>> orders({
    OrderRequest req,
    bool? isEdit,
    int? orderId,
    int? orderStatusId,
    int? storeId,
  });
  Future<ResponseResult<OrderDetailResponse>> orderDetail(int orderId);
  Future<ResponseResult<List<SearchResponse>>> searchOrder({
    int? storeId,
    String? search,
  });

  Future<ResponseResult<dynamic>> updateOrder({
    int? orderId,
    int? orderStatusId,
    int? storeId,
  });
}
