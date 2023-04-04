import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:game_rev/src/core/constants/extensions/extensions.dart';

import '../../domain/entity/game.dart';
import 'star_rating.dart';

class GameCard extends StatelessWidget {
  final Game game;

  const GameCard({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/game', arguments: game);
      },
      child: Container(
        height: 200,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 180,
              width: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  color: context.colorScheme.inverseSurface.withOpacity(0.3),
                  child: Hero(
                    tag: game.id,
                    child: CachedNetworkImage(
                      imageUrl: game.image,
                      placeholder: (context, url) => const SizedBox(
                        height: 70,
                        width: 70,
                        child: CircularProgressIndicator(),
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    game.title,
                    style: context.textTheme.titleLarge,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    game.summary,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  const SizedBox(height: 20),
                  StarRating(rating: game.rating)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
