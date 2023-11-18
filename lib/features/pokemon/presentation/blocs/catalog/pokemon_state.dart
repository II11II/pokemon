part of 'pokemon_bloc.dart';

@freezed
class CatalogPokemonState with _$CatalogPokemonState {
   const factory CatalogPokemonState.loading({required List<PokemonEntity> pokemons, required int page}) = CatalogPokemonStateLoading;
  const factory CatalogPokemonState.success(
      {required List<PokemonEntity> pokemons, required int page}) =  CatalogPokemonStateSuccess;
  const factory CatalogPokemonState.failure({required List<PokemonEntity> pokemons, required int page,required String message}) =  CatalogPokemonStateError;
}
