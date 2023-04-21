part of 'admin_bloc.dart';

@freezed
class AdminState with _$AdminState {
  const factory AdminState.initial() = _Initial;

  const factory AdminState.fetchingGenres() = _FetchingGenres;

  const factory AdminState.fetchingGenresSuccess(
      PaginatedResponse<Genre> genres) = _FetchingGenresSuccess;

  const factory AdminState.failure(String message) = _Failure;

  const factory AdminState.addingGame() = _AddingGame;

  const factory AdminState.addingGameSuccess() = _AddingGameSuccess;

  const factory AdminState.fetchingFlaggedReviews() = _FetchingFlaggedReviews;

  const factory AdminState.flaggedReviewsFetched(
      PaginatedResponse<Review> reviews) = _FetchingFlaggedReviewsSuccess;

  const factory AdminState.reviewDeleted(String reviewId) = _ReviewDeleted;

  const factory AdminState.reviewUnflagged(String reviewId) = _ReviewUnflagged;

  const factory AdminState.fetchingReviewLocations() = _FetchingReviewLocations;

  const factory AdminState.reviewLocationsFetched(
      List<ReviewLocation> success) = _FetchingReviewLocationsSuccess;

  const factory AdminState.fetchingReviewLocationsFailure(String message) =
      _FetchingReviewLocationsFailure;
}
