import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:game_rev/src/core/error/failures/failure.dart';
import 'package:game_rev/src/core/usecases/success_entity.dart';
import 'package:game_rev/src/features/dashboard/domain/entity/genre.dart';
import 'package:game_rev/src/features/dashboard/domain/entity/paginated_response.dart';
import 'package:game_rev/src/features/dashboard/domain/entity/review.dart';

abstract class AdminRepository {
  Future<Either<Failure, PaginatedResponse<Genre>>> getGenres(
      {required int limit, required int offset});

  Future<Either<Failure, String>> pushImage({required File image});

  Future<Either<Failure, Success>> addGame(
      {required Map<String, String> fields, required List<Genre> genres});

  Future<Either<Failure, PaginatedResponse<Review>>> getFlaggedReviews({
    required int limit,
    required int offset,
  });

  Future<Either<Failure, Success>> deleteReview({required String reviewId});

  Future<Either<Failure, Success>> unflagReview({required String reviewId});
}
