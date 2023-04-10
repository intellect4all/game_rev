import 'dart:developer';

import 'package:game_rev/src/core/error/failures/exceptions.dart';
import 'package:game_rev/src/core/usecases/success_entity.dart';
import 'package:game_rev/src/features/dashboard/data/models/game_model.dart';
import 'package:game_rev/src/features/dashboard/data/models/review_model.dart';

import '../../../../core/network/api_caller.dart';
import '../../../../core/network/endpoints.dart';
import '../../../dashboard/data/models/genre_model.dart';
import '../../../dashboard/data/models/paginated_response_model.dart';

class AdminRemoteDataSource {
  final ApiCaller _apiCaller;

  AdminRemoteDataSource(this._apiCaller);

  Future<PaginatedResponseModel<GenreModel>> getGenres(
      {required int limit, required int offset}) async {
    final query = {
      'limit': limit,
      'offset': offset,
    };
    final res = await _apiCaller.get(
      url: AppEndpoints.getGenres,
      params: query,
    );
    if (res.isSuccessful()) {
      return PaginatedResponseModel<GenreModel>.fromJson(
          res.data, _getGenresFromJson);
    }
    throw CustomException(res.message);
  }

  List<GameModel> _getGamesFromJson(p1) {
    final List<dynamic> data = p1 as List<dynamic>;
    return data.map((e) => GameModel.fromJson(e)).toList();
  }

  List<GenreModel> _getGenresFromJson(p1) {
    final List<dynamic> data = p1 as List<dynamic>;
    return data.map((e) => GenreModel.fromJson(e)).toList();
  }

  List<ReviewModel> _getReviewsFromJson(p1) {
    final List<dynamic> data = p1 as List<dynamic>;
    return data.map((e) => ReviewModel.fromJson(e)).toList();
  }

  Future<SuccessModel> addGame(
      {required Map<String, String> fields,
      required List<Map<String, String>> genres}) async {
    final body = <String, dynamic>{
      ...fields,
      'genres': genres,
    };

    // convert releaseDate to int
    if (body['releaseDate'] != null) {
      body['releaseDate'] = int.parse(body['releaseDate'] as String);
    }

    final res = await _apiCaller.post(
      url: AppEndpoints.addGame,
      body: body,
    );
    if (res.isSuccessful()) {
      log(res.data.toString());
      return SuccessModel(message: res.message);
    }
    throw CustomException(res.message);
  }

  Future<PaginatedResponseModel<ReviewModel>> getFlaggedReviews(
      {required int limit, required int offset}) async {
    final query = {
      'limit': limit,
      'offset': offset,
      'gameId': '',
    };
    final res = await _apiCaller.get(
      url: AppEndpoints.getFlaggedReviews,
      params: query,
    );
    if (res.isSuccessful()) {
      return PaginatedResponseModel<ReviewModel>.fromJson(
          res.data, _getReviewsFromJson);
    }
    log(res.message);
    throw CustomException(res.message);
  }

  Future<SuccessModel> unflagReview({required String reviewId}) async {
    final res = await _apiCaller.post(
      url: AppEndpoints.unflagReview(reviewId),
      body: {},
    );
    if (res.isSuccessful()) {
      return SuccessModel(message: res.message);
    }
    log(res.message);
    throw CustomException(res.message);
  }

  Future<SuccessModel> deleteReview({required String reviewId}) async {
    final res = await _apiCaller.delete(
      url: AppEndpoints.deleteReview(reviewId),
    );
    if (res.isSuccessful()) {
      return SuccessModel(message: res.message);
    }
    log(res.message);
    throw CustomException(res.message);
  }
}
