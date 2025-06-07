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

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i233.AuthRepositories>(() => _i641.AuthService());
    gh.factory<_i698.AuthCubit>(
      () => _i698.AuthCubit(gh<_i233.AuthRepositories>()),
    );
    gh.lazySingleton<_i350.CommonRepostories>(() => _i837.CommonService());
    gh.factory<_i583.CommonCubit>(
      () => _i583.CommonCubit(gh<_i350.CommonRepostories>()),
    );
    return this;
  }
}
