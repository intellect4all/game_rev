import '../../domain/entities/review_location.dart';

class ReviewLocationModel extends ReviewLocation {
  const ReviewLocationModel({
    required super.latitude,
    required super.longitude,
    required super.count,
  });

  factory ReviewLocationModel.fromJson(Map<String, dynamic> json) {
    final location = json['location'] as Map<String, dynamic>;
    return ReviewLocationModel(
      latitude: (location['lat'] as num).toDouble(),
      longitude: (location['lng'] as num).toDouble(),
      count: json['count'] as int,
    );
  }
}
