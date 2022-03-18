import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:heal_me/screens/get_started.dart';
import 'package:heal_me/screens/home_screen.dart';
import 'package:heal_me/screens/loading.dart';
import 'package:heal_me/screens/login.dart';
import 'package:heal_me/screens/oneboarding_page.dart';
import 'package:heal_me/screens/questions.dart';
import 'package:heal_me/screens/sign_up.dart';

import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
  HttpOverrides.global = MyHttpOverrides();
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          canvasColor: Colors.white,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            centerTitle: true,
            titleTextStyle: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        // home: const TestScreen(),
        routes: {
          '/': (context) => const SplashScreen(),
          '/o': (context) => const OneBoardingPage(),
          '/login': (context) => const LoginPage(),
          '/signUp': (context) => const SignUpPage(),
          '/start': (context) => const GetStarted(),
          '/q': (context) => const QuestionsPage(),
          '/h': (context) => const HomeScreen(),
          '/l': (context) => const LoadingScreen(),
        },
      ),
    );
  }
}
