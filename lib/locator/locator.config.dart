// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;
import 'package:supervisor/features/login/cubit/login_cubit.dart' as _i6;
import 'package:supervisor/locator/initial_module.dart' as _i9;
import 'package:supervisor/services/services.dart' as _i3;
import 'package:supervisor/services/storage_service.dart' as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final initialModule = _$InitialModule();
    gh.factory<_i3.ApiService>(() => initialModule.apiService);
    gh.factory<_i4.Dio>(() => initialModule.client);
    gh.factory<_i5.FlutterSecureStorage>(() => initialModule.secureStorage);
    gh.lazySingleton<_i6.LoginCubit>(() => _i6.LoginCubit());
    await gh.factoryAsync<_i7.SharedPreferences>(
      () => initialModule.sharedPreferences,
      preResolve: true,
    );
    gh.factory<_i8.StorageService>(
        () => _i8.StorageService(gh<_i7.SharedPreferences>()));
    return this;
  }
}

class _$InitialModule extends _i9.InitialModule {}
