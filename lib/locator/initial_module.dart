import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supervisor/constants/constants.dart';
import 'package:supervisor/locator/locator.dart';
import 'package:supervisor/services/services.dart';

@module
abstract class InitialModule {
  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();

  FlutterSecureStorage get secureStorage => const FlutterSecureStorage(
        aOptions: AndroidOptions(encryptedSharedPreferences: true),
        iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
      );

  Dio get client {
    final BaseOptions options = BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      contentType: ApiConstants.contentType,
      connectTimeout: ApiConstants.connectTimeout,
      sendTimeout: ApiConstants.sendTimeout,
      receiveTimeout: ApiConstants.receiveTimeout,
    );
    final Dio dio = Dio(options);
    dio.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
      ),
    );
    dio.interceptors.add(
      DioCacheInterceptor(options: CacheOptions(store: MemCacheStore())),
    );
    dio.interceptors.add(ConnectivityInterceptor());
    dio.interceptors.add(TokenInterceptor());

    return dio;
  }

  ApiService get apiService => ApiService(locator.get());
}
