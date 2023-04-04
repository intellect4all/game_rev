import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../spacing.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    required this.child,
    required this.icon,
    required this.onPressed,
    required this.isRight,
    this.backgroundColor,
    this.isFilled,
    this.width,
    this.height,
    this.isLoading,
    this.borderColor,
    super.key,
  });

  final VoidCallback onPressed;
  final bool isRight;
  final bool? isFilled;
  final Widget child;
  final Widget icon;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? borderColor;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: isLoading == true ? null : onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          isFilled ?? true
              ? backgroundColor ?? AppColors.primary[05]
              : AppColors.white,
        ),
        fixedSize: MaterialStatePropertyAll(
          Size(width ?? double.maxFinite, height ?? 48),
        ),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        )),
        side: MaterialStatePropertyAll(
          BorderSide(color: borderColor ?? AppColors.primary[04]!),
        ),
      ),
      child: isLoading == true
          ? Center(
              child: CircularProgressIndicator(
                color: AppColors.primary[03],
              ),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Visibility(
                  visible: !isRight,
                  child: icon,
                ),
                Spacing.horizontal(12),
                child,
                Spacing.horizontal(12),
                Visibility(
                  visible: isRight,
                  child: icon,
                ),
              ],
            ),
    );
  }
}
