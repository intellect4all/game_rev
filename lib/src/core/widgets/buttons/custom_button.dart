import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.child,
    required this.onPressed,
    this.backgroundColor,
    this.width,
    this.height,
    this.borderColor,
    this.isLoading,
    this.isFilled,
    super.key,
  });

  final VoidCallback onPressed;
  final Widget? child;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? borderColor;
  final bool? isLoading;
  final bool? isFilled;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading == true ? null : onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: isFilled ?? true
              ? AppColors.primary[06]
              : backgroundColor ?? AppColors.white,
          fixedSize: Size(width ?? double.maxFinite, height ?? 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          side: BorderSide(color: borderColor ?? AppColors.primary[06]!)),
      child: isLoading == true
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : child,
    );
  }
}
