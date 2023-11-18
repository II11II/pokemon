import 'package:pokemon/features/pokemon/data/sources/remote_source.dart';
import 'package:pokemon/features/pokemon/domain/entities/pokemon.dart';
import 'package:pokemon/features/pokemon/domain/repositories/repositories.dart';
import 'package:collection/collection.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonRemoteSource _remoteSource;

  PokemonRepositoryImpl({required PokemonRemoteSource remoteSource})
      : _remoteSource = remoteSource;
  @override
  Future<List<PokemonEntity>> getPokemons(int page, int size) {
    return _remoteSource.getPokemons().then((pokemons) {
      int start = size * page;
      if (start + size < pokemons.length) {
        return pokemons.sublist(start, start+size);
      }
      return [];
    });
  }

  @override
  Future<PokemonEntity?> getPokemonById(int id) {
    return _remoteSource.getPokemons().then(
        (pokemons) => pokemons.firstWhereOrNull((element) => element.id == id));
  }
}
