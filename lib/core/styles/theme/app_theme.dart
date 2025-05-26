import 'package:byzaar/core/styles/colors/colors_dark.dart';
import 'package:byzaar/core/styles/colors/colors_light.dart';
import 'package:byzaar/core/styles/theme/assets_extension.dart';
import 'package:byzaar/core/styles/theme/color_extension.dart';
import 'package:flutter/material.dart';

ThemeData themeDark() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsDark.primaryColor,
    extensions: const <ThemeExtension<dynamic>>[AppColors.dark, AppAssets.dark],
    useMaterial3: true,
    textTheme: TextTheme(
      displaySmall: TextStyle(
        fontSize: 14,
        color: ColorsDark.white,
        // fontFamily: FontFamilyHelper.geLocalozedFontFamily(),
      ),
    ),
  );
}

ThemeData themeLight() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsLight.primaryColor,
    extensions: <ThemeExtension<dynamic>>[AppColors.light, AppAssets.light],
    useMaterial3: true,
    textTheme: TextTheme(
      displaySmall: TextStyle(
        fontSize: 14,
        color: ColorsLight.black,
      ),
    ),
  );
}
