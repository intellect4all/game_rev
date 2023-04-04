import 'dart:developer';
import 'dart:io';

import 'package:fluttertoast/fluttertoast.dart';

import '../constants/app_colors.dart';

class Utils {
  static showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: AppColors.red,
      textColor: AppColors.white,
      fontSize: 16.0,
    );
  }

  getTimeAgo(DateTime date) {
    final difference = DateTime.now().difference(date);
    if (difference.inDays > 0) {
      return '${difference.inDays} days ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} hours ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} minutes ago';
    } else {
      return 'Just now';
    }
  }

  static DateTime parseDate(String date) {
    return DateTime.parse(date);
  }
}
