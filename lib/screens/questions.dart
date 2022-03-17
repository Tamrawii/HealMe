import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:heal_me/constants/colors.dart';
import 'package:page_view_indicators/linear_progress_page_indicator.dart';

import '../widgets/widgets.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({Key? key}) : super(key: key);

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  final _pageController = PageController(
    initialPage: 0,
    keepPage: false,
  );
  final _currentPageNotifier = ValueNotifier<int>(0);
  double _value = 80;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          gradiantBg(
            PageView(
              controller: _pageController,
              onPageChanged: (int index) {
                _currentPageNotifier.value = index;
              },
              children: [
                page1(),
                page2(),
                page3(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'What is you weight?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 60,
                              width: 110,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 248, 248, 248),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Center(
                                child: Text(
                                  'Lbs',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 110,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Center(
                                child: Text(
                                  'Kg',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              _value.floor().toString(),
                              style: const TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 60,
                              ),
                            ),
                            const Text(
                              'Kg',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                                // fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 320,
                          child: Slider(
                            value: _value,
                            thumbColor: primaryColor,
                            activeColor: primaryColor,
                            inactiveColor: primaryColor.withOpacity(0.2),
                            max: 200,
                            min: 20,
                            onChanged: (val) {
                              setState(() {
                                _value = val;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      'We will reccommend for you the best\nexercises to keep your body fit',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black26,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                page5(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Lottie.asset(
                      'assets/lottie/face recog.json',
                      height: 150,
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    const Text(
                      'Enable Face Recognition',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      'The Face Recognition feature, helps you to\nsecure your account and also recognize\nyour mood automatically',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black26,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                      ),
                      child: SizedBox(
                        height: 57,
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  side: BorderSide(
                                    color: borderColor,
                                  )),
                            ),
                          ),
                          onLongPress: () {
                            Navigator.of(context).pushReplacementNamed('/h');
                          },
                          onPressed: () {
                            // Navigator.of(context).pushReplacementNamed('/h');
                            _currentPageNotifier.value > 4
                                ? Navigator.of(context)
                                    .pushReplacementNamed('/h')
                                : _pageController.nextPage(
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.easeIn,
                                  );
                          },
                          child: const Text(
                            'Skip',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new_rounded),
                  onPressed: () {
                    _pageController.previousPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOut,
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 100,
                  ),
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) =>
                            LinearProgressPageIndicator(
                      itemCount: 6,
                      currentPageNotifier: _currentPageNotifier,
                      progressColor: primaryColor,
                      width: constraints.maxWidth,
                      height: 8,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Align(
        alignment: const Alignment(0, 0.9),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: SizedBox(
            height: 57,
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all(primaryColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(
                        color: borderColor,
                      )),
                ),
              ),
              onLongPress: () {
                Navigator.of(context).pushReplacementNamed('/h');
              },
              onPressed: () {
                // Navigator.of(context).pushReplacementNamed('/h');
                _currentPageNotifier.value > 4
                    ? Navigator.of(context).pushReplacementNamed('/h')
                    : _pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      );
              },
              child: const Text(
                'Continue',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
