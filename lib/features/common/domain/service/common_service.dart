import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/common/domain/repositores/common_repostories.dart';
import 'package:admin_v2/shared/api/endpoint/api_endpoints.dart';
import 'package:admin_v2/shared/api/network/network.dart';
import 'package:admin_v2/shared/utils/auth/auth_utils.dart';
import 'package:admin_v2/shared/utils/result.dart';
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
}
