import 'package:flutter/material.dart';
import '/core/localization/app_localizations.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) async {
    Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(
    String routeName, {
    Object? arguments,
  }) async {
    Navigator.of(this).pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(
    String routeName, {
    Object? arguments,
  }) async {
    Navigator.of(this).pushNamedAndRemoveUntil(
      routeName,
      (route) => false,
      arguments: arguments,
    );
  }

  void pop() {
    Navigator.of(this).pop();
  }
}

// This extension is used to get the localized strings from the AppLocalizations class.
extension Localization on BuildContext {
  AppLocalizations get localize => AppLocalizations.of(this);
}

// This extension is used to get the ThemeData from the Theme class.
extension ThemeContext on BuildContext {
  ThemeData get theme => Theme.of(this);
}

extension UnFocus on BuildContext {
  void unfocus() {
    FocusScope.of(this).unfocus();
  }
}
