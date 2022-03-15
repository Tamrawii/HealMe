import 'package:flutter/material.dart';

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
            ),
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
}) => TextFormField(
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
