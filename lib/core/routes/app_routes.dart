import 'package:byzaar/core/Routes/base_routes.dart';
import 'package:byzaar/core/common/screens/page_under_build.dart';
import 'package:byzaar/features/auth/presentation/views/login_view.dart';
import 'package:byzaar/features/auth/presentation/views/signup_view.dart';
import 'package:byzaar/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:byzaar/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String initial = '/';
  static const String onBoarding = 'onBoarding';
  static const String login = 'login';
  static const String signUp = 'signUp';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case initial:
        return BaseRoute(page: const SplashView());
      case onBoarding:
        return BaseRoute(page: const OnBoardingView());
      case login:
        return BaseRoute(page: const LoginView());
      case signUp:
        return BaseRoute(page: const SignupView());

      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
