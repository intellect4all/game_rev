import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:game_rev/src/core/constants/extensions/extensions.dart';
import 'package:game_rev/src/core/widgets/app_image_widget.dart';
import 'package:string_extensions/string_extensions.dart';

class UserAvatar extends StatelessWidget {
  final String? photoUrl;
  final String username;

  const UserAvatar({
    Key? key,
    this.photoUrl = "",
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: context.colorScheme.primary,
      child: photoUrl!.isNotEmpty
          ? ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: AppImageWidget(
                imageUrl: photoUrl!,
                height: 50,
                width: 50,
              ),
            )
          : Text(
              username.first(n: 1)?.toUpperCase() ?? "A",
              style: context.textTheme.bodyLarge?.copyWith(
                fontSize: 20,
                color: context.colorScheme.onPrimary,
                fontWeight: FontWeight.w600,
              ),
            ),
    );
  }
}
