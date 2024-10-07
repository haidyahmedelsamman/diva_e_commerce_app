import 'package:diva_e_commerce_app/features/profile/logic/theme_switching_cubit/theme_switching_cubit.dart';
import 'package:diva_e_commerce_app/features/profile/logic/theme_switching_cubit/theme_switching_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeModeDialog extends StatelessWidget {
  const ThemeModeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeSwitchingCubit, ThemeSwitchingState>(
      builder: (context, state) {
        return Dialog(
          child: ListView(
            padding: const EdgeInsets.all(15),
            shrinkWrap: true,
            children: [
              buildRadioTile(
                context,
                ThemeMode.light,
                state.themeMode,
                'Light mode',
              ),
              buildRadioTile(
                context,
                ThemeMode.dark,
                state.themeMode,
                'Dark mode',
              ),
              buildRadioTile(
                context,
                ThemeMode.system,
                state.themeMode,
                'System mode',
              ),
            ],
          ),
        );
      },
    );
  }

  Widget buildRadioTile(
    BuildContext context,
    ThemeMode value,
    ThemeMode groupValue,
    String title,
  ) {
    return RadioListTile<ThemeMode>(
      value: value,
      groupValue: groupValue,
      onChanged: (selectedValue) {
        context.read<ThemeSwitchingCubit>().swithcThemeMode(value);
      },
      title: Text(title),
      splashRadius: 15,
    );
  }
}
