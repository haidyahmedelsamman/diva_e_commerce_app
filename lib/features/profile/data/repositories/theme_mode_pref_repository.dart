import 'package:diva_e_commerce_app/core/shared_preferences/shared_preferences_constants.dart';
import 'package:diva_e_commerce_app/core/shared_preferences/shared_preferences_service.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class ThemeModePrefRepository {
  final _sharedPreferencesService = SharedPreferencesService.instance;

  /// save user theme mode preference
  Future<void> saveThemeModeString(String themeModeName) {
    return _sharedPreferencesService.saveString(
      SharedPreferencesConstants.themeModeKey,
      themeModeName,
    );
  }

  /// Get user theme mode from theme mode name
  ThemeMode getThemeModeFromString() {
    final themeModeName = _getThemeModeString();
    return ThemeMode.values.firstWhere(
      (mode) => mode.name == themeModeName,
      orElse: () => ThemeMode.system,
    );
  }

  /// Get user theme mode string from prefs
  String? _getThemeModeString() {
    return _sharedPreferencesService.getString(
      SharedPreferencesConstants.themeModeKey,
    );
  }
}
