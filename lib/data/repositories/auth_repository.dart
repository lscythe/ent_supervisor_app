import 'package:injectable/injectable.dart';
import 'package:supervisor/data/datasources/datasources.dart';
import 'package:supervisor/extensions/extensions.dart';
import 'package:supervisor/models/models.dart';

@lazySingleton
class AuthRepository {
  const AuthRepository(this._localDataSource, this._remoteDataSource);

  final LocalDataSource _localDataSource;
  final RemoteDataSource _remoteDataSource;

  Future<Result<LoginResponse>> postLogin(LoginRequest request) async {
    final result = await _remoteDataSource.postLogin(request);

    if (result is Success && result.data != null) {
      await _localDataSource.setAccessToken(result.data!.token.orEmpty);
    }

    return result;
  }

  // Future<Result<EmptyResponse>> postForgotPassword(
  //         ForgotPasswordRequest request) =>
  //     _remoteDataSource.postForgotPassword(request);

  Future<String> accessToken() async => _localDataSource.getAccessToken();

  Future<void> logout() async => _localDataSource.clear();
}
