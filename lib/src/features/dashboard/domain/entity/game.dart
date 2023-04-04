class Game {
  final String developer;
  final String publisher;
  final String title;
  final String summary;
  final DateTime releaseDate;
  final String id;
  final String image;
  final Rating rating;

  const Game({
    required this.developer,
    required this.publisher,
    required this.title,
    required this.summary,
    required this.releaseDate,
    required this.id,
    required this.image,
    required this.rating,
  });
}

class Rating {
  final int total;
  final double average;

  const Rating({
    required this.total,
    required this.average,
  });
}
