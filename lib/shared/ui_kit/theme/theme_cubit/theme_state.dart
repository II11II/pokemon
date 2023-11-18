part of 'theme_cubit.dart';

class ThemeState extends Equatable {
  const ThemeState({this.themeMode = CustomTheme.light}); // Default theme = light theme

  final CustomTheme themeMode;

  // `copyWith()` method allows us to emit brand new instance of ThemeState
  ThemeState copyWith({CustomTheme? themeMode}) => ThemeState(
        themeMode: themeMode ?? this.themeMode,
      );

  @override
  List<Object?> get props => [themeMode];
}