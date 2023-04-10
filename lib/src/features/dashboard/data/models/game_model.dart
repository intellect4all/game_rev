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
      releaseDate: json['releaseDate'] as int,
      id: json['id'] as String,
      image: json['image'] as String,
      rating: Rating(
        count: json['rating']['count'] ?? 0,
        sum: json['rating']['sum'] ?? 0,
      ),
    );
  }
}
