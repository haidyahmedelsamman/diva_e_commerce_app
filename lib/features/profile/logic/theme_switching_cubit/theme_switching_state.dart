import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_switching_state.freezed.dart';

@freezed
class ThemeSwitchingState with _$ThemeSwitchingState {
  const factory ThemeSwitchingState({
    @Default(ThemeMode.system) ThemeMode themeMode,
  }) = _ThemeSwitchingState;
}
