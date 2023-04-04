import 'package:flutter/material.dart';
class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    required this.child,
    required this.onPressed,
    this.backgroundColor,
    this.width,
    this.height,
    this.isLoading,
    super.key,
  });

  final VoidCallback onPressed;

  final Widget child;

  final double? width;
  final double? height;
  final Color? backgroundColor;
  final bool? isLoading;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: isLoading == true ? null : onPressed,
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.transparent),
      ),
      child: child,
    );
  }
}
