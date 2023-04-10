import 'package:flutter/material.dart';
import 'package:game_rev/src/core/constants/extensions/extensions.dart';

import '../../domain/entity/game.dart';
import '../../domain/entity/review.dart';
import 'star_rating.dart';
import 'user_avatar.dart';

class ReviewCard extends StatelessWidget {
  final ReviewData reviewData;

  const ReviewCard({Key? key, required this.reviewData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              UserAvatar(
                username: reviewData.user.username,
                photoUrl: reviewData.user.avatar,
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    reviewData.user.username,
                    style: context.textTheme.bodyLarge?.copyWith(
                      fontSize: 15,
                      color: context.colorScheme.onSurface,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    reviewData.user.address,
                    style: context.textTheme.bodyLarge?.copyWith(
                      fontSize: 15,
                      color: context.colorScheme.onSurface.withOpacity(0.6),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(height: 10),
          StarRating(
            rating: Rating(
              count: 1,
              sum: reviewData.review.rating,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Text(
                  reviewData.review.comment,
                  style: context.textTheme.bodyLarge?.copyWith(
                    fontSize: 15,
                    color: context.colorScheme.onSurface.withOpacity(0.6),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
