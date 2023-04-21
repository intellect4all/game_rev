import 'package:equatable/equatable.dart';

class ReviewLocation extends Equatable {
  final double latitude;
  final double longitude;
  final int count;

  const ReviewLocation({
    required this.latitude,
    required this.longitude,
    required this.count,
  });

  String get id => '$latitude-$longitude';

  @override
  List<Object?> get props => [latitude, longitude, count];
}