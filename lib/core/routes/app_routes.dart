import 'package:byzaar/core/Routes/base_routes.dart';
import 'package:byzaar/core/common/screens/page_under_build.dart';
import 'package:byzaar/features/onboarding/presentation/onboarding_view.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String onBoarding = 'onBoarding';
  static const String login = 'login';
  static const String signUp = 'signUp';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case onBoarding:
        return BaseRoute(page: const OnBoardingView());

      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
