import 'package:admin_v2/features/orders/domain/models/order/order_response.dart';
import 'package:admin_v2/features/orders/domain/models/order_detail/order_detail_response.dart';
import 'package:admin_v2/features/orders/domain/models/order_request/order_request.dart';
import 'package:admin_v2/features/orders/domain/models/status/order_status_response.dart';
import 'package:admin_v2/features/orders/domain/repositories/order_repositories.dart';
import 'package:admin_v2/shared/api/endpoint/api_endpoints.dart';
import 'package:admin_v2/shared/api/network/network.dart';
import 'package:admin_v2/shared/utils/result.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: OrderRepositories)
class OrderService implements OrderRepositories {
  @override
  Future<ResponseResult<List<OrderStatusResponse>>> orderStatus() async {
    final networkProvider = await NetworkProvider.create();

    final res = await networkProvider.get(ApiEndpoints.status);
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<OrderStatusResponse>.from(
            res.data.map((e) => OrderStatusResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<OrderResponse>>> orders({
    OrderRequest? req,
  }) async {
    final networkProvider = await NetworkProvider.create();

    final res = await networkProvider.post(
      ApiEndpoints.orderList,
      data: req?.toJson(),
    );
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<OrderResponse>.from(
            res.data.map((e) => OrderResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<OrderDetailResponse>> orderDetail(int orderId) async {
    final networkProvider = await NetworkProvider.create();
    final res = await networkProvider.get(ApiEndpoints.orderDetail(orderId));
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(data: OrderDetailResponse.fromJson(res.data));
      default:
        return ResponseResult(error: 'error');
    }
  }
}
