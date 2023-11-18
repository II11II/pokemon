// ignore_for_file: unused_import

import 'dart:async';

import 'package:pokemon/features/pokemon/presentation/blocs/single_pokemon/pokemon_bloc.dart';
import 'package:pokemon/features/pokemon/presentation/pages/catalog_page.dart';
import 'package:pokemon/features/pokemon/presentation/pages/pokemon_page.dart';
import 'package:pokemon/shared/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pokemon/shared/ui_kit/app/error_navigation_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

GoRouter router(BuildContext context) => GoRouter(
      navigatorKey: _rootNavigatorKey,
      errorBuilder: (context, state) => ErrorNavigationPage(
        error: state.error?.message,
        onMainPageGoPressed: () => context.go('/'),
      ),
      routes: [
        GoRoute(
          path: '/',
          parentNavigatorKey: _rootNavigatorKey,
          pageBuilder: (context, state) {
            return const NoTransitionPage(
              child: CatalogPage(),
            );
          },
        ),
        GoRoute(
          path: '/pokemons',
          parentNavigatorKey: _rootNavigatorKey,
          pageBuilder: (context, state) {
            int id = int.tryParse(state.uri.queryParameters['id'] ?? "-1") ?? -1;
            if (id == -1) {
              return NoTransitionPage(
                child: ErrorNavigationPage(
                    onMainPageGoPressed: () => context.go('/'),
                    error: 'Could not find pokemon with id: $id'),
              );
            }
            return NoTransitionPage(
              child: BlocProvider(
                create: (context) =>
                    SinglePokemonBloc(pokemonRepository: injector())
                      ..add(SinglePokemonEvent.fetch(id)),
                child: const PokemonPage(),
              ),
            );
          },
        ),
      ],
    );
