import 'package:flutter/widgets.dart';

extension ScreenSize on BuildContext {
  double screenHeight([double ratio = 1]) => ratio > 0
      ? MediaQuery.of(this).size.height * ratio
      : MediaQuery.of(this).size.height;

  double screenWidth([double ratio = 1]) => ratio > 0
      ? MediaQuery.of(this).size.width * ratio
      : MediaQuery.of(this).size.width ;

  
}
