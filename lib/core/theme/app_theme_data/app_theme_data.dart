import 'package:diva_e_commerce_app/core/theme/colors_manager.dart';
import 'package:flutter/material.dart';

class AppThemeData {
  static ThemeData get darkTheme => ThemeData.dark().copyWith(
      dividerTheme: _dividerThemeData.copyWith(
        color: ColorsManager.darkGray,
      ),
      appBarTheme: _appBarTheme,
      colorScheme: ColorScheme.dark(
        primary: ColorsManager.primary,
        secondary: ColorsManager.lightPrimary,
      ));

  static ThemeData get lightTheme {
    return ThemeData.light().copyWith(
      dividerTheme: _dividerThemeData,
      appBarTheme: _appBarTheme,
      colorScheme: ColorScheme.light(
        primary: ColorsManager.primary,
        secondary: ColorsManager.lightPrimary,
      ),
    );
  }

  static const _appBarTheme = AppBarTheme(
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
  );

  static const _dividerThemeData = DividerThemeData(
    color: ColorsManager.lightGray,
    thickness: 0.4,
  );
}
