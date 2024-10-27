import 'package:diva_e_commerce_app/core/di/dependency_injection.dart';
import 'package:diva_e_commerce_app/features/animated_splash/animated_splash_screen.dart';
import 'package:diva_e_commerce_app/features/home_screen/data/models/category_products_response_model.dart';
import 'package:diva_e_commerce_app/features/home_screen/logic/home_cubit.dart';
import 'package:diva_e_commerce_app/features/home_screen/ui/screens/home_screen.dart';
import 'package:diva_e_commerce_app/features/home_screen/ui/screens/product_details_screen.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_cubit.dart';
import 'package:diva_e_commerce_app/features/profile/ui/screens/edit_user_account_screen.dart';
import 'package:diva_e_commerce_app/features/sign_in/ui/sign_in_screen.dart';
import 'package:diva_e_commerce_app/features/profile/ui/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/sign_in/logic/sign_in_cubit.dart';
import '../../features/sign_up/logic/sign_up_cubit.dart';

import '../../features/sign_up/ui/sign_up_screen.dart';

/// The AppRouter class manages the application's route generation.
class AppRouter {
  /// This method takes a [RouteSettings] object and returns the corresponding route.
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.animatedSplashScreenRoute:
        return PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) => MultiBlocProvider(
            providers: [
              BlocProvider<SignInCubit>(
                create: (BuildContext context) => getIt<SignInCubit>(),
              ),
              BlocProvider<UserDataCubit>(
                create: (BuildContext context) => getIt<UserDataCubit>(),
              ),
            ],
            child: const AnimatedSplashScreen(),
          ),
          transitionDuration: Duration.zero,
        );

      case AppRoutes.homeScreenRoute:
        return PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) => BlocProvider(
            create: (context) {
              return getIt<HomeCubit>()..getCategories();
            },
            child: const HomeScreen(),
          ),
          transitionDuration: Duration.zero,
        );
      case AppRoutes.signInScreenRoute:
        return PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) => BlocProvider(
            create: (context) => getIt<SignInCubit>(),
            child: const SignInScreen(),
          ),
          transitionDuration: Duration.zero,
        );

      case AppRoutes.signUpScreenRoute:
        return PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) => BlocProvider(
            create: (context) => getIt<SignUpCubit>(),
            child: const SignUpScreen(),
          ),
          transitionDuration: Duration.zero,
        );

      case AppRoutes.profileScreenRoute:
        return MaterialPageRoute(
          builder: (_) {
            return BlocProvider(
              create: (context) => getIt<UserDataCubit>(),
              child: const ProfileScreen(),
            );
          },
        );
      case AppRoutes.editUserAccountScreenRoute:
        return MaterialPageRoute(
          builder: (_) {
            return const EditUserAccountScreen();
          },
        );

      case AppRoutes.productDetailsScreenRoute:
        final productItem = settings.arguments as ProductModel;
        return MaterialPageRoute(builder: (_) {
          return ProductDetailsScreen(productModel: productItem);
        });
      default:
        return null;
    }
  }
}

class AppRoutes {
  static const String animatedSplashScreenRoute = '/animatedSplashScreenRoute ';
  static const String signUpScreenRoute = '/signUpScreenRoute ';
  static const String signInScreenRoute = '/signInScreenRoute ';
  static const String homeScreenRoute = '/homeScreenRoute ';
  static const String profileScreenRoute = '/profileScreenRoute ';
  static const String editUserAccountScreenRoute =
      '/editUserAccountScreenRoute ';

  static const String productDetailsScreenRoute = '/productDetailsScreenRoute';
}
