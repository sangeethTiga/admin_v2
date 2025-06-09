import 'package:admin_v2/features/products/domain/models/product/product_response.dart';
import 'package:admin_v2/features/products/domain/models/stock_status/stock_status_response.dart';
import 'package:admin_v2/shared/utils/result.dart';

abstract class ProductRepositories {
  Future<ResponseResult<List<ProductResponse>>> products({int? storeId});
  Future<ResponseResult<List<StockStatusResponse>>> stockStatus();
  Future<ResponseResult<List<ProductResponse>>> stockUpdate();
}
