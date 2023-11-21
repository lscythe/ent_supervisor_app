import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:supervisor/locator/locator.config.dart';

final GetIt locator = GetIt.instance;

@injectableInit
Future<void> configureDependencies() => locator.init();
