import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:game_rev/src/core/error/failures/failure.dart';
import 'package:game_rev/src/core/usecases/success_entity.dart';
import 'package:game_rev/src/features/dashboard/domain/entity/genre.dart';
import 'package:game_rev/src/features/dashboard/domain/entity/paginated_response.dart';
import 'package:game_rev/src/features/dashboard/domain/entity/review.dart';

import '../repository/repository.dart';

class AdminServiceFacade {
  final AdminRepository _adminRepository;

  AdminServiceFacade(this._adminRepository);

  Future<Either<Failure, PaginatedResponse<Genre>>> getGenres({
    required int limit,
    required int offset,
  }) async {
    return _adminRepository.getGenres(limit: limit, offset: offset);
  }

  Future<Either<Failure, Success>> addGame(AddGameParams params) async {
    // push image
    final Either<Failure, String> imageResult =
    await _adminRepository.pushImage(
      image: params.image,
    );

    return imageResult.fold(
          (failure) => Left(failure),
          (imageUrl) async {
        final fields = <String, String>{
          ...params.fields,
          'image': imageUrl,
        };

        return await _adminRepository.addGame(
          fields: fields,
          genres: params.genres,
        );
      },
    );
  }

  Future<Either<Failure, PaginatedResponse<Review>>> getFlaggedReviews(
      {required int limit, required int offset}) async {
    return _adminRepository.getFlaggedReviews(limit: limit, offset: offset);
  }

  Future<Either<Failure, Success>> deleteReview(String reviewId) async {
    return _adminRepository.deleteReview(reviewId: reviewId);
  }

  Future<Either<Failure, Success>> unflagReview(String reviewId) async {
    return _adminRepository.unflagReview(reviewId: reviewId);
  }
}

class AddGameParams {
  final Map<String, String> fields;
  final File image;
  final List<Genre> genres;

  const AddGameParams({
    required this.fields,
    required this.image,
    required this.genres,
  });
}
