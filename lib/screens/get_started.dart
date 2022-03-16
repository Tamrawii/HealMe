import 'package:flutter/material.dart';
import 'package:heal_me/constants/colors.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/get-started.png'),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: ListView(
            children: [
              Column(
                children: const [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Hi Zaid, Welcome',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'to HealMe',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w100,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Before starting, please answer some questions honestly to customize the app for you.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Align(
        alignment: const Alignment(0, 0.9),
        child: Container(
          height: 57,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: ElevatedButton(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              backgroundColor: MaterialStateProperty.all(pinkColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: BorderSide(
                      color: pinkColor,
                    )),
              ),
            ),
            onPressed: () => Navigator.of(context).pushNamed('/singUp'),
            child: const Text(
              'Get Started',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 19,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
