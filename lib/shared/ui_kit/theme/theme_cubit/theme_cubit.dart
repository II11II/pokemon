import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/shared/ui_kit/theme/repository/theme_repository.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit({
    required ThemeRepository themeRepository,
  })  : _themeRepository = themeRepository,
        super(const ThemeState());

  final ThemeRepository _themeRepository;

  Future<void> getCurrentTheme() async {
    final customTheme = await _themeRepository.getTheme();

    emit(state.copyWith(themeMode: customTheme));
  }

  void switchTheme(CustomTheme customTheme) {
    _themeRepository.saveTheme(customTheme);
    emit(state.copyWith(themeMode: customTheme));
  }
}
