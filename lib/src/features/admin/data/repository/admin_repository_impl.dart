import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:game_rev/src/core/error/failures/failure.dart';
import 'package:game_rev/src/core/network/network.dart';
import 'package:game_rev/src/core/usecases/success_entity.dart';
import 'package:game_rev/src/core/utils/handle_failure_check.dart';
import 'package:game_rev/src/features/admin/domain/repository/repository.dart';
import 'package:game_rev/src/features/dashboard/domain/entity/genre.dart';
import 'package:game_rev/src/features/dashboard/domain/entity/paginated_response.dart';
import 'package:game_rev/src/features/dashboard/domain/entity/review.dart';

import '../../../../core/error/failures/exceptions.dart';
import '../datasource/admin_data_source.dart';

class AdminRepositoryImpl implements AdminRepository, HandleFailureCheck {
  final AdminRemoteDataSource _remoteDataSource;
  final NetworkInfo networkInfo;

  AdminRepositoryImpl({
    required AdminRemoteDataSource remoteDataSource,
    required this.networkInfo,
  }) : _remoteDataSource = remoteDataSource;

  @override
  Future<Either<Failure, PaginatedResponse<Genre>>> getGenres(
      {required int limit, required int offset}) async {
    return handleFailureCheck(() async {
      return await _remoteDataSource.getGenres(limit: limit, offset: offset);
    });
  }

  @override
  Future<Either<Failure, T>> handleFailureCheck<T>(
      Future<T> Function() request) async {
    try {
      if (await networkInfo.isConnected) {
        return await request().then((value) => Right(value));
      } else {
        // consider fetching from local storage
        return Future.value(
            const Left(NoInternetFailure("No internet connection")));
      }
    } on CustomException catch (e, s) {
      log(s.toString());
      return Future.value(Left(UnableToFetchDataFailure(e.message)));
    } catch (e, s) {
      log(s.toString());
      return Future.value(Left(UnableToFetchDataFailure(e.toString())));
    }
  }

  @override
  Future<Either<Failure, Success>> addGame(
      {required Map<String, String> fields,
      required List<Genre> genres}) async {
    return handleFailureCheck(() async {
      return await _remoteDataSource.addGame(
        fields: fields,
        genres: genres
            .map(
              (e) => {"slug": e.slug, "title": e.title},
            )
            .toList(),
      );
    });
  }

  @override
  Future<Either<Failure, String>> pushImage({required File image}) async {
    // push image via firebase storage
    final storageRef = FirebaseStorage.instance.ref();

    final filename = image.path.split('/').last;

    final mountainImagesRef = storageRef.child("game_cover/$filename");

    final uploadTask = mountainImagesRef.putFile(image);

    final snapshot = await uploadTask.whenComplete(() => null);

    final url = await snapshot.ref.getDownloadURL();

    log(url);

    return Future.value(Right(url));
  }

  @override
  Future<Either<Failure, PaginatedResponse<Review>>> getFlaggedReviews(
      {required int limit, required int offset}) async {
    return handleFailureCheck(() async {
      return await _remoteDataSource.getFlaggedReviews(
          limit: limit, offset: offset);
    });
  }

  @override
  Future<Either<Failure, Success>> deleteReview(
      {required String reviewId}) async {
    return handleFailureCheck(() async {
      return await _remoteDataSource.deleteReview(reviewId: reviewId);
    });
  }

  @override
  Future<Either<Failure, Success>> unflagReview(
      {required String reviewId}) async {
    return handleFailureCheck(() async {
      return await _remoteDataSource.unflagReview(reviewId: reviewId);
    });
  }
}
