import 'package:admin_v2/features/common/domain/models/account/account_response.dart';
import 'package:admin_v2/features/common/domain/models/deliveryOption/option_response.dart';
import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/common/domain/repositores/common_repostories.dart';
import 'package:admin_v2/features/report/domain/models/mostSellingProducts/most_selling_response.dart';
import 'package:admin_v2/shared/api/endpoint/api_endpoints.dart';
import 'package:admin_v2/shared/api/network/network.dart';
import 'package:admin_v2/shared/app/list/common_map.dart';
import 'package:admin_v2/shared/utils/auth/auth_utils.dart';
import 'package:admin_v2/shared/utils/result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CommonRepostories)
class CommonService implements CommonRepostories {
  @override
  Future<ResponseResult<List<StoreResponse>>> storeList() async {
    final user = await AuthUtils.instance.readUserData();
    final networkProvider = await NetworkProvider.create();

    final res = await networkProvider.get(
      ApiEndpoints.store(user?.user?.userRoleId ?? 0),
    );
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<StoreResponse>.from(
            res.data.map((e) => StoreResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<AccountDataResponse>>> account() async {
    final networkProvider = await NetworkProvider.create();

    final res = await networkProvider.get(ApiEndpoints.account);
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<AccountDataResponse>.from(
            res.data.map((e) => AccountDataResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<OptionResponse>>> orderOption({
    required int storeId,
    required int appTypeId,
  }) async {
    final networkProvider = await NetworkProvider.create();

    final res = await networkProvider.get(
      ApiEndpoints.orderOption(storeId, appTypeId),
    );
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<OptionResponse>.from(
            res.data.map((e) => OptionResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }

  @override
  Future<ResponseResult<List<PurchaseType>>> purchaseType() {
    throw UnimplementedError();
  }

  @override
  Future<ResponseResult<List<MostSellingResponse>>> loadSellingProducts({
    required int storeId,
    required int categoryId,
  }) async {
    final networkProvider = await NetworkProvider.create();
    final res = await networkProvider.get(
      ApiEndpoints.sellingProducts(storeId),
    );
    switch (res.statusCode) {
      case 200:
      case 201:
        return ResponseResult(
          data: List<MostSellingResponse>.from(
            res.data.map((e) => MostSellingResponse.fromJson(e)),
          ).toList(),
        );
      default:
        return ResponseResult(data: []);
    }
  }
}
