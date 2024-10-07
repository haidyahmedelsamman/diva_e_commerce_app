import 'package:diva_e_commerce_app/core/di/injectable_package_configuration.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjectableDependencies() async => getIt.init();
