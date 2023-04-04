import 'package:game_rev/src/core/utils/utils.dart';

import '../../domain/entity/game.dart';

class GameModel extends Game {
  const GameModel({
    required super.developer,
    required super.publisher,
    required super.title,
    required super.summary,
    required super.releaseDate,
    required super.id,
    required super.image,
    required super.rating,
  });

  factory GameModel.fromJson(Map<String, dynamic> json) {
    return GameModel(
      developer: json['developer'] as String,
      publisher: json['publisher'] as String,
      title: json['title'] as String,
      summary: json['summary'] as String,
      releaseDate: Utils.parseDate(json['releaseDate'] as String),
      id: json['id'] as String,
      image: json['image'] as String,
      rating: Rating(
        total: json['rating']['totalRatings'] ?? 0.0,
        average: ((json['rating']['average'] ?? 0) as num).toDouble(),
      ),
    );
  }
}
