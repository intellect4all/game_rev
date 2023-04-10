import 'package:flutter/material.dart';
import 'package:game_rev/src/core/constants/extensions/context/context.dart';

class ScreenAdjuster extends StatelessWidget {
  final Widget child;

  const ScreenAdjuster({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = 700;
    if (context.isMobile) return child;

    if (context.isTablet) {
      width = 500;
    } else {
      width = 800;
    }

    return Row(
      children: [
        const Spacer(),
        SizedBox(
          width: width,
          child: child,
        ),
        const Spacer(),
      ],
    );
  }
}
