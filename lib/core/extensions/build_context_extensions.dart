import 'package:flutter/material.dart';

extension AppTheme on BuildContext {
  /// getter to get current themedata from buildcontext
  ThemeData get appTheme => Theme.of(this);
}

// navigation functions
extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  void pop() => Navigator.of(this).pop();

  /// This function is used to remove all routes in the stack except for the most recent one
  Future<dynamic> pushNamedAndRemoveUntil(
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.of(this).pushNamedAndRemoveUntil(
      routeName,
      (route) => false,
      arguments: arguments,
    );
  }
}
