import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon/features/pokemon/domain/entities/entities.dart';
import 'package:pokemon/features/pokemon/domain/repositories/repositories.dart';

part 'pokemon_event.dart';
part 'pokemon_state.dart';
part 'pokemon_bloc.freezed.dart';

class CatalogPokemonBloc extends Bloc<CatalogPokemonEvent, CatalogPokemonState> {
  CatalogPokemonBloc({required PokemonRepository pokemonRepository})
      : _pokemonRepository = pokemonRepository,
        super(const  CatalogPokemonStateLoading(pokemons: [], page: 0)) {
    on<_Fetch>(_onFetch);
  }

  static const int _size = 20;
  final PokemonRepository _pokemonRepository;

  FutureOr<void> _onFetch(_Fetch event, Emitter<CatalogPokemonState> emit) async {
    emit(CatalogPokemonState.loading(
      pokemons: state.pokemons,
      page: state.page,
    ));
    try {
      final pokemons = await _pokemonRepository.getPokemons(state.page, _size);
      
      emit(CatalogPokemonState.success(
          pokemons: [...state.pokemons, ...pokemons], page: state.page + 1));
    } catch (e, s) {
      addError(e, s);
      emit(CatalogPokemonState.failure(
          pokemons: state.pokemons,
          page: state.page,
          message: 'Could not load next pokemons :('));
    }
  }
}
