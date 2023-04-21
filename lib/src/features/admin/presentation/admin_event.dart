part of 'admin_bloc.dart';

@freezed
class AdminEvent with _$AdminEvent {
  const factory AdminEvent.started() = _Started;

  const factory AdminEvent.fetchGenres({
    required int limit,
    required int offset,
  }) = _FetchGenres;

  const factory AdminEvent.addGame(
      {required Map<String, String> fields,
      required List<Genre> genres,
      required XFile image}) = _AddGame;

  const factory AdminEvent.getFlaggedReviews(
      {required int limit, required int offset}) = _GetFlaggedReviews;

  const factory AdminEvent.deleteReview({required String reviewId}) =
      _DeleteReview;

  const factory AdminEvent.getAllRecentUnreviewedGames() =
      _GetAllRecentUnreviewedGames;

  const factory AdminEvent.unFlagReview({required String reviewId}) =
      _UnflagReview;

  const factory AdminEvent.getReviewLocations({
    required ReviewLocationDuration duration,
    required int value,
  }) = _GetReviewLocationsEvent;
}
