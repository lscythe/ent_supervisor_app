import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:supervisor/models/models.dart';
import 'package:supervisor/services/services.dart';

@lazySingleton
class RemoteDataSource {
  const RemoteDataSource(this._api);

  final ApiService _api;

  Future<Result<LoginResponse>> postLogin(LoginRequest request) =>
      _getResultWithSingleObject(_api.postLogin(request));

  

  Future<Result<T>> _getResultWithSingleObject<T>(
    Future<BaseResponse<T>> apiCall,
  ) async {
    try {
      final BaseResponse<T> response = await apiCall;
      if (response.value != null) {
        return Success(response.value as T);
      } else {
        return _errorHandler(response);
      }
    } on DioException catch (e) {
      final resp = e.response;
      return Failure(
        message: resp?.statusMessage,
        code: resp?.statusCode.toString(),
      );
    } catch (e) {
      return Failure(message: e.toString());
    }
  }

  Result<T> _errorHandler<T>(BaseResponse<dynamic>? response) {
    BaseResponse<T> errorDetail;
    try {
      errorDetail = BaseResponse(
        statusCode: response?.statusCode ?? "0",
        statusMessage: response?.statusMessage,
      );
    } on Exception catch (e) {
      errorDetail = BaseResponse(statusMessage: e.toString());
    }

    return Failure(
      message: errorDetail.statusMessage,
      code: errorDetail.statusCode,
    );
  }
}
