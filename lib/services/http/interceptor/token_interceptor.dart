import 'package:dio/dio.dart';
import 'package:supervisor/constants/constants.dart';
import 'package:supervisor/data/data.dart';
import 'package:supervisor/locator/locator.dart';

class TokenInterceptor extends InterceptorsWrapper {
  final _exceptions = [
    "/driver-auth",
    "/supervisor-auth",
    "/forget_password",
  ];

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await locator<AuthRepository>().accessToken();
    
    if (!_exceptions.any(options.path.startsWith)) {
      if (token.isNotEmpty) {
        options.headers.putIfAbsent(
          ApiConstants.authorizationHeader,
          () => "${ApiConstants.bearerToken} $token",
        );
      }
    }

    return handler.next(options);
  }
}
