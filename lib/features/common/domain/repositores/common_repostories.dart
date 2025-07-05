import 'package:admin_v2/features/common/domain/models/account/account_response.dart';
import 'package:admin_v2/features/common/domain/models/deliveryOption/option_response.dart';
import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/report/domain/models/mostSellingProducts/most_selling_response.dart';
import 'package:admin_v2/shared/app/list/common_map.dart';
import 'package:admin_v2/shared/utils/result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

abstract class CommonRepostories {
  Future<ResponseResult<List<StoreResponse>>> storeList();
  Future<ResponseResult<List<AccountDataResponse>>> account();
  Future<ResponseResult<List<PurchaseType>>> purchaseType();
  Future<ResponseResult<List<OptionResponse>>> orderOption({
    required int storeId,
    required int appTypeId,
  });
  Future<ResponseResult<List<MostSellingResponse>>> loadProductsCategory({
    required int storeId,
   // required int categoryId,
  });
}
