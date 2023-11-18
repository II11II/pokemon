import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/features/pokemon/domain/entities/entities.dart';
import 'package:pokemon/features/pokemon/presentation/blocs/single_pokemon/pokemon_bloc.dart';

class PokemonPage extends StatelessWidget {
  const PokemonPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<SinglePokemonBloc, SinglePokemonState>(
          builder: (context, state) => state.maybeMap(
            orElse: () => const SizedBox.shrink(),
            notFound: (_) => const Text("Not Found"),
            success: (success) => Text(
              success.pokemon.name,
            ),
            failure: (failure) => const Text("Failure"),
          ),
        ),
      ),
      body: BlocBuilder<SinglePokemonBloc, SinglePokemonState>(
        builder: (context, state) {
          return state.map(
            notFound: (_) => const Center(child: Text("Not Found")),
            loading: (_) => const Center(child: CircularProgressIndicator()),
            success: (success) => _PokemonBody(
              pokemonEntity: success.pokemon,
            ),
            failure: (failure) => Center(child: Text(failure.message)),
          );
        },
      ),
    );
  }
}

class _PokemonBody extends StatelessWidget {
  const _PokemonBody({
    required this.pokemonEntity,
  });
  final PokemonEntity pokemonEntity;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      children: [
        AspectRatio(
          aspectRatio: 3 / 2,
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: colorScheme.primaryContainer,
              ),
              alignment: Alignment.center,
              child: pokemonEntity.image != null
                  ? Image.network(
                    pokemonEntity.image!,
                    fit: BoxFit.cover,
                  )
                  : const Text("No Image")),
        ),
        const SizedBox(
          height: 8,
        ),
        Text("English name: ${pokemonEntity.name}",
            style: theme.textTheme.bodyMedium
                ?.copyWith(fontWeight: FontWeight.w900)),
        const SizedBox(
          height: 8,
        ),
        Text("Chinese name: ${pokemonEntity.cname}",
            style: theme.textTheme.bodyMedium
                ?.copyWith(color: theme.colorScheme.primary)),
        Text("Japanese name: ${pokemonEntity.jname}",
            style: theme.textTheme.bodyMedium
                ?.copyWith(color: theme.colorScheme.primary)),
        Text("Image ID: ${pokemonEntity.id}",
            style: theme.textTheme.bodyMedium
                ?.copyWith(color: theme.colorScheme.primary)),
        if (pokemonEntity.skills != null)
          Text.rich(TextSpan(
              text: "Skills:\n",
              children: [
                TextSpan(
                    text: "Egg: ${pokemonEntity.skills!.egg.join(",")}\n",
                    style: theme.textTheme.bodyMedium
                        ?.copyWith(color: theme.colorScheme.primary)),
                TextSpan(
                    text:
                        "Level Up: ${pokemonEntity.skills!.levelUp.join(",")}\n",
                    style: theme.textTheme.bodyMedium
                        ?.copyWith(color: theme.colorScheme.primary)),
                TextSpan(
                    text: "TM:${pokemonEntity.skills!.tm.join(",")}\n",
                    style: theme.textTheme.bodyMedium
                        ?.copyWith(color: theme.colorScheme.primary)),
                TextSpan(
                    text:
                        "Transfer: ${pokemonEntity.skills!.transfer.join(",")}\n",
                    style: theme.textTheme.bodyMedium
                        ?.copyWith(color: theme.colorScheme.primary)),
                TextSpan(
                    text: "Tutor: ${pokemonEntity.skills!.tutor.join(",")}\n",
                    style: theme.textTheme.bodyMedium
                        ?.copyWith(color: theme.colorScheme.primary)),
              ],
              style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w900,
                  color: theme.colorScheme.primary))),
      ],
    );
  }
}
