import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game_rev/src/core/constants/extensions/extensions.dart';
import 'package:game_rev/src/core/widgets/spacing.dart';

import '../constants/app_colors.dart';
import '../constants/styles.dart';

class CustomTextInput extends StatelessWidget {
  const CustomTextInput({
    this.label,
    this.hintText,
    this.controller,
    this.keyboardType,
    this.errorText,
    this.prefixIcon,
    this.onChanged,
    this.validator,
    this.obscureText,
    super.key,
    this.inputFormatters,
    this.onTap,
  });

  final String? label;
  final String? Function(String?)? validator;
  final String? hintText;
  final String? errorText;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final bool? obscureText;
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label ?? "",
          style: context.textTheme.bodyLarge,
        ),
        Spacing.vertical(8),
        TextFormField(
          controller: controller,
          obscureText: obscureText ?? false,
          obscuringCharacter: "*",
          cursorColor: context.colorScheme.onSecondary,
          validator: validator,
          cursorHeight: 16,
          onChanged: onChanged,
          style: context.textTheme.bodyLarge,
          keyboardType: keyboardType,
          inputFormatters: inputFormatters,
          readOnly: onTap != null,
          onTap: onTap,
          decoration: InputDecoration(
            filled: true,
            fillColor: context.colorScheme.surface,
            prefixIcon: prefixIcon,
            hintText: hintText,
            hintStyle: AppStyles.body5,
            contentPadding: const EdgeInsets.all(16),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(
                color: AppColors.boxBorder,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(
                color: Colors.transparent,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(
                color: AppColors.red[05]!,
              ),
            ),
            errorText: errorText,
            errorStyle: context.textTheme.labelMedium?.copyWith(
              color: AppColors.red[05],
            ),
          ),
        ),
        Spacing.vertical(20),
      ],
    );
  }
}
