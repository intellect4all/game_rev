import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_rev/src/core/constants/extensions/extensions.dart';
import 'package:game_rev/src/features/dashboard/presentation/dashboard_bloc/dashboard_bloc.dart';
import 'package:game_rev/src/features/dashboard/presentation/widgets/rating_widget.dart';
import 'package:game_rev/src/features/dashboard/presentation/widgets/review_card.dart';

import '../../../../core/utils/utils.dart';
import '../../domain/entity/game.dart';
import '../../domain/entity/paginated_response.dart';
import '../../domain/entity/review.dart';

class ReviewsWidget extends StatefulWidget {
  final Game game;
  final ValueSetter<ReviewData>? onReviewAdded;

  const ReviewsWidget({Key? key, required this.game, this.onReviewAdded})
      : super(key: key);

  @override
  State<ReviewsWidget> createState() => _ReviewsWidgetState();
}

class _ReviewsWidgetState extends State<ReviewsWidget> {
  final _reviews = <ReviewData>[];

  PaginatedResponse _reviewPagination = const PaginatedResponse<ReviewData>(
    data: [],
    itemsPerPage: 0,
    currentPage: 0,
    totalPages: 0,
    totalItems: 0,
    hasMore: false,
  );

  final _controller = TextEditingController();
  final ValueNotifier<bool> _fetchingReviews = ValueNotifier(false);
  int _rating = 0;

  @override
  void initState() {
    super.initState();
    _fetchReviews();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<DashboardBloc, DashboardState>(
      listener: _listener,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Add Review',
                style: context.textTheme.titleLarge?.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: context.colorScheme.onPrimary,
              border: Border(
                left: BorderSide(
                  color: context.colorScheme.primary,
                  width: 4,
                ),
              ),
              boxShadow: [
                BoxShadow(
                  color: context.colorScheme.onSurface.withOpacity(0.2),
                  blurRadius: 7,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                RatingWidget(
                  onRating: (rating) {
                    setState(() {
                      _rating = rating;
                    });
                  },
                  currentRating: _rating,
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        maxLines: 4,
                        decoration: InputDecoration(
                          hintText: 'Write your review here...',
                          hintStyle: context.textTheme.bodyLarge?.copyWith(
                            fontSize: 15,
                            color:
                                context.colorScheme.onSurface.withOpacity(0.6),
                            fontWeight: FontWeight.w400,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: context.colorScheme.onPrimary,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 15,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    ElevatedButton(
                      onPressed: () {
                        if (_rating == 0) {
                          Utils.showToast('Please rate the game first');
                          return;
                        }

                        final text = _controller.text.trim();

                        if (text.isEmpty) {
                          Utils.showToast('Please write a review');
                          return;
                        }

                        if (text.length < 10) {
                          Utils.showToast(
                              'Review should be at least 10 characters');
                          return;
                        }

                        context.read<DashboardBloc>().add(
                              DashboardEvent.postReview(
                                comment: text,
                                gameId: widget.game.id,
                                rating: _rating,
                              ),
                            );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: context.colorScheme.primary,
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(15),
                      ),
                      child: const Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Text(
            'Reviews',
            style: context.textTheme.titleLarge?.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 15),
          ..._buildReviews(),
          ValueListenableBuilder(
            valueListenable: _fetchingReviews,
            builder: (BuildContext context, bool value, Widget? child) {
              if (value) {
                return child!;
              }

              return const SizedBox.shrink();
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }

  void _listener(BuildContext context, DashboardState state) {
    state.maybeWhen(
        orElse: () {},
        postedReview: (data) {
          _controller.clear();
          _reviews.insert(0, data);
          _reviewPagination = _reviewPagination.copyWith(
            data: _reviews,
            totalItems: _reviewPagination.totalItems + 1,
          );
          widget.onReviewAdded?.call(data);
          _rating = 0;
          setState(() {});
        },
        error: (section, error) {
          if (section == DashboardSections.gameScreenReviews) {
            _fetchingReviews.value = false;
            Utils.showToast("Error: $error");
          }
        },
        loading: (section) {
          if (section == DashboardSections.gameScreenReviews) {
            _fetchingReviews.value = true;
          }
        },
        loaded: (section, data) {
          if (section == DashboardSections.gameScreenReviews) {
            _fetchingReviews.value = false;
            _reviewPagination = _reviewPagination.copyWithOther(other: data);
            // check for duplicates
            for (final ReviewData review in data.data) {
              if (!_reviews
                  .any((element) => element.review.id == review.review.id)) {
                _reviews.add(review);
              }
            }
            setState(() {});
          }
        });
  }

  List<Widget> _buildReviews() {
    if (_reviews.isEmpty) {
      return [
        const Text(
          "No reviews",
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
      ];
    }
    return _reviews
        .map(
          (e) => ReviewCard(
            reviewData: e,
          ),
        )
        .toList();
  }

  void _fetchReviews() {
    context.read<DashboardBloc>().add(
          DashboardEvent.getReviewsForGame(
            gameId: widget.game.id,
            offset: _reviews.length,
            limit: 10,
          ),
        );
  }
}
