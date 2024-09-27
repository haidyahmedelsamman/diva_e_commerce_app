import 'package:diva_e_commerce_app/diva_e_commerce_app.dart';
import 'package:diva_e_commerce_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const DivaECommerceApp(),
  );
}
