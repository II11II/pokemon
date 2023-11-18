import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

abstract class ThemeRepository {
  Future<CustomTheme> getTheme();
  Future<void> saveTheme(CustomTheme theme);
}

enum CustomTheme { light, dark, system }

class ThemeRepositoryImpl implements ThemeRepository {
  ThemeRepositoryImpl({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  final SharedPreferences _sharedPreferences;

  static const _kThemeRepositoryKey = '__theme_persistence_key__';

  String? _getValue(String key) {
    try {
      return _sharedPreferences.getString(key);
    } catch (_) {
      return null;
    }
  }

  Future<void> _setValue(String key, String value) =>
      _sharedPreferences.setString(key, value);

  @override
  Future<CustomTheme> getTheme() async {
    final themeName =
        _getValue(_kThemeRepositoryKey) ?? CustomTheme.system.name;
    return CustomTheme.values
        .firstWhere((element) => element.name == themeName);
  }

  @override
  Future<void> saveTheme(CustomTheme theme) {
    return _setValue(_kThemeRepositoryKey, theme.name);
  }
}
