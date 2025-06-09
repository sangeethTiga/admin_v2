import 'package:admin_v2/features/products/domain/models/product/product_response.dart';
import 'package:admin_v2/features/products/domain/models/stock_status/stock_status_response.dart';
import 'package:admin_v2/features/products/domain/repositories/product_repositories.dart';
import 'package:admin_v2/shared/api/endpoint/api_endpoints.dart';
import 'package:admin_v2/shared/api/network/network.dart';
import 'package:admin_v2/shared/utils/result.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProductRepositories)
class ProductService implements ProductRepositories {
  @override
  Future<ResponseResult<List<ProductResponse>>> products({int? storeId}) async {
    final networkProvider = await NetworkProvider.create();

    final res = await networkProvider.get(
      ApiEndpoints.proudtcList(storeId ?? 0),
    );
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<ProductResponse>.from(
            res.data.map((e) => ProductResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<StockStatusResponse>>> stockStatus() {
    // TODO: implement stockStatus
    throw UnimplementedError();
  }

  @override
  Future<ResponseResult<List<ProductResponse>>> stockUpdate() {
    // TODO: implement stockUpdate
    throw UnimplementedError();
  }
}
