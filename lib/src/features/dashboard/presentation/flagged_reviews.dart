import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_rev/src/features/dashboard/domain/entity/paginated_response.dart';

import '../../../core/utils/utils.dart';
import '../../admin/presentation/admin_bloc.dart';
import '../domain/entity/review.dart';

class FlaggedReviewsScreens extends StatefulWidget {
  static const routeName = '/flagged-reviews';

  const FlaggedReviewsScreens({Key? key}) : super(key: key);

  @override
  State<FlaggedReviewsScreens> createState() => _FlaggedReviewsScreensState();
}

class _FlaggedReviewsScreensState extends State<FlaggedReviewsScreens> {
  final _flaggedReviews = <Review>[];
  PaginatedResponse<Review> _reviewsData = PaginatedResponse<Review>.empty();

  @override
  void initState() {
    super.initState();
    _fetchFlaggedReviews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flagged Reviews'),
      ),
      body: BlocConsumer<AdminBloc, AdminState>(
          listener: _listener,
          listenWhen: (previous, current) {
            // return current.maybeWhen(orElse: () => false
            return true;
          },
          builder: (context, state) {
            final isLoading = state.maybeWhen(
              orElse: () => false,
              fetchingFlaggedReviews: () => true,
            );

            if (!isLoading && _flaggedReviews.isEmpty) {
              return const Center(
                child: Text('No flagged reviews'),
              );
            }

            return NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                if (notification is ScrollEndNotification &&
                    notification.metrics.extentAfter == 0) {
                  if (!_reviewsData.hasMore || isLoading) {
                    return false;
                  }
                  _fetchFlaggedReviews();
                }
                return true;
              },
              child: ListView.builder(
                itemCount: isLoading
                    ? _flaggedReviews.length + 1
                    : _flaggedReviews.length,
                itemBuilder: (context, index) {
                  if (isLoading && index == _flaggedReviews.length) {
                    return const Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }

                  final review = _flaggedReviews[index];
                  return Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ID: ${review.id}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "Comment: ${review.comment} ",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Utils.showToast("Deleting review");
                            context.read<AdminBloc>().add(
                                  AdminEvent.deleteReview(
                                    reviewId: review.id,
                                  ),
                                );
                          },
                          icon: const Icon(Icons.delete),
                        ),
                        IconButton(
                          onPressed: () {
                            Utils.showToast("Unflagging review");
                            context.read<AdminBloc>().add(
                                  AdminEvent.unFlagReview(
                                    reviewId: review.id,
                                  ),
                                );
                          },
                          icon: const Icon(Icons.flag),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          }),
    );
  }

  void _listener(BuildContext context, AdminState state) {
    state.maybeWhen(
      orElse: () {},
      flaggedReviewsFetched: (reviewsData) {
        _reviewsData = reviewsData;
        // check for duplicates
        for (final review in reviewsData.data) {
          if (!_flaggedReviews.contains(review)) {
            _flaggedReviews.add(review);
          }
        }
        setState(() {});
      },
      reviewDeleted: (String reviewId) =>
          _removeReviewFromFlaggedReviews(reviewId, context),
      reviewUnflagged: (String reviewId) =>
          _removeReviewFromFlaggedReviews(reviewId, context),
    );
  }

  Future<void> _fetchFlaggedReviews() async {
    context.read<AdminBloc>().add(
          AdminEvent.getFlaggedReviews(
            offset: _flaggedReviews.length,
            limit: 20,
          ),
        );
  }

  void _removeReviewFromFlaggedReviews(String reviewId, BuildContext context) {
    // check if a dialog is showing
    if (ModalRoute.of(context)?.isCurrent != true) {
      Navigator.pop(context);
    }

    _flaggedReviews.removeWhere((review) => review.id == reviewId);
    setState(() {});
  }
}
