import 'package:flutter/material.dart';
import 'package:game_rev/src/core/constants/extensions/extensions.dart';
import 'package:game_rev/src/features/dashboard/domain/entity/genre.dart';
import 'package:string_extensions/string_extensions.dart';

class GenreItem extends StatelessWidget {
  final Genre genre;
  final bool isSelected;
  final VoidCallback onTap;
  final bool isLast;

  const GenreItem(
      {Key? key,
      required this.genre,
      required this.isSelected,
      required this.onTap,
      this.isLast = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding:
            EdgeInsets.symmetric(horizontal: isSelected ? 20 : 3, vertical: 3),
        margin: EdgeInsets.only(left: 20, right: isLast ? 20 : 0),
        decoration: BoxDecoration(
          color: isSelected ? context.colorScheme.primary : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Text(genre.title.toTitleCase!,
            style: context.textTheme.bodyText1!.copyWith(
              color: isSelected ? Colors.white : context.colorScheme.primary,
            )),
      ),
    );
  }
}
