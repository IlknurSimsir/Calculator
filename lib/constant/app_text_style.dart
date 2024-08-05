import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle miniBoldDescriptionText(double width) {
    return TextStyle(
      fontSize: width,
      color: Colors.black,
      letterSpacing: 3,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle buttonText(double width, Color textColor) {
    return TextStyle(
      fontSize: width * 0.8,
      letterSpacing: 2,
      color: textColor,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle miniDescriptionText(double width) {
    return TextStyle(
      fontSize: width,
      color: Colors.black,
      letterSpacing: 3,
    );
  }

  static TextStyle miniDefaultDescriptionText(double width, Color textColor) {
    return TextStyle(
      fontSize: width,
      color: textColor,
    );
  }

  static TextStyle miniDescriptionBold(double width) {
    return TextStyle(
      fontSize: width,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle quizQuestionText(double width) {
    return TextStyle(
      fontSize: width * 1.5,
      color: Colors.black,
      fontWeight: FontWeight.w600,
      letterSpacing: 1,
    );
  }

  static TextStyle MINI_DESCRIPTION_TEXT(double width) {
    return TextStyle(fontSize: width, color: Colors.black, letterSpacing: 3);
  }
}
