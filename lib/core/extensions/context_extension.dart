import 'package:byzaar/core/language/app_Localizations.dart';
import 'package:byzaar/core/styles/theme/assets_extension.dart';
import 'package:byzaar/core/styles/theme/color_extension.dart';
import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  //color
  AppColors get color => Theme.of(this).extension<AppColors>()!;

  // images
  AppAssets get assets => Theme.of(this).extension<AppAssets>()!;

  // style
  TextStyle get textStyle => Theme.of(this).textTheme.displaySmall!;

//Language
  String translate(String langkey) {
    return AppLocalizations.of(this)!.translate(langkey).toString();
  }

  //Navigation

  Future<dynamic> pushName(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  void pop() => Navigator.of(this).pop();
}
