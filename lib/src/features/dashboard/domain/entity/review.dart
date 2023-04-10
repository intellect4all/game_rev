import 'package:equatable/equatable.dart';

class Review extends Equatable {
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

  @override
  List<Object?> get props =>
      [
        id,
        userId,
        gameId,
        comment,
        rating,
        createdAt,
        votes,
      ];
}

class Location extends Equatable {
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

  @override
  List<Object?> get props =>
      [
        city,
        country,
        latitude,
        longitude,
        countryCode,
      ];
}

class BasicUser extends Equatable {
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

  @override
  List<Object?> get props =>
      [
        avatar,
        fullName,
        id,
        username,
        location,
      ];
}

class Vote extends Equatable {
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

  @override
  List<Object?> get props =>
      [
        userId,
        reviewId,
        isUpvote,
        isDownvote,
      ];
}

class ReviewData extends Equatable {
  final Review review;
  final BasicUser user;
  final Vote? vote;

  const ReviewData({
    required this.review,
    required this.user,
    required this.vote,
  });

  @override
  List<Object?> get props =>
      [
        review,
        user,
        vote,
      ];
}
