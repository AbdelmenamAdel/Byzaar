import 'package:byzaar/core/styles/colors/colors_dark.dart';
import 'package:byzaar/core/styles/colors/colors_light.dart';
import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.primaryColor,
    required this.textColor,
  });

  final Color? primaryColor;

  final Color? textColor;

  @override
  ThemeExtension<AppColors> copyWith({
    Color? primaryColor,
    Color? textColor,
  }) {
    return AppColors(
      primaryColor: primaryColor,
      textColor: textColor,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(
    covariant ThemeExtension<AppColors>? other,
    double t,
  ) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      primaryColor: primaryColor,
      textColor: textColor,
    );
  }

  static const AppColors dark = AppColors(
    primaryColor: ColorsDark.primaryColor,
    textColor: ColorsDark.white,
  );

  static const AppColors light = AppColors(
    primaryColor: ColorsLight.primaryColor,
    textColor: ColorsLight.black,
  );
}
