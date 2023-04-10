class Game {
  final String developer;
  final String publisher;
  final String title;
  final String summary;
  final int releaseDate;
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

  Game updateRating(int rating) {
    return Game(
      developer: developer,
      publisher: publisher,
      title: title,
      summary: summary,
      releaseDate: releaseDate,
      id: id,
      image: image,
      rating: Rating(
        count: this.rating.count + 1,
        sum: this.rating.sum + rating,
      ),
    );
  }
}

class Rating {
  final int count;
  final int sum;

  const Rating({
    required this.count,
    required this.sum,
  });

  double get average => sum / count;
}
