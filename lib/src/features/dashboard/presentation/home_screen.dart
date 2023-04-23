import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_rev/src/core/constants/extensions/context/context.dart';
import 'package:game_rev/src/core/constants/extensions/extensions.dart';
import 'package:game_rev/src/features/authentication/presentation/authentication_bloc.dart';
import 'package:game_rev/src/features/dashboard/domain/entity/genre.dart';
import 'package:game_rev/src/features/dashboard/domain/entity/paginated_response.dart';
import 'package:game_rev/src/features/dashboard/presentation/dashboard_bloc/dashboard_bloc.dart';
import 'package:game_rev/src/features/dashboard/presentation/widgets/game_card.dart';
import 'package:string_extensions/string_extensions.dart';

import '../../../core/utils/utils.dart';
import '../domain/entity/game.dart';
import 'widgets/genre_item.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () async => _handleLogout(context),
        child: const Icon(Icons.logout),
      ),
      body: SafeArea(
        child: BlocListener<DashboardBloc, DashboardState>(
          listener: _dashboardListener,
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                height: context.screenHeight(),
                child: Column(
                  children: [
                    const HomeScreenLandingPage(),
                    const SizedBox(height: 20),
                    BlocBuilder<DashboardBloc, DashboardState>(
                      builder: (context, state) {
                        return ValueListenableBuilder(
                            valueListenable: _selectedGenre,
                            builder: (context, value, child) {
                              return Visibility(
                                visible: _genres.isNotEmpty,
                                child: SizedBox(
                                  height: 50,
                                  child: ListView.separated(
                                    itemBuilder: (context, index) {
                                      if (index == 0) {
                                        return GenreItem(
                                          isSelected:
                                              _selectedGenre.value == null,
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
                                          _selectedGenre.value =
                                              _genres[index - 1];
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
                    context.isMobile
                        ? const SizedBox(height: 20)
                        : const SizedBox.shrink(),
                    BlocBuilder<DashboardBloc, DashboardState>(
                      buildWhen: (previous, current) => current.maybeWhen(
                        orElse: () => false,
                        loaded: (section, data) =>
                            section == DashboardSections.games,
                        loading: (section) =>
                            section == DashboardSections.games,
                        error: (section, message) =>
                            section == DashboardSections.games,
                      ),
                      builder: (context, state) {
                        if (state.maybeWhen(
                              orElse: () => false,
                              loading: (section) =>
                                  section == DashboardSections.games,
                            ) &&
                            _games.isEmpty) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }

                        return NotificationListener<ScrollNotification>(
                          onNotification: (notification) {
                            if (notification is ScrollEndNotification) {
                              final metrics = notification.metrics;
                              if (metrics.pixels == metrics.maxScrollExtent) {
                                if (_gameHasMore) {
                                  _showFetchingMoreGamesToast();
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
                          child: _buildList(),
                        );
                      },
                    ),
                  ],
                ),
              ),
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

    context.read<DashboardBloc>().add(
          const DashboardEvent.getGames(limit: 10, offset: 0),
        );
  }

  void _dashboardListener(BuildContext context, DashboardState state) {
    state.maybeWhen(
      orElse: () {},
      initial: () {},
      postedReview: (rev) {
        log(rev.toString());

        try {
          final game =
              _games.firstWhere((element) => element.id == rev.review.gameId);
          final newGame = game.updateRating(rev.review.rating);
          final index = _games.indexOf(game);
          _games[index] = newGame;

          setState(() {});
        } catch (e) {
          log(e.toString());
        }
      },
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
      context.read<DashboardBloc>().add(
            const DashboardEvent.getGames(limit: 10, offset: 0),
          );
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

  Widget _buildList() {
    if (context.isMobile) {
      return Expanded(
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
    }

    return Flexible(
      fit: FlexFit.tight,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: context.isTablet ? 2 : 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GameCard(game: _games[index]);
        },
        itemCount: _games.length,
      ),
    );
  }

  Future<void> _handleLogout(BuildContext context) async {
    //show a confirmation dialog
    final shouldLogout = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Logout"),
        content: const Text("Are you sure you want to logout?"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            child: const Text("No"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: const Text("Yes"),
          ),
        ],
      ),
    );

    if (shouldLogout == true) {
      context.read<AuthenticationBloc>().add(const SignOutEvent());
    }
  }

  void _showFetchingMoreGamesToast() {
    Utils.showToast("Fetching more games");
  }
}

class HomeScreenLandingPage extends StatelessWidget {
  const HomeScreenLandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (context.isMobile) {
      return const SizedBox();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 100),
          Text(
            "Game review is easy with us",
            textAlign: TextAlign.center,
            style: context.textTheme.titleLarge?.copyWith(
              color: context.colorScheme.primary,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "We provide you with the best games and reviews",
            textAlign: TextAlign.center,
            style: context.textTheme.bodyText1?.copyWith(
              color: context.colorScheme.onBackground,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
