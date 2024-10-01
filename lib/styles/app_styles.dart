import 'package:flutter/material.dart';

class AppStyles {
  static const Color colorGrey = Colors.black45;
  static const Color colorPink = Color(0xFFF896D8);
  static const Color colorDeepPink = Color(0xFFBF63F8);
  static const Color colorWhite = Colors.white;
  static const Color colorBackground = Color(0xfffaf5ff);
  static Color colorLink = Colors.blue.shade900;

  static const TextStyle headlineLarge = TextStyle(
    fontSize: 40,
    color: colorGrey,
  );

  static const TextStyle headlineMedium = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24,
    color: colorGrey,
  );

  static const TextStyle headlineSmall = TextStyle(
    fontSize: 12,
  );

  static const TextStyle activityName = TextStyle(
    fontSize: 18,
  );

  static const TextStyle distance = TextStyle(
    fontSize: 24,
  );

  static TextStyle details = TextStyle(
    color: colorLink,
    decoration: TextDecoration.underline,
    decorationColor: colorLink,
  );

  static const TextStyle dateTime = TextStyle(
    fontStyle: FontStyle.italic,
  );

  static const TextStyle defaultStyle = TextStyle(
    fontSize: 14,
  );
}
