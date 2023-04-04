import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/styles.dart';
import '../../../../../core/widgets/buttons/custom_button.dart';
import '../../../../../core/widgets/spacing.dart';

class PasswordResetSuccessScreen extends StatelessWidget {
  static const routeName = "/password-reset-success";
  const PasswordResetSuccessScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SvgPicture.asset(AppIcons.successmark),
            Spacing.vertical(32),
            const Text(
              'Password Changed!',
              style: AppStyles.title3,
              textAlign: TextAlign.center,
            ),
            Spacing.vertical(12),
            const Text(
              'Your new password has been successfully\nreset.',
              style: AppStyles.body3,
              textAlign: TextAlign.center,
            ),
            Spacing.vertical(40),
            CustomButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Back to Login'),
            )
          ],
        ),
      ),
    );
  }
}
