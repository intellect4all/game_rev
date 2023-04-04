import 'dart:developer';

import 'package:dartz/dartz.dart';

import 'package:game_rev/src/core/error/failures/failure.dart';
import 'package:game_rev/src/core/network/network.dart';
import 'package:game_rev/src/core/utils/handle_failure_check.dart';

import 'package:game_rev/src/features/dashboard/domain/entity/game.dart';

import 'package:game_rev/src/features/dashboard/domain/entity/genre.dart';

import 'package:game_rev/src/features/dashboard/domain/entity/paginated_response.dart';

import '../../../../core/error/failures/exceptions.dart';
import '../../domain/entity/review.dart';
import '../../domain/repository/dashboard_repo.dart';
import '../datasource/dashboard_remote_source.dart';

class DashboardRepoImpl implements DashboardRepository, HandleFailureCheck {
  final NetworkInfo networkInfo;
  final DashboardRemoteSource remoteSource;

  const DashboardRepoImpl({
    required this.networkInfo,
    required this.remoteSource,
  });

  @override
  Future<Either<Failure, PaginatedResponse<Game>>> getGames(
      {required int limit, required int offset, String genreId = ''}) async {
    return handleFailureCheck(() async {
      // consider catchng the data
      return await remoteSource.getGames(
          limit: limit, offset: offset, genreId: genreId);
    });
  }

  @override
  Future<Either<Failure, PaginatedResponse<Genre>>> getGenres(
      {required int limit, required int offset}) {
    return handleFailureCheck(() async {
      return await remoteSource.getGenres(limit: limit, offset: offset);
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
  Future<Either<Failure, PaginatedResponse<ReviewData>>> getReviewsForGame(
      {required int limit, required int offset, required String gameId}) async {
    return handleFailureCheck(() async {
      return await remoteSource.getReviewsForGame(
          limit: limit, offset: offset, gameId: gameId);
    });
  }

  @override
  Future<Either<Failure, String>> postReview(
      {required String gameId,
      required String comment,
      required int rating}) async {
    return handleFailureCheck(() async {
      return await remoteSource.postReview(
          gameId: gameId, comment: comment, rating: rating);
    });
  }
}
