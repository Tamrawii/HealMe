import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

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
    'Beter sleeping',
    'Reduce anxiety',
    'Better health state',
  ];

  List<bool> dummyBools = [
    true,
    false,
    true,
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
