import 'package:flutter/material.dart';

import '../config/navigation/navigation.dart';
import '../constants/app_colors.dart';
import '../constants/styles.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({this.actions,this.backgroundColor, this.title, super.key});
  final String? title;
  final Color? backgroundColor;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor??AppColors.black[02],
      leadingWidth: 40,
      leading: ModalRoute.of(context)!.canPop
          ? IconButton(
              padding: const EdgeInsets.only(left: 24),
              onPressed: () => Navigation.back(context),
              icon: const Icon(Icons.arrow_back_ios),
            )
          : const SizedBox(),
      title: Text(
        title??"",
        style: AppStyles.body2,
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
