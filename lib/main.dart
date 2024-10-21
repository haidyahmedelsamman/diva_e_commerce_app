import 'package:diva_e_commerce_app/core/di/dependency_injection.dart';
import 'package:diva_e_commerce_app/core/di/injectable_package_configuration.dart';
import 'package:diva_e_commerce_app/core/shared_preferences/shared_preferences_service.dart';
import 'package:diva_e_commerce_app/diva_e_commerce_app.dart';
import 'package:diva_e_commerce_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  setupGetIt();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await SharedPreferencesService.instance.init();

  await configureInjectableDependencies();

  runApp(
    const DivaECommerceApp(),
  );
}
