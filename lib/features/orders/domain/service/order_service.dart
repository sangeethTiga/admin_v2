import 'package:admin_v2/features/orders/domain/models/order/order_response.dart';
import 'package:admin_v2/features/orders/domain/models/order_detail/order_detail_response.dart';
import 'package:admin_v2/features/orders/domain/models/order_request/order_request.dart';
import 'package:admin_v2/features/orders/domain/models/searchOrder/search_response.dart';
import 'package:admin_v2/features/orders/domain/models/status/order_status_response.dart';
import 'package:admin_v2/features/orders/domain/repositories/order_repositories.dart';
import 'package:admin_v2/shared/api/endpoint/api_endpoints.dart';
import 'package:admin_v2/shared/api/network/network.dart';
import 'package:admin_v2/shared/utils/result.dart';
import 'package:dio/src/response.dart';
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
    bool? isEdit,
    int? orderId,
    int? orderStatusId,
    int? storeId,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final Response res;
    if (isEdit == true) {
      res = await networkProvider.put(
        ApiEndpoints.orderList(orderId: orderId),
        data: {
          "card_amount": 0,
          "cash_amount": 0,
          "companyUsers_id": 0,
          "created_by": 1,
          "order_status_code": orderStatusId,
          "store_id": storeId,
        },
      );
    } else {
      res = await networkProvider.post(
        ApiEndpoints.newOrder,
        data: req?.toJson(),
      );
    }

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

  @override
  Future<ResponseResult<List<SearchResponse>>> searchOrder({
    int? storeId,
    String? search,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final res = await networkProvider.get(
      ApiEndpoints.searchOrder(storeId ?? 0, search ?? ''),
    );

    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<SearchResponse>.from(
            res.data.map((e) => SearchResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<dynamic>> updateOrder({
    int? orderId,
    int? orderStatusId,
    int? storeId,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final res = await networkProvider.put(
      ApiEndpoints.orderList(orderId: orderId),
      data: {
        "card_amount": 0,
        "cash_amount": 0,
        "companyUsers_id": 0,
        "created_by": 1,
        "order_status_code": orderStatusId.toString(),
        "store_id": storeId,
      },
    );
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(data: res.data);
      default:
        return ResponseResult(data: []);
    }
  }
}
