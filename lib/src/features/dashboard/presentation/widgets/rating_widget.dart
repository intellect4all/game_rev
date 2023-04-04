import 'package:flutter/material.dart';
import 'package:game_rev/src/core/constants/extensions/extensions.dart';

class RatingWidget extends StatelessWidget {
  final int currentRating;
  final ValueSetter<int>? onRating;

  const RatingWidget({
    Key? key,
    this.onRating,
    required this.currentRating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: List.generate(5, (index) => index + 1)
            .map(
              (e) => GestureDetector(
                onTap: () {
                  onRating?.call(e);
                },
                child: Padding(
                  padding: const EdgeInsets.all(3),
                  child: Icon(
                    e <= currentRating ? Icons.star : Icons.star_border,
                    color: context.colorScheme.primary,
                    size: 30,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
