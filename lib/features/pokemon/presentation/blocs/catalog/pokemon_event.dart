part of 'pokemon_bloc.dart';

@freezed
class CatalogPokemonEvent with _$CatalogPokemonEvent {
  const factory CatalogPokemonEvent.fetch() = _Fetch;
}