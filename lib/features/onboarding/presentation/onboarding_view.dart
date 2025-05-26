import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text('Byzaar'),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}
