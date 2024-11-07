

import 'dart:async';

import 'package:diva_e_commerce_app/core/extensions/build_context_extensions.dart';
import 'package:diva_e_commerce_app/core/routes/app_router.dart';
import 'package:diva_e_commerce_app/core/theme/colors_manager.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_cubit.dart';
import 'package:diva_e_commerce_app/features/sign_in/logic/sign_in_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    context.read<SignInCubit>().checkIfUserAuthenticated();

    super.initState();
    Timer(
      const Duration(seconds: 3),
      () {

        context.pushReplacementNamed(AppRoutes.cartScreenRoute);

        context.read<SignInCubit>().state.maybeWhen(
          signedin: (user) {
            context.read<UserDataCubit>().updateUserData(user);
            context.pushReplacementNamed(AppRoutes.homeScreenRoute);
          },
          orElse: () {
            context.pushReplacementNamed(AppRoutes.homeScreenRoute);
          },
        );

      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appTheme.brightness == Brightness.light
          ? ColorsManager.splashBackgroundColor
          : context.appTheme.canvasColor,
      child: Center(
        child: Lottie.asset(
          'assets/lottie/splash.json',
        ),
      ),
    );
  }
}
