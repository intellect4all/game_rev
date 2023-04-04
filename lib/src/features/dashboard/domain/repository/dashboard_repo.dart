import 'package:dartz/dartz.dart';
import 'package:game_rev/src/core/error/failures/failure.dart';
import 'package:game_rev/src/features/dashboard/domain/entity/game.dart';

import '../entity/genre.dart';
import '../entity/paginated_response.dart';
import '../entity/review.dart';

abstract class DashboardRepository {
  Future<Either<Failure, PaginatedResponse<Genre>>> getGenres(
      {required int limit, required int offset});

  Future<Either<Failure, PaginatedResponse<Game>>> getGames({
    required int limit,
    required int offset,
    String genreId = '',
  });

  Future<Either<Failure, PaginatedResponse<ReviewData>>> getReviewsForGame({
    required int limit,
    required int offset,
    required String gameId,
  });

  Future<Either<Failure, String>> postReview({
    required String gameId,
    required String comment,
    required int rating,
  });
}
