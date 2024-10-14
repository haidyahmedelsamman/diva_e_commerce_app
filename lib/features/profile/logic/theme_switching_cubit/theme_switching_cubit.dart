import 'package:bloc/bloc.dart';
import 'package:diva_e_commerce_app/features/profile/data/repositories/theme_mode_pref_repository.dart';
import 'package:diva_e_commerce_app/features/profile/logic/theme_switching_cubit/theme_switching_state.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ThemeSwitchingCubit extends Cubit<ThemeSwitchingState> {
  final ThemeModePrefRepository _themeModePrefRepository;
  ThemeSwitchingCubit(this._themeModePrefRepository)
      : super(
          ThemeSwitchingState(
            themeMode: _themeModePrefRepository.getThemeModeFromString(),
          ),
        );

  void swithcThemeMode(ThemeMode themeMode) async {
    await _themeModePrefRepository.saveThemeModeString(themeMode.name);

    emit(
      ThemeSwitchingState(
        themeMode: _themeModePrefRepository.getThemeModeFromString(),
      ),
    );
  }
}
