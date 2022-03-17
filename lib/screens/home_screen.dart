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
          physics: BouncingScrollPhysics(),
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
                      Text(
                        'Recommended',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: primaryColor,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        // padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          // color: secondaryColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 120,
                              width: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/article_thumbnails/reference_guide/how_to_stop_feeling_anxious_right_now_ref_guide/1800x1200_how_to_stop_feeling_anxious_right_now_ref_guide.jpg?resize=650:*'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 120,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Expanded(
                                      child: Text(
                                        '16 Simple Ways to Relieve Stress',
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Text(
                                      'Self Improvement',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
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
        unselectedItemColor: Color.fromARGB(255, 216, 195, 255),

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
