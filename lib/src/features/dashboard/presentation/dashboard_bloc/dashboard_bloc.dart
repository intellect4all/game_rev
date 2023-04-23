import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game_rev/src/features/authentication/data/data_source/authentication_manager.dart';
import 'package:game_rev/src/features/dashboard/domain/entity/review.dart';

import '../../domain/usecase/dashboard_facade.dart';

part 'dashboard_event.dart';

part 'dashboard_state.dart';

part 'dashboard_bloc.freezed.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final DashboardFacade _dashboardFacade;

  DashboardBloc({
    required DashboardFacade dashboardFacade,
  })  : _dashboardFacade = dashboardFacade,
        super(const DashboardState.initial()) {
    on<GetGenres>(_handleGetGenres);
    on<GetGames>(_handleGetGames);
    on<GetGamesByGenre>(_handleGetGamesByGenre);
    on<GetReviewsForGame>(_handleGetReviewsForGame);
    on<PostReview>(_handlePostReview);
  }

  Future<void> _handleGetGenres(
      GetGenres event, Emitter<DashboardState> emit) async {
    emit(const DashboardState.loading(DashboardSections.genres));
    final res = await _dashboardFacade.getGenres(
      limit: event.limit,
      offset: event.offset,
    );

    res.fold(
      (l) => emit(const DashboardState.error(
          section: DashboardSections.genres,
          message: "Unable to fetch genres")),
      (success) => emit(
        DashboardState.loaded(
          section: DashboardSections.genres,
          data: success,
        ),
      ),
    );
  }

  Future<void> _handleGetGames(
      GetGames event, Emitter<DashboardState> emit) async {
    emit(const DashboardState.loading(DashboardSections.games));
    final res = await _dashboardFacade.getGames(
      limit: event.limit,
      offset: event.offset,
    );

    res.fold(
      (l) => emit(DashboardState.error(
          section: DashboardSections.games,
          message: l.message ?? "Unable to get games")),
      (success) => emit(
        DashboardState.loaded(
          section: DashboardSections.games,
          data: success,
        ),
      ),
    );
  }

  Future<void> _handleGetGamesByGenre(
      GetGamesByGenre event, Emitter<DashboardState> emit) async {
    emit(const DashboardState.loading(DashboardSections.games));
    final res = await _dashboardFacade.getGames(
      genreId: event.genreSlug,
      limit: event.limit,
      offset: event.offset,
    );

    res.fold(
      (l) => emit(const DashboardState.error(
          section: DashboardSections.games,
          message: "Unable to get from Storage")),
      (success) => emit(
        DashboardState.loaded(
          section: DashboardSections.games,
          data: success,
        ),
      ),
    );
  }

  Future<void> _handleGetReviewsForGame(
      GetReviewsForGame event, Emitter<DashboardState> emit) async {
    emit(const DashboardState.loading(DashboardSections.gameScreenReviews));
    final res = await _dashboardFacade.getReviewsForGame(
      gameId: event.gameId,
      limit: event.limit,
      offset: event.offset,
    );

    res.fold(
      (l) => emit(
        DashboardState.error(
            section: DashboardSections.gameScreenReviews, message: l.message),
      ),
      (success) => emit(
        DashboardState.loaded(
          section: DashboardSections.gameScreenReviews,
          data: success,
        ),
      ),
    );
  }

  Future<void> _handlePostReview(
      PostReview event, Emitter<DashboardState> emit) async {
    emit(const DashboardState.postingReview());

    final res = await _dashboardFacade.postReview(
      gameId: event.gameId,
      comment: event.comment,
      rating: event.rating,
      latitude: event.latitude,
      longitude: event.longitude,
    );

    res.fold(
      (l) => emit(const DashboardState.error(
          section: DashboardSections.gameScreenReviews,
          message: "Unable to get from Storage")),
      (success) {
        final currentUserData = AuthenticationManager.getInstance().userData!;
        final review = Review(
          id: success,
          comment: event.comment,
          rating: event.rating,
          userId: currentUserData.user.id,
          gameId: event.gameId,
          createdAt: DateTime.now(),
          votes: 0,
        );
        final userData = BasicUser(
          avatar: currentUserData.user.displayPicture,
          id: currentUserData.user.id,
          fullName: currentUserData.user.fullName,
          username: currentUserData.user.username,
          location: currentUserData.user.location,
        );
        final reviewData = ReviewData(
            review: review,
            user: userData,
            vote: Vote(
              userId: currentUserData.user.id,
              isDownvote: false,
              isUpvote: false,
              reviewId: success,
            ));

        emit(
          DashboardState.postedReview(reviewData: reviewData),
        );
      },
    );
  }
}
