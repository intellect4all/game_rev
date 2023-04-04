import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

extension TimeAgo on DateTime {
  String get timeAgo {
    final difference = DateTime.now().difference(this);
    return timeago.format(DateTime.now().subtract(difference));
  }
}

extension IntExtension on int {
  String get toCurrency {
    // return a string in format "₦ 1,000"
    return '₦ ${toString().replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match m) => '${m[1]},',
    )}';
  }
}

extension BuildContextX on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  ColorScheme get colorScheme => theme.colorScheme;
}
