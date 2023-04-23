import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:game_rev/src/core/constants/extensions/context/context.dart';
import 'package:game_rev/src/core/constants/extensions/extensions.dart';
import 'package:game_rev/src/core/widgets/app_image_widget.dart';
import 'package:game_rev/src/core/widgets/screen_adjuster.dart';

import '../domain/entity/game.dart';
import 'widgets/reviews_widget.dart';
import 'widgets/star_rating.dart';

class GameScreen extends StatefulWidget {
  static const String routeName = '/game';

  final Game game;

  const GameScreen({Key? key, required this.game}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  final ValueNotifier<bool> _showBackToTop = ValueNotifier(false);
  final _scrollController = ScrollController();

  final ValueNotifier<Rating> _rating =
      ValueNotifier(const Rating(count: 0, sum: 0));

  final GlobalKey _abcKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _rating.value = widget.game.rating;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _abcKey,
      floatingActionButton: ValueListenableBuilder<bool>(
        valueListenable: _showBackToTop,
        builder: (context, value, child) {
          return AnimatedOpacity(
            opacity: value ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 300),
            child: child,
          );
        },
        child: FloatingActionButton(
          onPressed: () {
            _scrollController.animateTo(
              0,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
            );
          },
          child: const Icon(Icons.arrow_upward),
        ),
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          if (notification is ScrollEndNotification) {
            final metrics = notification.metrics;
            if (metrics.pixels == metrics.maxScrollExtent) {
              // context
              //     .read<DashboardBloc>()
              //     .add(DashboardEvent.loadReviews(widget.game.id));
            }
          }
          if (notification is ScrollUpdateNotification) {
            final metrics = notification.metrics;
            _showBackToTop.value = metrics.pixels > 0;
          }
          return false;
        },
        child: SingleChildScrollView(
          controller: _scrollController,
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 33),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 25),
                      ScreenAdjuster(
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: double.infinity,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: [
                                    context.colorScheme.primary,
                                    Colors.grey[900] ?? Colors.black,
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: context.colorScheme.onSurface
                                        .withOpacity(0.2),
                                    blurRadius: 15,
                                    offset: const Offset(0, 5),
                                  ),
                                ],
                              ),
                              child: Center(
                                child: ValueListenableBuilder<Rating>(
                                  valueListenable: _rating,
                                  builder: (context, value, child) {
                                    return StarRating(
                                      rating: value,
                                      isGameScreen: true,
                                    );
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                            ReviewsWidget(
                              game: widget.game,
                              onReviewAdded: (rev) {
                                final rat = _rating.value;
                                _rating.value = Rating(
                                  sum: rat.sum + rev.review.rating,
                                  count: rat.count + 1,
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildHeader() {
    if (context.isMobile) {
      return _buildMobileHeader();
    }
    return _buildDesktopHeader();
  }

  Widget _buildImage() {
    if (!context.isMobile) {
      return Container(
        color: context.colorScheme.inverseSurface.withOpacity(0.3),
        margin: const EdgeInsets.only(left: 20),
        child: Hero(
          tag: widget.game.id,
          child: AppImageWidget(
            imageUrl: widget.game.image,
            height: context.screenHeight() * 0.4,
            width: 200,
          ),
        ),
      );
    }
    return SizedBox(
      height: context.screenHeight() * 0.4,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            color: context.colorScheme.inverseSurface.withOpacity(0.3),
            width: double.infinity,
            height: double.infinity,
            child: Hero(
              tag: widget.game.id,
              child: AppImageWidget(
                imageUrl: widget.game.image,
                height: context.screenHeight() * 0.4,
                width: context.screenWidth(),
              ),
            ),
          ),
          // build a circular vignette effect
          Positioned(
            bottom: -(context.screenWidth() * 1.8) / 5,
            left: -(context.screenWidth() * 1.8) / 2 / 5,
            child: Container(
              width: context.screenWidth() * 1.8,
              height: context.screenWidth() * 1.8,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    context.colorScheme.background.withOpacity(0.0),
                    context.colorScheme.background.withOpacity(0.1),
                    context.colorScheme.background.withOpacity(0.2),
                    context.colorScheme.background.withOpacity(0.5),
                    context.colorScheme.background.withOpacity(0.8),
                    context.colorScheme.background.withOpacity(1.0),
                  ],
                  stops: const [0.0, 0.5, 0.6, 0.7, 0.9, 1.0],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -5,
            left: 0,
            child: Container(
              width: context.screenWidth(),
              alignment: Alignment.center,
              height: context.screenWidth() * 1.8,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [
                    context.colorScheme.background,
                    context.colorScheme.background.withOpacity(0.0),
                  ],
                  stops: const [0, 0.3],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(
                  Icons.arrow_back,
                  color: context.colorScheme.inversePrimary.withOpacity(0.4),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMobileHeader() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildImage(),
        const SizedBox(height: 20),
        TitleSection(game: widget.game),
      ],
    );
  }

  Widget _buildDesktopHeader() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildImage(),
        const SizedBox(width: 20),
        Expanded(
          flex: 3,
          child: TitleSection(game: widget.game),
        ),
      ],
    );
  }
}

class TitleSection extends StatelessWidget {
  final Game game;

  const TitleSection({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            game.title,
            style: context.textTheme.titleLarge?.copyWith(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            '${game.publisher}  |  ${game.releaseDate}',
            style: context.textTheme.bodyLarge?.copyWith(
              fontSize: 15,
              height: 1.5,
              color: context.colorScheme.onSurface.withOpacity(0.6),
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            game.summary,
            style: context.textTheme.bodyLarge?.copyWith(
              fontSize: 15,
              height: 1.5,
              color: context.colorScheme.secondary,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
