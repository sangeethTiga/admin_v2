import 'package:admin_v2/features/products/domain/models/category/category_response.dart';
import 'package:admin_v2/features/products/domain/models/edit_update_req/edit_update_response.dart';
import 'package:admin_v2/features/products/domain/models/product/product_response.dart';
import 'package:admin_v2/features/products/domain/models/stock_status/stock_status_response.dart';
import 'package:admin_v2/features/products/domain/models/stock_update_req/stock_update_request.dart';
import 'package:admin_v2/features/products/domain/models/variant_response/variants_response.dart';
import 'package:admin_v2/shared/utils/result.dart';

abstract class ProductRepositories {
  Future<ResponseResult<List<ProductResponse>>> products({
    int? storeId,
    int? catId,
    String? search,
    String? barCode,
  });
  Future<ResponseResult<EditUpdateResponse>> updateProduct(EditUpdateResponse req,int? productId,int? storeId);
  Future<ResponseResult<List<StockStatusResponse>>> stockStatus();
  Future<ResponseResult<dynamic>> stockUpdate({
    StockUpdateRequest request,
  });
  Future<ResponseResult<List<CategoryResponse>>> category(int storeId);
Future<ResponseResult<List<VariantsResponse>>>getVariant(int productId);

}
