import 'package:game_rev/src/core/network/api_caller.dart';
import 'package:game_rev/src/core/network/endpoints.dart';
import 'package:game_rev/src/features/dashboard/data/models/paginated_response_model.dart';
import 'package:game_rev/src/features/dashboard/data/models/review_model.dart';

import '../../../../core/error/failures/exceptions.dart';
import '../models/game_model.dart';
import '../models/genre_model.dart';

class DashboardRemoteSource {
  DashboardRemoteSource(this._apiCaller);

  final ApiCaller _apiCaller;

  Future<PaginatedResponseModel<GameModel>> getGames(
      {required int limit,
      required int offset,
      required String genreId}) async {
    final query = {
      'limit': limit,
      'offset': offset,
      'genre': genreId,
    };
    final res = await _apiCaller.get(
      url: AppEndpoints.getGames,
      params: query,
    );

    if (res.isSuccessful()) {
      return PaginatedResponseModel<GameModel>.fromJson(
          res.data, _getGamesFromJson);
    }
    throw CustomException(res.message);
  }

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

  Future<PaginatedResponseModel<ReviewDataModel>> getReviewsForGame(
      {required int limit, required int offset, required String gameId}) async {
    final query = {
      'limit': limit,
      'offset': offset,
      'gameId': gameId,
    };

    final res = await _apiCaller.get(
      url: '${AppEndpoints.getReviews}/$gameId',
      params: query,
    );

    if (res.isSuccessful()) {
      return PaginatedResponseModel<ReviewDataModel>.fromJson(
          res.data, _getReviewsFromJson);
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

  List<ReviewDataModel> _getReviewsFromJson(p1) {
    final List<dynamic> data = p1 as List<dynamic>;
    return data.map((e) => ReviewDataModel.fromJson(e)).toList();
  }

  Future<String> postReview(
      {required String gameId,
      required String comment,
      required int rating}) async {
    final body = {
      'gameId': gameId,
      'comment': comment,
      'rating': rating,
    };

    final res = await _apiCaller.post(
      url: AppEndpoints.addReview,
      body: body,
    );

    if (res.isSuccessful()) {
      return res.data['reviewId'];
    }

    throw CustomException(res.message);
  }
}
