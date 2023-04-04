import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/styles.dart';

class LoadingWidget extends StatelessWidget {
  final String text;

  const LoadingWidget({Key? key, this.text = "Loading"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 55,
            width: 55,
            child: CircularProgressIndicator(
              color: AppColors.primary[05]!.withOpacity(0.2),
              valueColor: AlwaysStoppedAnimation(AppColors.primary[05]),
              strokeWidth: 8,
            ),
          ),
          const SizedBox(height: 20),
          Visibility(
            visible: text.isNotEmpty,
            child: Text(
              text,
              style: AppStyles.body5,
            ),
          )
        ],
      ),
    );
  }
}
