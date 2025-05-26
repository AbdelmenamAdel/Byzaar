import 'package:byzaar/features/onboarding/presentation/onboarding_view.dart';
import 'package:flutter/material.dart';

class Byzaar extends StatelessWidget {
  const Byzaar({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent,
          onPrimary: Colors.black,
        ),
      ),
      home: OnBoardingView(),
    );
  }
}
