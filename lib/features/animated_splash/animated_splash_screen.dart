import 'package:diva_e_commerce_app/core/extensions/build_context_extensions.dart';
import 'package:diva_e_commerce_app/core/routes/app_router.dart';
import 'package:diva_e_commerce_app/core/theme/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimatedSplashScreen extends StatefulWidget {
  const AnimatedSplashScreen({super.key});

  @override
  AnimatedSplashScreenState createState() => AnimatedSplashScreenState();
}

class AnimatedSplashScreenState extends State<AnimatedSplashScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      context.pushReplacementNamed(AppRoutes.signUpScreenRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsManager.splashBackgroundColor,
      child: Center(
        child: Lottie.asset(
          'assets/lottie/splash.json',
        ),
      ),
    );
  }
}
