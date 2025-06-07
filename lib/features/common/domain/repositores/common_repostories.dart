import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/shared/utils/result.dart';

abstract class CommonRepostories {
  Future<ResponseResult<List<StoreResponse>>> storeList();
}
