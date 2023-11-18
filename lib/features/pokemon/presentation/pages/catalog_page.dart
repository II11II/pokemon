import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pokemon/features/pokemon/domain/entities/pokemon.dart';
import 'package:pokemon/features/pokemon/presentation/blocs/catalog/pokemon_bloc.dart';
import 'package:pokemon/features/pokemon/presentation/widgets/catalog_card.dart';
import 'package:pokemon/shared/ui_kit/theme/widgets/theme_icon.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({super.key});

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  late ScrollController _scrollController;
  bool isPokemonListView = false;
  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: CustomScrollView(controller: _scrollController, slivers: [
        SliverAppBar.medium(title: const Text("Pokemon Catalog!"), actions: [
          const ThemeIconButton(),
          IconButton(
              onPressed: () =>
                  setState(() => isPokemonListView = !isPokemonListView),
              icon: Icon(isPokemonListView
                  ? Icons.list_alt
                  : Icons.grid_view_outlined)),
          BlocBuilder<CatalogPokemonBloc, CatalogPokemonState>(
            builder: (context, state) {
              if (state.pokemons.isEmpty) {
                return const SizedBox.shrink();
              }
              return IconButton(
                  onPressed: () => showDialog(
                      context: context,
                      builder: (context) {
                        return Center(
                          child: BlocBuilder<CatalogPokemonBloc,
                              CatalogPokemonState>(
                            builder: (context, state) {
                              final pokemonsWithImages = List.of(state.pokemons)
                                ..removeWhere(
                                    (element) => element.image == null);
                              return SizedBox(
                                height: size.height * 0.3,
                                child: Carousel(
                                    pokemonsWithImages: pokemonsWithImages,
                                    size: size,
                                    theme: theme),
                              );
                            },
                          ),
                        );
                      }),
                  icon: const Icon(Icons.slideshow));
            },
          )
        ]),
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: BlocConsumer<CatalogPokemonBloc, CatalogPokemonState>(
            listener: (context, state) {
              if (state is CatalogPokemonStateLoading &&
                  state.pokemons.isNotEmpty) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("Loading ...")));
              } else if (state is! CatalogPokemonStateLoading &&
                  state.pokemons.isNotEmpty) {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              }
            },
            builder: (context, state) {
              if (state is CatalogPokemonStateLoading &&
                  state.pokemons.isEmpty) {
                return const SliverToBoxAdapter(
                  child: CircularProgressIndicator.adaptive(),
                );
              }

              if (isPokemonListView) {
                return SliverList.builder(
                  itemCount: state.pokemons.length,
                  itemBuilder: (context, index) => ListTile(
                    contentPadding: EdgeInsets.zero,
                    onTap: () => context
                        .push('/pokemons?id=${state.pokemons[index].id}'),
                    leading: state.pokemons[index].image != null
                        ? AspectRatio(
                            aspectRatio: 1,
                            child: Image.network(
                              state.pokemons[index].image!,
                              fit: BoxFit.cover,
                            ),
                          )
                        : const Text("No Image"),
                    title: Text(
                      state.pokemons[index].name,
                    ),
                  ),
                );
              }
              return SliverGrid(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  mainAxisSpacing: 16.0,
                  crossAxisSpacing: 16.0,
                  childAspectRatio: 1,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return PokemonCatalogCard(
                      onPressed: () => context
                          .push('/pokemons?id=${state.pokemons[index].id}'),
                      pokemonEntity: state.pokemons[index],
                    );
                  },
                  childCount: state.pokemons.length,
                ),
              );
            },
          ),
        ),
      ]),
    );
  }

  void _scrollListener() {
    if (_scrollController.position.maxScrollExtent ==
        _scrollController.position.pixels) {
      final bloc = context.read<CatalogPokemonBloc>();
      if (bloc.state is! CatalogPokemonStateLoading) {
        bloc.add(const CatalogPokemonEvent.fetch());
      }
    }
  }
}

class Carousel extends StatefulWidget {
  const Carousel({
    super.key,
    required this.pokemonsWithImages,
    required this.size,
    required this.theme,
  });

  final List<PokemonEntity> pokemonsWithImages;
  final Size size;
  final ThemeData theme;

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late PageController _controller;
  Timer? _timer;
  @override
  void initState() {
    _controller = PageController();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer?.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
              controller: _controller,
              itemCount: widget.pokemonsWithImages.length,
              itemBuilder: (context, index) {
                final pokemon = widget.pokemonsWithImages[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ClipRRect(
                    child: Stack(fit: StackFit.expand, children: [
                      Image.network(
                        pokemon.image!,
                        fit: BoxFit.cover,
                      ),
                      DecoratedBox(
                          decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.2),
                          blurRadius: 60.0,

                          offset: const Offset(
                            -200.0, // horizontal, move right 10
                            0.0, // vertical, move down 10
                          ),
                          // has the effect of softening the shadow
                          spreadRadius:
                              60.0, // has the effect of extending the shadow
                        )
                      ])),
                      Positioned(
                        bottom: 8,
                        left: 8,
                        right: widget.size.width / 2,
                        child: Text(pokemon.name,
                            style: widget.theme.textTheme.labelLarge?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w800)),
                      )
                    ]),
                  ),
                );
              }),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {
                  _controller.previousPage(
                      duration: kThemeChangeDuration, curve: Curves.linear);
                }),
            IconButton(
                icon: Icon(
                  _timer == null ? Icons.play_arrow : Icons.pause,
                ),
                onPressed: () {
                  setState(() {
                    if (_timer == null) {
                      _timer =
                          Timer.periodic(const Duration(seconds: 1), (timer) {
                        if ((_controller.page!.round() + 1) <
                            widget.pokemonsWithImages.length) {
                          _controller.nextPage(
                              duration: kThemeChangeDuration,
                              curve: Curves.linear);
                        } else {
                          _controller.jumpToPage(0);
                        }
                      });
                    } else {
                      _timer!.cancel();
                      _timer = null;
                    }
                  });
                }),
            IconButton(
                icon: const Icon(
                  Icons.arrow_forward,
                ),
                onPressed: () {
                  _controller.nextPage(
                      duration: kThemeChangeDuration, curve: Curves.linear);
                }),
          ],
        )
      ],
    );
  }
}
