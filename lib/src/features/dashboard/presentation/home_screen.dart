import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_rev/src/core/constants/extensions/extensions.dart';
import 'package:game_rev/src/features/dashboard/domain/entity/genre.dart';
import 'package:game_rev/src/features/dashboard/domain/entity/paginated_response.dart';
import 'package:game_rev/src/features/dashboard/presentation/dashboard_bloc/dashboard_bloc.dart';
import 'package:game_rev/src/features/dashboard/presentation/widgets/game_card.dart';
import 'package:string_extensions/string_extensions.dart';

import '../../../core/utils/utils.dart';
import '../domain/entity/game.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _games = <Game>[];
  final _genres = <Genre>[];

  bool _gameHasMore = true;
  bool _genreHasMore = true;

  final _selectedGenre = ValueNotifier<Genre?>(null);

  @override
  void initState() {
    super.initState();
    _fetchInitData();

    _startListenerOnSelectedGenre();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocListener<DashboardBloc, DashboardState>(
          listener: _dashboardListener,
          child: Center(
            child: Column(
              children: [
                BlocBuilder<DashboardBloc, DashboardState>(
                  builder: (context, state) {
                    return ValueListenableBuilder(
                        valueListenable: _selectedGenre,
                        builder: (context, value, child) {
                          return Visibility(
                            visible: _genres.isNotEmpty,
                            child: Container(
                              height: 50,
                              child: ListView.separated(
                                itemBuilder: (context, index) {
                                  if (index == 0) {
                                    return GenreItem(
                                      isSelected: _selectedGenre.value == null,
                                      genre: const Genre(
                                          slug: 'all',
                                          title: 'All',
                                          description: ''),
                                      onTap: () {
                                        _selectedGenre.value = null;
                                      },
                                    );
                                  }
                                  return GenreItem(
                                    isSelected: _selectedGenre.value ==
                                        _genres[index - 1],
                                    genre: _genres[index - 1],
                                    onTap: () {
                                      _selectedGenre.value = _genres[index - 1];
                                    },
                                    isLast: index == _genres.length,
                                  );
                                },
                                separatorBuilder: (context, index) =>
                                    const SizedBox(
                                  width: 0,
                                ),
                                itemCount: _genres.length + 1,
                                scrollDirection: Axis.horizontal,
                              ),
                            ),
                          );
                        });
                  },
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: BlocBuilder<DashboardBloc, DashboardState>(
                    buildWhen: (previous, current) => current.maybeWhen(
                      orElse: () => false,
                      loaded: (section, data) =>
                          section == DashboardSections.games,
                      loading: (section) => section == DashboardSections.games,
                      error: (section, message) =>
                          section == DashboardSections.games,
                    ),
                    builder: (context, state) {
                      return NotificationListener<ScrollNotification>(
                        onNotification: (notification) {
                          if (notification is ScrollEndNotification) {
                            final metrics = notification.metrics;
                            if (metrics.pixels == metrics.maxScrollExtent) {
                              if (_gameHasMore) {
                                context.read<DashboardBloc>().add(
                                      DashboardEvent.getGames(
                                        limit: 30,
                                        offset: _games.length,
                                      ),
                                    );
                              }
                            }
                          }
                          return false;
                        },
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            return GameCard(game: _games[index]);
                          },
                          separatorBuilder: (context, index) => const SizedBox(
                            height: 20,
                          ),
                          itemCount: _games.length,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _fetchInitData() {
    context.read<DashboardBloc>().add(
          const DashboardEvent.getGenres(
            limit: 30,
            offset: 0,
          ),
        );

    context
        .read<DashboardBloc>()
        .add(const DashboardEvent.getGames(limit: 10, offset: 0));
  }

  void _dashboardListener(BuildContext context, DashboardState state) {
    state.maybeWhen(
      orElse: () {},
      initial: () {},
      loading: (section) {},
      loaded: (section, data) {
        if (section == DashboardSections.genres) {
          final newResp = data as PaginatedResponse<Genre>;
          for (final genre in newResp.data) {
            final genreExists =
                _genres.any((element) => element.slug == genre.slug);
            if (!genreExists) {
              _genres.add(genre);
            }
          }
          _genreHasMore = newResp.hasMore;
          log(_genres.toString());
        } else if (section == DashboardSections.games) {
          final newResp = data as PaginatedResponse<Game>;
          for (final game in newResp.data) {
            final gameExists = _games.any((element) => element.id == game.id);
            if (!gameExists) {
              _games.add(game);
            }
          }
          _gameHasMore = newResp.hasMore;
        }
      },
      error: (section, message) {
        Utils.showToast("Error $message");
      },
    );
  }

  void _startListenerOnSelectedGenre() {
    _selectedGenre.addListener(_fetchGamesByGenre);
  }

  void _fetchGamesByGenre() {
    if (_selectedGenre.value == null) {
      _games.clear();
      context
          .read<DashboardBloc>()
          .add(const DashboardEvent.getGames(limit: 10, offset: 0));
    } else {
      _games.clear();
      context.read<DashboardBloc>().add(
            DashboardEvent.getGamesByGenre(
              genreSlug: _selectedGenre.value!.slug,
              limit: 10,
              offset: 0,
            ),
          );
    }
  }
}

class GenreItem extends StatelessWidget {
  final Genre genre;
  final bool isSelected;
  final VoidCallback onTap;
  final bool isLast;

  const GenreItem(
      {Key? key,
      required this.genre,
      required this.isSelected,
      required this.onTap,
      this.isLast = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding:
            EdgeInsets.symmetric(horizontal: isSelected ? 20 : 3, vertical: 3),
        margin: EdgeInsets.only(left: 20, right: isLast ? 20 : 0),
        decoration: BoxDecoration(
          color: isSelected ? context.colorScheme.primary : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Text(genre.title.toTitleCase!,
            style: context.textTheme.bodyText1!.copyWith(
              color: isSelected ? Colors.white : context.colorScheme.primary,
            )),
      ),
    );
  }
}
