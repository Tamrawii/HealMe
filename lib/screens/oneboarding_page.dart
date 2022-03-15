import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:heal_me/constants/colors.dart';
import 'package:heal_me/widgets/widgets.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

class OneBoardingPage extends StatefulWidget {
  const OneBoardingPage({Key? key}) : super(key: key);

  @override
  State<OneBoardingPage> createState() => _OneBoardingPageState();
}

class Data {
  final String img;
  final String title;
  final String description;

  Data({
    required this.img,
    required this.title,
    required this.description,
  });
}

class _OneBoardingPageState extends State<OneBoardingPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    final _currentPageNotifier = ValueNotifier<int>(0);
    final _pageController = PageController();

    List<Data> _data = [
      Data(
        img: 'assets/images/good_health.png',
        title: 'Keep yourself\nhealthy',
        description: 'Become surrounded by a healthy\nenvironment',
      ),
      Data(
        img: 'assets/images/doctors.png',
        title: 'Meet a specialist\nanytime you want',
        description:
            'You can choose a doctor to talk with\nof course by your choice',
      ),
      Data(
        img: 'assets/images/secured2.png',
        title: 'Your data is safe\nwith us',
        description:
            'Your personal and medical data will\nnot be shared without your consent',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffEEE5FF),
              Colors.white,
              Colors.white,
              Colors.white,
            ],
          ),
        ),
        child: Stack(
          children: [
            PageView(
              onPageChanged: (index) {
                _currentPageNotifier.value = index;
              },
              controller: _pageController,
              children: _data.map((e) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 40,
                  ),
                  child: Column(
                    children: [
                      Image.asset(e.img),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        e.title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 39,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        e.description,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: 'Inter',
                          // fontSize: 19,
                          color: Color(0xff91919F),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
            Align(
              alignment: const Alignment(0, 0.55),
              child: CirclePageIndicator(
                selectedDotColor: primaryColor,
                dotColor: const Color.fromARGB(31, 197, 197, 197),
                size: 8.0,
                selectedSize: 13.0,
                itemCount: _data.length,
                currentPageNotifier: _currentPageNotifier,
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.75),
              child: btn('Sign Up', primaryColor, Colors.white),
            ),
            Align(
              alignment: const Alignment(0, 0.92),
              child: btn('Login', secondaryColor, primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
