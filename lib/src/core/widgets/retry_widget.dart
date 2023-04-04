import 'package:flutter/material.dart';
import 'package:game_rev/src/core/widgets/spacing.dart';

import '../constants/app_colors.dart';
import '../constants/styles.dart';
import 'buttons/custom_button.dart';

class RetryWidget extends StatelessWidget {
  final VoidCallback onRetry;
  const RetryWidget({Key? key, required this.onRetry}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Ooops!",
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          Spacing.vertical(32),
          const Text(
            "We are unable to reach our servers.\nPlease try to reconnect again.",
            textAlign: TextAlign.center,
            style: AppStyles.body5,
          ),
          Spacing.vertical(32),
          CustomButton(
            width: MediaQuery.of(context).size.width * 0.4,
            onPressed: onRetry,
            child: const Text(
              "Retry",
              style: AppStyles.body1,
            ),
          ),
        ],
      ),
    );
  }
}
