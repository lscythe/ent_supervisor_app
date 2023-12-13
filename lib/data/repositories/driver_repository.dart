import 'package:injectable/injectable.dart';
import 'package:supervisor/data/datasources/datasources.dart';

@lazySingleton
class DriverRepository {
  const DriverRepository(this._localDataSource, this._remoteDataSource);

  final LocalDataSource _localDataSource;
  final RemoteDataSource _remoteDataSource;
}
