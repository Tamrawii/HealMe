import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/colors.dart';

Widget btn({
  required String text,
  required Color bg,
  required Color color,
  required String routeName,
  double size = 15,
  context,
}) =>
    SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(bg),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(
                  color: borderColor,
                )),
          ),
        ),
        onPressed: () => Navigator.of(context).pushNamed(routeName),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: size,
            fontWeight: FontWeight.w600,
            color: color,
          ),
        ),
      ),
    );

Widget gradiantBg(Widget _child) => Container(
      height: double.infinity,
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
      child: _child,
    );

Widget textfield({
  required String hint,
  required TextInputType inputType,
}) =>
    TextFormField(
      keyboardType: inputType,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: hint,
        hintStyle: const TextStyle(
          fontFamily: 'Inter',
          color: Colors.black26,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: borderColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: secondaryColor,
          ),
        ),
      ),
    );

Widget page1() => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Which one are you?',
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
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 220,
                  width: 180,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.male_rounded,
                        size: 100,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Male',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  height: 220,
                  width: 180,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 246, 246, 246),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.female_rounded,
                        size: 100,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Female',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'It gives you a customize experience\nwe need to know your gender',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black26,
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );

Widget page2() => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Profile Picture',
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
        GestureDetector(
          onTap: () {},
          child: const CircleAvatar(
            backgroundColor: Color.fromARGB(255, 248, 248, 248),
            radius: 80,
            child: Icon(
              Icons.add_a_photo,
              size: 50,
              color: Colors.grey,
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'Select a photo from your gallery or\ntake a one',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black26,
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );

Widget page3() => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Time to customize your interests',
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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset(
                        'assets/images/coding.png',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 248, 248, 248),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset(
                        'assets/images/painting.png',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 248, 248, 248),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset(
                        'assets/images/exercising.png',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 248, 248, 248),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Center(
                        child: Text(
                          'Others...',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'Let us know more about you :)',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black26,
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );

List<String> dummyTasks = [
  'Weight loss',
  'Beter sleep',
  'Reduce anxiety',
  'Increase Happiness',
  'Personal growth',
];

List<bool> dummyBools = [
  true,
  false,
  true,
  false,
  false,
];

Widget page5() => Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 160,
        ),
        const Text(
          'What brings you?',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        const Text(
          'to HealMe?',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w200,
            fontSize: 25,
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: dummyTasks.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 10,
              ),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(162, 238, 229, 255),
                      offset: Offset(0, 5),
                      blurRadius: 10.0,
                      // spreadRadius: 1.0,
                    ),
                  ],
                ),
                child: ListTile(
                  leading: RoundCheckBox(
                    // uncheckedColor: primaryColor,
                    checkedColor: primaryColor,
                    borderColor: primaryColor,
                    size: 25,
                    checkedWidget: const Icon(
                      Icons.check,
                      size: 20,
                      color: Colors.white,
                    ),
                    isChecked: dummyBools[index],
                    onTap: (newVal) {},
                    animationDuration: const Duration(
                      milliseconds: 250,
                    ),
                  ),
                  title: Text(
                    dummyTasks[index],
                    style: const TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );

Widget page6(context) => Column(
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
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(
                        color: borderColor,
                      )),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/l');
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
    );

String get dayPart {
  DateTime now = DateTime.now();
  String formattedDate = DateFormat('kk').format(now);
  if (int.parse(formattedDate) >= 5 && int.parse(formattedDate) <= 11) {
    return 'Morning';
  } else if (int.parse(formattedDate) >= 12 && int.parse(formattedDate) <= 17) {
    return "Afternoon";
  } else if (int.parse(formattedDate) >= 18 && int.parse(formattedDate) <= 21) {
    return "Evening";
  } else {
    return 'night';
  }
}

Widget top() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Align(
          alignment: Alignment(1, 1),
          child: Icon(
            Icons.notifications_rounded,
            size: 25,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Good $dayPart, Zaid',
          style: const TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          'We wish you have a good day',
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w300,
            fontSize: 20,
            color: Colors.grey,
          ),
        )
      ],
    );

Widget mood(Color color, String mood, String text) => Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(
            mood,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          text,
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            color: color,
            fontSize: 16,
          ),
        ),
      ],
    );

List<String> moodEmotions = [
  'assets/images/happy.png',
  'assets/images/neutre.png'
      'assets/images/sad.png',
  'assets/images/angry.png',
];

List<String> moodTypes = [
  'Happy',
  'Sad',
  'Angry',
  'Neutre',
];

List<Color> moodSelection = [
  primaryColor,
  secondaryColor,
  secondaryColor,
  secondaryColor,
];
Widget moodToday() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Your mood today',
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            mood(moodSelection[0], 'assets/images/happy.png', 'Happy'),
            const SizedBox(
              width: 5,
            ),
            mood(moodSelection[1], 'assets/images/sad.png', 'Sad'),
            const SizedBox(
              width: 5,
            ),
            mood(moodSelection[2], 'assets/images/neutre.png', 'neutre'),
            const SizedBox(
              width: 5,
            ),
            mood(moodSelection[3], 'assets/images/angry.png', 'Angry'),
          ],
        ),
      ],
    );

Widget discover() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Discover',
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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: [
              Container(
                height: 237,
                width: 210,
                decoration: BoxDecoration(
                  color: const Color(0xff8E97FD),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(15),
                        ),
                        child: Image.asset('assets/images/Group.png')),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Stay Healthy',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Exercises',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                color: Colors.white54,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '3-10 MIN',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white54,
                                    // fontSize: 1,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      elevation: MaterialStateProperty.all(0),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            side: BorderSide(
                                              color: borderColor,
                                            )),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      'START',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        // fontSize: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 237,
                width: 210,
                decoration: BoxDecoration(
                  color: const Color(0xffFFDB9D),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(15),
                        ),
                        child: Image.asset('assets/images/Group2.png')),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Relaxation',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Music/Podcast',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                color: Colors.black54,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '3-10 MIN',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54,
                                    // fontSize: 1,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      elevation: MaterialStateProperty.all(0),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            side: BorderSide(
                                              color: borderColor,
                                            )),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      'START',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        // fontSize: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );

Widget quotes() => Container(
      height: 100,
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xff333242),
        image: const DecorationImage(
          image: AssetImage(
            'assets/images/Group3.png',
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Daily Quotes',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Recommended for you',
                style: TextStyle(
                  fontFamily: 'Inter',
                  // fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );

Widget articles(String title, String tag, String img, String url) => InkWell(
      onTap: () async {
        await launch(url, forceWebView: true);
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(22, 0, 0, 0),

              offset: Offset(0, 5),

              blurRadius: 10.0,

              // spreadRadius: 1.0,
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              height: 120,
              width: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    image: NetworkImage(img), fit: BoxFit.cover),
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
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Expanded(
                      child: Text(
                        tag,
                        style: const TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color(0xff9378FF),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                      width: 100,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor:
                              MaterialStateProperty.all(primaryColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                                side: BorderSide(
                                  color: borderColor,
                                )),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Read Now',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
