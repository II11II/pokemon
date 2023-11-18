import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/features/pokemon/domain/repositories/repositories.dart';
import 'package:pokemon/features/pokemon/presentation/blocs/catalog/pokemon_bloc.dart';
import 'package:pokemon/shared/di/di.dart';
import 'package:pokemon/shared/ui_kit/theme/repository/theme_repository.dart';
import 'package:pokemon/shared/ui_kit/theme/theme_cubit/theme_cubit.dart';
import 'package:pokemon/src/app.dart';

class AppProvider extends StatelessWidget {
  const AppProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (context) => CatalogPokemonBloc(
              pokemonRepository: injector<PokemonRepository>())
            ..add(const CatalogPokemonEvent.fetch()),
        ),
        BlocProvider(
          lazy: false,
          create: (context) =>
              ThemeCubit(themeRepository: injector<ThemeRepository>())
                ..getCurrentTheme(),
        ),
      ],
      child: const App(),
    );
  }
}
