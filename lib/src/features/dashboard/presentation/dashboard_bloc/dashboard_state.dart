part of 'dashboard_bloc.dart';

@freezed
class DashboardState<T> with _$DashboardState {
  const factory DashboardState.initial() = _Initial;

  const factory DashboardState.loading(
    DashboardSections section,
  ) = _Loading;

  const factory DashboardState.loaded({
    required DashboardSections section,
    required T data,
  }) = _Loaded;

  const factory DashboardState.error({
    required DashboardSections section,
    required String message,
  }) = _Error;

  const factory DashboardState.postingReview() = _PostingReview;

  const factory DashboardState.postedReview({required ReviewData reviewData}) =
      _PostedReview;
}

enum DashboardSections {
  games,
  genres,
  gameScreenReviews,
}
