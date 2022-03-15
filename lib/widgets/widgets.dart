import 'package:flutter/material.dart';

Widget btn(String text, Color bg, Color color) => Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
      ),
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(bg),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: color,
          ),
        ),
      ),
    );
