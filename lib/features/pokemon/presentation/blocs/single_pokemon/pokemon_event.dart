part of 'pokemon_bloc.dart';

@freezed
class SinglePokemonEvent with _$SinglePokemonEvent {
  const factory SinglePokemonEvent.fetch(int id) = _Fetch;
}