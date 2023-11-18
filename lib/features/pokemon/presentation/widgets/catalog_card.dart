import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pokemon/features/pokemon/domain/entities/entities.dart';

class PokemonCatalogCard extends StatelessWidget {
  const PokemonCatalogCard({
    super.key,
    this.onPressed,
    required this.pokemonEntity,
  });
  final VoidCallback? onPressed;
  final PokemonEntity pokemonEntity;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Text(pokemonEntity.name,
              style: theme.textTheme.bodyMedium
                  ?.copyWith(fontWeight: FontWeight.w700)),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
