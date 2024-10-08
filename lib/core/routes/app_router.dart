import 'package:diva_e_commerce_app/core/di/dependency_injection.dart';
import 'package:diva_e_commerce_app/features/animated_splash/animated_splash_screen.dart';
import 'package:diva_e_commerce_app/features/home_screen/logic/home_cubit.dart';
import 'package:diva_e_commerce_app/features/home_screen/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/sign_up/ui/sign_up_screen.dart';

/// The AppRouter class manages the application's route generation.
class AppRouter {
  /// This method takes a [RouteSettings] object and returns the corresponding route.
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.animatedSplashScreenRoute:
        return PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) =>
              const AnimatedSplashScreen(),
          transitionDuration: Duration.zero,
        );

      case AppRoutes.homeScreenRoute:
        return PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) => BlocProvider(
            create: (context) => getIt<HomeCubit>()..getCategories(),
            child: const HomeScreen(),
          ),
          transitionDuration: Duration.zero,
        );

      case AppRoutes.signUpScreenRoute:
        return PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) =>
              const SignUpScreen(),
          transitionDuration: Duration.zero,
        );
      default:
        return null;
    }
  }
}

class AppRoutes {
  static const String animatedSplashScreenRoute = '/animatedSplashScreenRoute ';
  static const String signUpScreenRoute = '/signUpScreenRoute ';
  static const String homeScreenRoute = '/homeScreenRoute ';
}
