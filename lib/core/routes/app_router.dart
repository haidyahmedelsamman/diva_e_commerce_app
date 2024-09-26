import 'package:diva_e_commerce_app/features/animated_splash/animated_splash_screen.dart';
import 'package:diva_e_commerce_app/features/home_screen/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.animatedSplashScreenRoute:
        return MaterialPageRoute(
          builder: (_) {
            return const AnimatedSplashScreen();
          },
        );
      case AppRoutes.homeScreenRoute:
        return PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) => const HomeScreen(),
          transitionDuration: Duration.zero,
        );
      default:
        return null;
    }
  }
}

class AppRoutes {
  static const String animatedSplashScreenRoute = '/animatedSplashScreenRoute ';

  static const String homeScreenRoute = '/homeScreenRoute ';
}
