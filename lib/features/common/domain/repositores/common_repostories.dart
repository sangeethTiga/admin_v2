import 'package:admin_v2/features/common/domain/models/account/account_response.dart';
import 'package:admin_v2/features/common/domain/models/deliveryOption/option_response.dart';
import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/shared/utils/result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

abstract class CommonRepostories {
  Future<ResponseResult<List<StoreResponse>>> storeList();
  Future<ResponseResult<List<AccountDataResponse>>> account();
  Future<ResponseResult<List<OptionResponse>>> orderOption(
    {required int storeId,
    required int appTypeId}
  );
}
