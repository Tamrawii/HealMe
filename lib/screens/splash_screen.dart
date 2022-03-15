import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:heal_me/constants/colors.dart';
import 'package:heal_me/screens/splash.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    return Scaffold(
      body: SafeArea(
        child: EasySplashScreen(
          logo: Image.asset('assets/images/logo.png'),
          backgroundColor: primaryColor,
          showLoader: false,
          navigator: const Splash2(),
          durationInSeconds: 5,
        ),
      ),
    );
  }
}
