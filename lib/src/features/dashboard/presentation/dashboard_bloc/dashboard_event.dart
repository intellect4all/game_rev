part of 'dashboard_bloc.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.started() = _Started;

  const factory DashboardEvent.getGenres({
    required int limit,
    required int offset,
  }) = GetGenres;

  const factory DashboardEvent.getGames({
    required int limit,
    required int offset,
  }) = GetGames;

  const factory DashboardEvent.getGamesByGenre({
    required int limit,
    required int offset,
    required String genreSlug,
  }) = GetGamesByGenre;

  const factory DashboardEvent.getReviewsForGame({
    required int limit,
    required int offset,
    required String gameId,
  }) = GetReviewsForGame;

  const factory DashboardEvent.postReview({
    required String gameId,
    required String comment,
    required int rating,
    required double latitude,
    required double longitude,
  }) = PostReview;
}
