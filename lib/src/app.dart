import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pokemon/shared/router/router.dart';
import 'package:pokemon/shared/ui_kit/theme/theme.dart';
import 'package:pokemon/shared/ui_kit/theme/theme_cubit/theme_cubit.dart';

class App extends StatefulWidget {
  const App({
    super.key,
  });

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final GoRouter routerConfig;
  @override
  void initState() {
    routerConfig = router(context);
    super.initState();
  }

  @override
  void dispose() {
    routerConfig.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      restorationScopeId: 'app',
      builder: (context, child) => child!,
      theme: getTheme(Brightness.light),
      darkTheme: getTheme(Brightness.dark),
      themeMode: ThemeMode.values.firstWhere((element) =>
          element.name == context.watch<ThemeCubit>().state.themeMode.name),
      routerConfig: routerConfig,
    );
  }
}
