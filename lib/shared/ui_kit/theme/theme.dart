import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

ThemeData getTheme(Brightness brightness) {
  final isDark = brightness == Brightness.dark;
  final colorScheme = isDark ? darkColorScheme : lightColorScheme;
  final typography = Typography.material2021(
      platform: defaultTargetPlatform,
      colorScheme: colorScheme,
      englishLike: Typography.englishLike2021);
  final textTheme = Typography.englishLike2021
      .merge(isDark ? typography.white : typography.black);
  final appBarTheme = AppBarTheme(
      centerTitle: false,
      titleTextStyle:
          textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold));
  ThemeData theme = ThemeData(
    fontFamily: 'DMSans',
    textTheme: textTheme,
    typography: typography,
    brightness: brightness,
    useMaterial3: true,
    colorScheme: colorScheme,
    appBarTheme: appBarTheme,
    chipTheme: ChipThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        elevation: 0.1,
        showCheckmark: false,
        color: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.secondaryContainer;
          }
          return colorScheme.surfaceVariant;
        })),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.resolveWith((state) {
          const double padding1x = 48.0;
          return ButtonStyleButton.scaledPadding(
            const EdgeInsets.symmetric(
                horizontal: padding1x, vertical: padding1x / 4),
            const EdgeInsets.symmetric(
                horizontal: padding1x / 2, vertical: padding1x / 4),
            const EdgeInsets.symmetric(
                horizontal: padding1x / 2 / 2, vertical: padding1x / 4),
            1,
          );
        }),
      ),
    ),
  );

  return theme;
}

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF405AA9),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFDCE1FF),
  onPrimaryContainer: Color(0xFF00164D),
  secondary: Color(0xFF2B4DE1),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFDEE1FF),
  onSecondaryContainer: Color(0xFF001159),
  tertiary: Color(0xFF00639C),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFCEE5FF),
  onTertiaryContainer: Color(0xFF001D33),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFEFBFF),
  onBackground: Color(0xFF1B1B1F),
  surface: Color(0xFFFEFBFF),
  onSurface: Color(0xFF1B1B1F),
  surfaceVariant: Color(0xFFE2E1EC),
  onSurfaceVariant: Color(0xFF45464F),
  outline: Color(0xFF767680),
  onInverseSurface: Color(0xFFF2F0F4),
  inverseSurface: Color(0xFF303034),
  inversePrimary: Color(0xFFB5C4FF),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF405AA9),
  outlineVariant: Color(0xFFC6C6D0),
  scrim: Color(0xFF000000),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFB5C4FF),
  onPrimary: Color(0xFF042978),
  primaryContainer: Color(0xFF264190),
  onPrimaryContainer: Color(0xFFDCE1FF),
  secondary: Color(0xFFBAC3FF),
  onSecondary: Color(0xFF00208D),
  secondaryContainer: Color(0xFF0031C5),
  onSecondaryContainer: Color(0xFFDEE1FF),
  tertiary: Color(0xFF97CBFF),
  onTertiary: Color(0xFF003354),
  tertiaryContainer: Color(0xFF004A77),
  onTertiaryContainer: Color(0xFFCEE5FF),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF1B1B1F),
  onBackground: Color(0xFFE4E2E6),
  surface: Color(0xFF1B1B1F),
  onSurface: Color(0xFFE4E2E6),
  surfaceVariant: Color(0xFF45464F),
  onSurfaceVariant: Color(0xFFC6C6D0),
  outline: Color(0xFF8F909A),
  onInverseSurface: Color(0xFF1B1B1F),
  inverseSurface: Color(0xFFE4E2E6),
  inversePrimary: Color(0xFF405AA9),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFB5C4FF),
  outlineVariant: Color(0xFF45464F),
  scrim: Color(0xFF000000),
);
