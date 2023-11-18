import 'package:pokemon/features/pokemon/domain/entities/entities.dart';

abstract class PokemonRepository {
  Future<List<PokemonEntity>> getPokemons(int page, int size);
  Future<PokemonEntity?> getPokemonById(int id);
}
