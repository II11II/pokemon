import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon/features/pokemon/domain/entities/entities.dart';
import 'package:pokemon/features/pokemon/domain/repositories/repositories.dart';

part 'pokemon_event.dart';
part 'pokemon_state.dart';
part 'pokemon_bloc.freezed.dart';

class SinglePokemonBloc extends Bloc<SinglePokemonEvent, SinglePokemonState> {
  SinglePokemonBloc({required PokemonRepository pokemonRepository})
      : _pokemonRepository = pokemonRepository,
        super(const _Loading()) {
    on<_Fetch>(_onFetch);
  }
  final PokemonRepository _pokemonRepository;

  FutureOr<void> _onFetch(
      _Fetch event, Emitter<SinglePokemonState> emit) async {
    emit(const SinglePokemonState.loading());
    if (event.id == -1) {
      return emit(const SinglePokemonState.notFound());
    }
    try {
      final pokemon = await _pokemonRepository.getPokemonById(event.id);
      if (pokemon == null) {
        return emit(const SinglePokemonState.notFound());
      }
      emit(SinglePokemonState.success(pokemon: pokemon));
    } catch (e, s) {
      addError(e, s);
      emit(SinglePokemonState.failure(
          message: 'Could not find pokemon with id=${event.id}'));
    }
  }
}
