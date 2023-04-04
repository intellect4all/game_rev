class Review {
  final String id;
  final String userId;
  final String gameId;
  final String comment;
  final int rating;
  final DateTime createdAt;
  final int votes;

  const Review({
    required this.id,
    required this.userId,
    required this.gameId,
    required this.comment,
    required this.rating,
    required this.createdAt,
    required this.votes,
  });
}

class Location {
  final String city;
  final String country;
  final double latitude;
  final double longitude;
  final String countryCode;

  const Location({
    required this.city,
    required this.country,
    required this.latitude,
    required this.longitude,
    required this.countryCode,
  });
}

class BasicUser {
  final String avatar;
  final String fullName;
  final String id;
  final String username;
  final Location location;

  const BasicUser({
    required this.avatar,
    required this.fullName,
    required this.id,
    required this.username,
    required this.location,
  });

  String get address {
    return '${location.city}, ${location.country}';
  }
}

class Vote {
  final String userId;
  final String reviewId;
  final bool isUpvote;
  final bool isDownvote;

  const Vote({
    required this.userId,
    required this.reviewId,
    required this.isUpvote,
    required this.isDownvote,
  });
}

class ReviewData {
  final Review review;
  final BasicUser user;
  final Vote? vote;

  const ReviewData({
    required this.review,
    required this.user,
    required this.vote,
  });
}
