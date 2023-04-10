import 'package:equatable/equatable.dart';

class Genre extends Equatable {
  final String slug;
  final String title;
  final String description;

  const Genre({
    required this.slug,
    required this.title,
    required this.description,
  });

  @override
  List<Object?> get props => [slug, title, description];
}