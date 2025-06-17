// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/auth/cubit/auth_cubit.dart' as _i698;
import '../../features/auth/domain/repoitories/auth_repositories.dart' as _i233;
import '../../features/auth/domain/service/auth_service.dart' as _i641;
import '../../features/common/cubit/common_cubit.dart' as _i583;
import '../../features/common/domain/repositores/common_repostories.dart'
    as _i350;
import '../../features/common/domain/service/common_service.dart' as _i837;
import '../../features/dashboard/cubit/dashboard_cubit.dart' as _i949;
import '../../features/dashboard/domain/repositories/dashboard_repositories.dart'
    as _i630;
import '../../features/orders/cubit/order_cubit.dart' as _i1055;
import '../../features/orders/domain/repositories/order_repositories.dart'
    as _i23;
import '../../features/orders/domain/service/order_service.dart' as _i895;
import '../../features/products/cubit/product_cubit.dart' as _i36;
import '../../features/products/domain/repositories/product_repositories.dart'
    as _i416;
import '../../features/products/domain/service/product_service.dart' as _i944;
import '../../features/report/cubit/report_cubit.dart' as _i1051;
import '../../features/report/domain/repositories/report_repositores.dart'
    as _i11;
import '../../features/report/domain/service/report_service.dart' as _i388;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i416.ProductRepositories>(() => _i944.ProductService());
    gh.lazySingleton<_i233.AuthRepositories>(() => _i641.AuthService());
    gh.factory<_i698.AuthCubit>(
      () => _i698.AuthCubit(gh<_i233.AuthRepositories>()),
    );
    gh.lazySingleton<_i11.ReportRepositories>(() => _i388.ReportService());
    gh.lazySingleton<_i23.OrderRepositories>(() => _i895.OrderService());
    gh.lazySingleton<_i350.CommonRepostories>(() => _i837.CommonService());
    gh.factory<_i949.DashboardCubit>(
      () => _i949.DashboardCubit(gh<_i630.DashboardRepositories>()),
    );
    gh.factory<_i36.ProductCubit>(
      () => _i36.ProductCubit(gh<_i416.ProductRepositories>()),
    );
    gh.factory<_i1051.ReportCubit>(
      () => _i1051.ReportCubit(gh<_i11.ReportRepositories>()),
    );
    gh.factory<_i583.CommonCubit>(
      () => _i583.CommonCubit(gh<_i350.CommonRepostories>()),
    );
    gh.factory<_i1055.OrderCubit>(
      () => _i1055.OrderCubit(gh<_i23.OrderRepositories>()),
    );
    return this;
  }
}
