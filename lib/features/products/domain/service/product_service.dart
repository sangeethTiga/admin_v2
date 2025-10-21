import 'dart:convert';
//import 'dart:math';
import 'dart:developer';

import 'package:admin_v2/features/products/domain/models/category/category_response.dart';
import 'package:admin_v2/features/products/domain/models/company/company_response.dart';
import 'package:admin_v2/features/products/domain/models/create_product/create_product_response.dart';
import 'package:admin_v2/features/products/domain/models/edit_update_req/edit_update_response.dart';
import 'package:admin_v2/features/products/domain/models/main_category/main_category_response.dart';
import 'package:admin_v2/features/products/domain/models/product/product_response.dart';
import 'package:admin_v2/features/products/domain/models/stock_status/stock_status_response.dart';
import 'package:admin_v2/features/products/domain/models/stock_update_req/stock_update_request.dart';
import 'package:admin_v2/features/products/domain/models/unit/unit_response.dart';
import 'package:admin_v2/features/products/domain/models/variant_response/variants_response.dart';
import 'package:admin_v2/features/products/domain/repositories/product_repositories.dart';
import 'package:admin_v2/features/report/domain/models/productimage/product_image_response.dart';
//import 'package:admin_v2/features/report/domain/models/productimage/product_image.dart'; 
import 'package:admin_v2/shared/api/endpoint/api_endpoints.dart';
import 'package:admin_v2/shared/api/network/network.dart';
import 'package:admin_v2/shared/utils/result.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProductRepositories)
class ProductService implements ProductRepositories {
  @override
  Future<ResponseResult<List<ProductResponse>>> products({
    int? storeId,
    int? catId,
    String? search,
    String? barCode,
    int? filterId,
    int? pageFirstResult,
    int? resultPerPage,
  }) async {
    final networkProvider = NetworkProvider();

    final res = await networkProvider.get(
      ApiEndpoints.proudtcList(
        storeId ?? 0,
        catId ?? 0,
        search ?? '',
        barCode ?? '',
        filterId ?? 0,
        pageFirstResult ?? 0,
        resultPerPage ?? 0,
      ),
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
    final networkProvider = NetworkProvider();

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
    final networkProvider = NetworkProvider();

    final res = await networkProvider.post(
      ApiEndpoints.stockUpdate,
      data: request?.toJson(),
    );
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(data: res.data);
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<CategoryResponse>>> category(int storeId) async {
    final networkProvider = NetworkProvider();

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
  Future<ResponseResult<List<MainCategoryResponse>>> mainCategory(
    int storeId,
    int parentCategoryId,
  ) async {
    final networkProvider = NetworkProvider();

    final res = await networkProvider.get(
      ApiEndpoints.mainCategory(storeId, parentCategoryId),
    );
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<MainCategoryResponse>.from(
            res.data.map((e) => MainCategoryResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<UnitResponse>>> unit() async {
    final networkProvider = NetworkProvider();

    final res = await networkProvider.get(ApiEndpoints.unit());
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<UnitResponse>.from(
            res.data.map((e) => UnitResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  
  Future<ResponseResult<CreateProductResponse>> createProduct(
    CreateProductResponse? product,
  ) async {
    final networkProvider = NetworkProvider();

    final res = await networkProvider.post(
      ApiEndpoints.createProduct(),
      data: product?.toJson(),
    );

    switch (res.statusCode) {
      case 200:
      case 201:
        dynamic decoded = res.data;
        if (res.data is String) {
          decoded = jsonDecode(res.data);
        }

        if (decoded is Map<String, dynamic>) {
          return ResponseResult(data: CreateProductResponse.fromJson(decoded));
        } else {
          return ResponseResult(error: 'Unexpected response format: $decoded');
        }

      default:
        return ResponseResult(error: '');
    }
  }
@override
Future<ResponseResult<ProductImageListResponse>> uploadProductImage({
  required XFile file,
  required int userId,
  required int resourceType,
  required int companyId,
      required int storeId,
}) async {
  try {
    final networkProvider = await NetworkProvider.create();

    log('Uploading image with userId: $userId, resourceType: $resourceType, companyId: $companyId');

    final formData = FormData.fromMap({
      'User_id': userId.toString(),
      'resource_type': resourceType.toString(),
      'company_id': companyId.toString(),
      'store_id':storeId,
      'file': await MultipartFile.fromFile(file.path, filename: file.name),
    });

    final res = await networkProvider.dio.post(
      ApiEndpoints.uploadProductImage(),
      data: formData,
      options: Options(headers: {
        'Authorization': 'Bearer your_actual_token_here',
        'Content-Type': 'multipart/form-data',
      }),
    );

    if (res.statusCode == 200 || res.statusCode == 201) {
      final decoded = res.data is String ? jsonDecode(res.data) : res.data;
      log('✅ Response from server: $decoded');

      if (decoded is List && decoded.isNotEmpty) {
        return ResponseResult(
          data: ProductImageListResponse.fromJson(decoded.first),
        );
      } else {
        return ResponseResult(error: 'Unexpected response format');
      }
    } else {
      return ResponseResult(error: 'Failed with status ${res.statusCode}');
    }
  } catch (e, s) {
    log('❌ Exception during image upload: $e', stackTrace: s);
    return ResponseResult(error: e.toString());
  }
}


  // if (res.statusCode == 200 || res.statusCode == 201) {
  //   final decoded = res.data is String ? jsonDecode(res.data) : res.data;
  //   if (decoded is Map<String, dynamic>) {
  //     return ResponseResult(data: ProductImageListResponse.fromJson(decoded));
  //   }
  //   return ResponseResult(error: 'Unexpected response: $decoded');
  // } else {
  //   return ResponseResult(error: 'Failed with status ${res.statusCode}');
  // }





  @override
  Future<ResponseResult<EditUpdateResponse>> updateProduct(
    EditUpdateResponse? request,
    int? productId,
    int? mainCategoryId,
  ) async {
    final networkProvider = NetworkProvider();
    final res = await networkProvider.post(
      ApiEndpoints.updateProduct(productId!),
      data: request?.toJson(),
    );
    switch (res.statusCode) {
      case 200:
      case 201:
        dynamic decoded = res.data;
        if (res.data is String) {
          decoded = jsonDecode(res.data);
        }

        if (decoded is Map<String, dynamic>) {
          return ResponseResult(data: EditUpdateResponse.fromJson(decoded));
        } else {
          return ResponseResult(error: 'Unexpected response format: $decoded');
        }

      default:
        return ResponseResult(error: '');
    }
  }

  @override
  Future<ResponseResult<List<VariantsResponse>>> getVariant(
    int productId,
  ) async {
    final networkProvider = NetworkProvider();
    final res = await networkProvider.get(ApiEndpoints.getVariant(productId));
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<VariantsResponse>.from(
            res.data.map((e) => VariantsResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }


  @override
  Future<ResponseResult<List<CompanyResponse>>> company() async {
    final networkProvider = await NetworkProvider.create();

    final res = await networkProvider.get(ApiEndpoints.company);
    switch (res.statusCode) {
      case 201:
      case 200:
        return ResponseResult(
          data: List<CompanyResponse>.from(
            res.data.map((e) => CompanyResponse.fromJson(e)),
          ).toList(),
        );
      default:
        throw ResponseResult(data: res.statusMessage);
    }
  }

}
