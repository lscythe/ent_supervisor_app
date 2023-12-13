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
import 'package:shared_preferences/shared_preferences.dart' as _i8;
import 'package:supervisor/data/datasources/datasources.dart' as _i12;
import 'package:supervisor/data/datasources/local_data_source.dart' as _i10;
import 'package:supervisor/data/datasources/remote_data_source.dart' as _i7;
import 'package:supervisor/data/repositories/auth_repository.dart' as _i11;
import 'package:supervisor/data/repositories/driver_repository.dart' as _i13;
import 'package:supervisor/features/login/cubit/login_cubit.dart' as _i6;
import 'package:supervisor/locator/initial_module.dart' as _i14;
import 'package:supervisor/services/services.dart' as _i3;
import 'package:supervisor/services/storage_service.dart' as _i9;

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
    gh.lazySingleton<_i7.RemoteDataSource>(
        () => _i7.RemoteDataSource(gh<_i3.ApiService>()));
    await gh.factoryAsync<_i8.SharedPreferences>(
      () => initialModule.sharedPreferences,
      preResolve: true,
    );
    gh.factory<_i9.StorageService>(
        () => _i9.StorageService(gh<_i8.SharedPreferences>()));
    gh.lazySingleton<_i10.LocalDataSource>(() => _i10.LocalDataSource(
          gh<_i5.FlutterSecureStorage>(),
          gh<_i3.StorageService>(),
        ));
    gh.lazySingleton<_i11.AuthRepository>(() => _i11.AuthRepository(
          gh<_i12.LocalDataSource>(),
          gh<_i12.RemoteDataSource>(),
        ));
    gh.lazySingleton<_i13.DriverRepository>(() => _i13.DriverRepository(
          gh<_i12.LocalDataSource>(),
          gh<_i12.RemoteDataSource>(),
        ));
    return this;
  }
}

class _$InitialModule extends _i14.InitialModule {}
