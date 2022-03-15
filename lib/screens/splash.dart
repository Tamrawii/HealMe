import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:heal_me/screens/oneboarding_page.dart';

import '../constants/colors.dart';

class Splash2 extends StatelessWidget {
  const Splash2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: EasySplashScreen(
          logo: Image.asset('assets/images/healme.png'),
          backgroundColor: primaryColor,
          showLoader: false,
          navigator: const OneBoardingPage(),
          durationInSeconds: 5,
        ),
      ),
    );
  }
}
