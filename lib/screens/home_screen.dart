import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:heal_me/constants/colors.dart';
import 'package:heal_me/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedItemPosition = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: gradiantBg(
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  top(),
                  const SizedBox(
                    height: 40,
                  ),
                  moodToday(),
                  const SizedBox(
                    height: 40,
                  ),
                  discover(),
                  const SizedBox(
                    height: 40,
                  ),
                  quotes(),
                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Recommended for you',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      articles(
                        '16 Simple Ways to Relieve Stress',
                        'SELF IMPROVMENT',
                        'https://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/article_thumbnails/reference_guide/how_to_stop_feeling_anxious_right_now_ref_guide/1800x1200_how_to_stop_feeling_anxious_right_now_ref_guide.jpg?resize=650:*',
                        'https://www.healthline.com/nutrition/16-ways-relieve-stress-anxiety',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      articles(
                        '30 Moves to Make the Most of Your At-Home Workout',
                        'EXERCISING',
                        'https://www.gannett-cdn.com/presto/2018/09/05/USAT/c95a0f2e-2c7a-48ca-bd5d-6de52229674a-GettyImages-862317986.jpg',
                        'https://www.healthline.com/health/fitness-exercise/at-home-workouts',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      articles(
                        'How to sleep better: 15 science-backed tips - Headspace',
                        'EXERCISING',
                        'https://bettersleep.org/wp-content/uploads/2017/04/Top-Better-Sleep-Tips.jpg',
                        'https://www.headspace.com/sleep/how-to-sleep-better',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Align(
                        alignment: const Alignment(0, 0),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'See more',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.bold,
                              color: Colors.black26,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: SnakeNavigationBar.color(
        height: 70,
        backgroundColor: const Color.fromARGB(230, 246, 246, 246),
        behaviour: SnakeBarBehaviour.pinned,
        snakeShape: SnakeShape.indicator,

        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        )),
        // padding: padding,

        ///configuration for SnakeNavigationBar.color
        snakeViewColor: primaryColor,
        selectedItemColor: primaryColor,
        unselectedItemColor: const Color.fromARGB(255, 216, 195, 255),

        showUnselectedLabels: false,
        showSelectedLabels: true,

        currentIndex: _selectedItemPosition,
        onTap: (index) => setState(() => _selectedItemPosition = index),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_rounded), label: 'ChatBot'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_search_rounded), label: 'Doctors'),
          BottomNavigationBarItem(
              icon: Icon(Icons.flag_rounded), label: 'goals'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
