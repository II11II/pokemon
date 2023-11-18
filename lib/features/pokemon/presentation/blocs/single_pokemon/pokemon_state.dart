part of 'pokemon_bloc.dart';

@freezed
class SinglePokemonState with _$SinglePokemonState {
  const factory SinglePokemonState.notFound() = _NotFound;
  const factory SinglePokemonState.loading() = _Loading;
  const factory SinglePokemonState.success({required PokemonEntity pokemon}) =
      _Success;
  const factory SinglePokemonState.failure({required String message}) = _Error;
}
