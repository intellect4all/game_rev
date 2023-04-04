import '../../domain/entity/review.dart';

class ReviewModel extends Review {
  ReviewModel({
    required super.id,
    required super.userId,
    required super.gameId,
    required super.comment,
    required super.rating,
    required super.createdAt,
    required super.votes,
  });

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      id: json['id'] as String,
      userId: json['userId'] as String,
      gameId: json['gameId'] as String,
      comment: json['comment'] as String,
      rating: json['rating'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      votes: json['votes'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'gameId': gameId,
      'comment': comment,
      'rating': rating,
      'createdAt': createdAt.toIso8601String(),
      'votes': votes,
    };
  }
}

class LocationModel extends Location {
  LocationModel({
    required super.city,
    required super.country,
    required super.latitude,
    required super.longitude,
    required super.countryCode,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(
      city: json['city'] as String,
      country: json['country'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      countryCode: json['countryCode'] as String,
    );
  }
}

class BasicUserModel extends BasicUser {
  const BasicUserModel({
    required super.avatar,
    required super.fullName,
    required super.id,
    required super.username,
    required super.location,
  });

  factory BasicUserModel.fromJson(Map<String, dynamic> json) {
    return BasicUserModel(
      avatar: json['avatar'] as String,
      fullName: json['fullName'] as String,
      id: json['id'] as String,
      username: json['username'] as String,
      location:
          LocationModel.fromJson(json['location'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'avatar': avatar,
      'fullName': fullName,
      'id': id,
      'username': username,
    };
  }
}

class VoteModel extends Vote {
  const VoteModel({
    required super.userId,
    required super.reviewId,
    required super.isUpvote,
    required super.isDownvote,
  });

  factory VoteModel.fromJson(Map<String, dynamic> json) {
    return VoteModel(
      userId: json['userId'] as String,
      reviewId: json['reviewId'] as String,
      isUpvote: json['isUpVote'] ?? false,
      isDownvote: json['isDownvote'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'reviewId': reviewId,
      'isUpvote': isUpvote,
      'isDownvote': isDownvote,
    };
  }
}

class ReviewDataModel extends ReviewData {
  ReviewDataModel(
      {required super.review, required super.user, required super.vote});

  factory ReviewDataModel.fromJson(Map<String, dynamic> json) {
    return ReviewDataModel(
      review: ReviewModel.fromJson(json['review'] as Map<String, dynamic>),
      user: BasicUserModel.fromJson(json['user'] as Map<String, dynamic>),
      vote: json['vote'] != null
          ? VoteModel.fromJson(json['vote'] as Map<String, dynamic>)
          : null,
    );
  }
}
