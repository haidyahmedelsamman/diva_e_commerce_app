import 'package:diva_e_commerce_app/core/constants/app_colors.dart';
import 'package:diva_e_commerce_app/core/extensions/build_context_extensions.dart';
import 'package:diva_e_commerce_app/core/routes/app_router.dart';
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
      context.pushReplacementNamed(AppRoutes.homeScreenRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.splashBackgroundColor,
      child: Center(
        child: Lottie.asset(
          'assets/lottie/splash.json',
        ),
      ),
    );
  }
}
