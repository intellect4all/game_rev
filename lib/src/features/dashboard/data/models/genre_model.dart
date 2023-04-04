import '../../domain/entity/genre.dart';

class GenreModel extends Genre {
  GenreModel({required super.slug, required super.title, required super.description,});

  factory GenreModel.fromJson(Map<String, dynamic> json) {
    return GenreModel(
      slug: json['slug'] as String,
      title: json['title'] as String,
      description: json['desc'] as String,
    );
  }
}