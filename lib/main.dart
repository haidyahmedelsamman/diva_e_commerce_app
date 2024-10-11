import 'package:diva_e_commerce_app/core/di/dependency_injection.dart';
import 'package:diva_e_commerce_app/diva_e_commerce_app.dart';
import 'package:diva_e_commerce_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const DivaECommerceApp(),
  );
}
