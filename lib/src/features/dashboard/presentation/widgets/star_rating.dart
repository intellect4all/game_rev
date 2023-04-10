import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:game_rev/src/core/constants/extensions/extensions.dart';

import '../../domain/entity/game.dart';

class StarRating extends StatelessWidget {
  final Rating rating;
  final bool isGameScreen;

  const StarRating({Key? key, required this.rating, this.isGameScreen = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> stars = [];
    for (var i = 1; i < 6; i++) {
      final icon = i <= rating.average
          ? Icons.star
          : i < rating.average + 0.5
              ? Icons.star_half
              : Icons.star_border;
      stars.add(
        Icon(
          icon,
          color: Colors.yellow,
          size: isGameScreen ? 35 : 20,
        ),
      );
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...stars,
        const SizedBox(width: 10),
        if (rating.count > 0)
          Text(
            "(${rating.count})",
            style: context.textTheme.bodyLarge?.copyWith(
              fontSize: isGameScreen ? 23 : 15,
            ),
          ),
      ],
    );
  }
}
