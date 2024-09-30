import 'package:diva_e_commerce_app/core/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DivaECommerceApp extends StatelessWidget {
  const DivaECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(375, 812),
      splitScreenMode: true,
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRouter.generateRoute,
        initialRoute: AppRoutes.animatedSplashScreenRoute,
      ),
    );
  }
}
