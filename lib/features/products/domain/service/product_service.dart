import 'package:admin_v2/features/products/domain/models/category/category_response.dart';
import 'package:admin_v2/features/products/domain/models/product/product_response.dart';
import 'package:admin_v2/features/products/domain/models/stock_status/stock_status_response.dart';
import 'package:admin_v2/features/products/domain/models/stock_update_req/stock_update_request.dart';
import 'package:admin_v2/features/products/domain/models/variant_response/variants_response.dart';
import 'package:admin_v2/features/products/domain/repositories/product_repositories.dart';
import 'package:admin_v2/shared/api/endpoint/api_endpoints.dart';
import 'package:admin_v2/shared/api/network/network.dart';
import 'package:admin_v2/shared/utils/result.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProductRepositories)
class ProductService implements ProductRepositories {
  @override
  Future<ResponseResult<List<ProductResponse>>> products({
    int? storeId,
    int? catId,
    String? search,
    String? barCode,
  }) async {
    final networkProvider = await NetworkProvider.create();

    final res = await networkProvider.get(
      ApiEndpoints.proudtcList(storeId ?? 0, catId ?? 0, search ?? '',barCode?? ''),
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
  Future<ResponseResult<List<StockStatusResponse>>> stockStatus() async {
    final networkProvider = await NetworkProvider.create();

    final res = await networkProvider.get(ApiEndpoints.stockStatus);
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<StockStatusResponse>.from(
            res.data.map((e) => StockStatusResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<dynamic>> stockUpdate({
    StockUpdateRequest? request,
  }) async {
    final networkProvider = await NetworkProvider.create();

    final res = await networkProvider.post(
      ApiEndpoints.stockUpdate,
      data: request?.toJson(),
    );
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: res.  data
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<CategoryResponse>>> category(int storeId) async {
    final networkProvider = await NetworkProvider.create();

    final res = await networkProvider.get(ApiEndpoints.category(storeId));
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<CategoryResponse>.from(
            res.data.map((e) => CategoryResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<VariantsResponse>>> getVariant(int productId) async{
    final networkProvider = await NetworkProvider.create();
    final res=await networkProvider.get(ApiEndpoints.getVariant(productId));
    switch(res.statusCode){
      case 200:
      case 201:
      return ResponseResult(data: List<VariantsResponse>.from(
        res.data.map((e) => VariantsResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  }

