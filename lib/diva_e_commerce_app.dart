import 'package:diva_e_commerce_app/core/routes/app_router.dart';
import 'package:flutter/material.dart';

class DivaECommerceApp extends StatelessWidget {
  const DivaECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: AppRoutes.animatedSplashScreenRoute,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
