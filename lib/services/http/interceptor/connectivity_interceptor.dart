import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:supervisor/constants/constants.dart';
import 'package:supervisor/models/models.dart';

class ConnectivityInterceptor extends InterceptorsWrapper {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final connectivityResult = await Connectivity().checkConnectivity();

    if (connectivityResult == ConnectivityResult.none) {
      return handler.reject(
        DioException(
          requestOptions: options,
          response: Response(
            requestOptions: options,
            data: Failure(
              code: ErrorCode.connection,
            ),
          ),
        ),
      );
    }
    return super.onRequest(options, handler);
  }
}
