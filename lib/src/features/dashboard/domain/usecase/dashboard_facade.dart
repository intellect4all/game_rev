import 'package:dartz/dartz.dart';

import '../../../../core/error/failures/failure.dart';
import '../entity/game.dart';
import '../entity/genre.dart';
import '../entity/paginated_response.dart';
import '../entity/review.dart';
import '../repository/dashboard_repo.dart';

class DashboardFacade {
  final DashboardRepository _dashboardRepository;

  DashboardFacade(this._dashboardRepository);

  Future<Either<Failure, PaginatedResponse<Genre>>> getGenres(
      {required int limit, required int offset}) {
    return _dashboardRepository.getGenres(limit: limit, offset: offset);
  }

  Future<Either<Failure, PaginatedResponse<Game>>> getGames(
      {required int limit, required int offset, String genreId = ''}) {
    return _dashboardRepository.getGames(
        limit: limit, offset: offset, genreId: genreId);
  }

  Future<Either<Failure, PaginatedResponse<ReviewData>>> getReviewsForGame(
      {required int limit, required int offset, required String gameId}) {
    return _dashboardRepository.getReviewsForGame(
        limit: limit, offset: offset, gameId: gameId);
  }

  Future<Either<Failure, String>> postReview({
    required String gameId,
    required String comment,
    required int rating,
    required double latitude,
    required double longitude,
  }) {
    return _dashboardRepository.postReview(
      gameId: gameId,
      comment: comment,
      rating: rating,
      latitude: latitude,
      longitude: longitude,
    );
  }
}
