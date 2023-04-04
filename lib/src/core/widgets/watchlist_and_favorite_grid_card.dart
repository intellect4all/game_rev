import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class WatchListAndFavoriteGridCard<T> extends StatelessWidget {
  const WatchListAndFavoriteGridCard({
    super.key,
    required this.onTap,
    required this.posterUrl,
  });

  final VoidCallback onTap;
  final String posterUrl;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: CachedNetworkImage(
          imageUrl: posterUrl,
          height: 171,
          width: 103,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
