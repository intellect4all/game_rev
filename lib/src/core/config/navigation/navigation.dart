import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Classed used for navigation in the app
class Navigation {
  /// Function to go to previous screen
  static back(BuildContext context) {
    if (Navigator.of(context).canPop()) {
      Navigator.of(context).pop();
    } else {
      SystemNavigator.pop();
    }
  }

  // Function to navigate using the Widget
  static intentUsingWidget(
      BuildContext context, Widget child, String routeName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return child;
        },
        settings: RouteSettings(name: routeName),
      ),
    );
  }

  static Future<dynamic> intentUsingWidgetAndBack(
      BuildContext context, Widget child, String routeName) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        //MaterialPageRoute(
        builder: (BuildContext context) {
          return child;
        },
        settings: RouteSettings(name: routeName),
      ),
    );
  }

  /// Function to go to previous screen
  static backWithData<Type>(BuildContext context, Type argumentClass) {
    Navigator.pop<Type>(context, argumentClass);
  }

  /// Function to navigate to new screen without data passing
  static intent(BuildContext context, String nameRouted) {
    Navigator.pushNamed(context, nameRouted);
  }

  // A future to intent
  /// Function to navigate to new screen without data passing
  static Future<dynamic> intentAndBack(
      BuildContext context, String nameRouted) {
    return Navigator.pushNamed(context, nameRouted);
  }

  /// Function to navigate to new screen by replacing it with new screen
  static intentWithoutBack(BuildContext context, String nameRouted,
      {Object? argumentClass}) {
    Navigator.pushReplacementNamed(context, nameRouted,
        arguments: argumentClass);
  }

  /// Function to navigation to new screen and remove all other screens in backstack
  static intentWithClearAllRoutes(BuildContext context, String nameRouted,
      {String? predicateRouteName}) {
    Navigator.of(context).pushNamedAndRemoveUntil(
      nameRouted,
      (Route<dynamic> route) => predicateRouteName == null
          ? false
          : (route.settings.name == predicateRouteName),
    );
  }

  /// Function to navigation to new screen with data and remove all other screens in backstack
  static intentWithDataAndClearAllRoutes<T>(
      BuildContext context, String nameRouted, T argumentClass) {
    Navigator.of(context).pushNamedAndRemoveUntil(
      nameRouted,
      (Route<dynamic> route) => false,
      arguments: argumentClass,
    );
  }

  /// Function to push named replacement
  static intentAndReplace(BuildContext context, String nameRouted) {
    Navigator.of(context).pushReplacementNamed(nameRouted);
  }

  /// Function to navigate to new screen and passing some data
  static intentWithData<T>(
      BuildContext context, String nameRouted, T argumentClass) {
    Navigator.pushNamed(context, nameRouted, arguments: argumentClass);
  }

  /// Function to navigate to new screen and passing some data
  static Future<dynamic> intentWithDataAndResult<T>(
      BuildContext context, String nameRouted, T argumentClass) {
    return Navigator.pushNamed(context, nameRouted, arguments: argumentClass);
  }
}
