import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/shared/ui_kit/theme/repository/theme_repository.dart';
import 'package:pokemon/shared/ui_kit/theme/theme_cubit/theme_cubit.dart';

class ThemeIconButton extends StatelessWidget {
  const ThemeIconButton({super.key});

  Icon _getIcon(ThemeMode mode) {
    if (mode == ThemeMode.system) {
      return const Icon(Icons.auto_mode);
    } else if (mode == ThemeMode.light) {
      return const Icon(Icons.wb_sunny,color: Colors.amber,);
    } else {
      return const Icon(Icons.nights_stay,color: Colors.indigo,);
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeMode themeMode = ThemeMode.values.firstWhere((element) =>
        element.name == context.watch<ThemeCubit>().state.themeMode.name);
    return IconButton(
      icon: _getIcon(themeMode),
      onPressed: () {
        switch (themeMode) {
          case ThemeMode.system:
            context.read<ThemeCubit>().switchTheme(CustomTheme.light);
            return;
          case ThemeMode.light:
            context.read<ThemeCubit>().switchTheme(CustomTheme.dark);
            return;
          case ThemeMode.dark:
            context.read<ThemeCubit>().switchTheme(CustomTheme.system);
            return;
        }
      },
    );
  }
}
