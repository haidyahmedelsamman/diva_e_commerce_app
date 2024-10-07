import 'package:diva_e_commerce_app/core/di/injectable_package_configuration.dart';
import 'package:diva_e_commerce_app/core/routes/app_router.dart';
import 'package:diva_e_commerce_app/core/theme/app_theme_data/app_theme_data.dart';
import 'package:diva_e_commerce_app/features/profile/logic/theme_switching_cubit/theme_switching_cubit.dart';
import 'package:diva_e_commerce_app/features/profile/logic/theme_switching_cubit/theme_switching_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DivaECommerceApp extends StatelessWidget {
  const DivaECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        splitScreenMode: true,
        minTextAdapt: true,
        child: BlocProvider(
          create: (context) => getIt<ThemeSwitchingCubit>(),
          child: MediaQuery(
            /// Fix the text scale factor, incase phone font size settings changes
            data: MediaQuery.of(context)
                .copyWith(textScaler: const TextScaler.linear(1.0)),
            child: const AppWithThemeSwitcher(),
          ),
        ));
  }
}

class AppWithThemeSwitcher extends StatelessWidget {
  const AppWithThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ThemeSwitchingCubit, ThemeSwitchingState, ThemeMode>(
      selector: (state) {
        return state.themeMode;
      },
      builder: (context, themeMode) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: themeMode,
          theme: AppThemeData.lightTheme,
          darkTheme: AppThemeData.darkTheme,
          onGenerateRoute: AppRouter.generateRoute,
          initialRoute: AppRoutes.animatedSplashScreenRoute,
        );
      },
    );
  }
}
