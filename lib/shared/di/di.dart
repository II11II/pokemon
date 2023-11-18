import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:pokemon/features/pokemon/data/repositories/pokemon_repository.dart';
import 'package:pokemon/features/pokemon/data/sources/remote_source.dart';
import 'package:pokemon/features/pokemon/domain/repositories/repositories.dart';
import 'package:pokemon/shared/ui_kit/theme/repository/theme_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

final injector = GetIt.instance;
FutureOr<void> initAllDependencies() async {
  await registerThirdParty();
  await registerDataSources();
  await registerRepositories();
}

FutureOr<void> registerThirdParty() {
  injector.registerFactory<Client>(() => Client());
}

FutureOr<void> registerDataSources() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  injector.registerSingleton<SharedPreferences>(sharedPreferences);
  injector.registerFactory<PokemonRemoteSource>(() => PokemonRemoteSource(
      client: injector(),
      uri: Uri.parse('https://meetdata.dev.audo.com/pokemon.json')));
}

FutureOr<void> registerRepositories() {
  injector.registerFactory<ThemeRepository>(
      () => ThemeRepositoryImpl(sharedPreferences: injector()));
  injector.registerFactory<PokemonRepository>(
      () => PokemonRepositoryImpl(remoteSource: injector()));
}
