import 'package:byzaar/constants.dart';
import 'package:byzaar/core/dependancy_injection/service_locator.dart';
import 'package:byzaar/core/extensions/context_extension.dart';
import 'package:byzaar/core/routes/app_routes.dart';
import 'package:byzaar/core/services/local/local_storage.dart';
import 'package:byzaar/core/styles/images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNaviagtion();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(Assets.imagesPlant),
          ],
        ),
        SvgPicture.asset(Assets.imagesLogo),
        SvgPicture.asset(
          Assets.imagesSplashBottom,
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  void excuteNaviagtion() {
    bool isOnBoardingViewSeen =
        sl<LocalStorage>().getBool(kIsOnBoardingViewSeen);
    Future.delayed(const Duration(seconds: 3), () {
      if (isOnBoardingViewSeen) {
        // var isLoggedIn = FirebaseAuthService().isLoggedIn();

        // if (isLoggedIn) {
        //   Navigator.pushReplacementNamed(context, MainView.routeName);
        // } else {

        if (mounted) {
          context.pushReplacementNamed(AppRoutes.login);
        }
        // }
      } else {
        if (mounted) {
          context.pushReplacementNamed(AppRoutes.onBoarding);
        }
      }
    });
  }
}
