import 'package:first_app/constant/colorPalette.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle miniBoldDescriptionText(double width) {
    return TextStyle(
      fontSize: width,
      color: Colorpalette.textColor,
      letterSpacing: 3,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle buttonText(double width, Color? textColor) {
    return TextStyle(
      fontSize: width * 0.8,
      letterSpacing: 2,
      color: textColor ?? Colorpalette.textColor,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle miniDescriptionText(double width) {
    return TextStyle(
      fontSize: width,
      color: Colorpalette.textColor,
      letterSpacing: 3,
    );
  }

  static TextStyle miniDefaultDescriptionText(double width) {
    return TextStyle(
      fontSize: width,
      color: Colorpalette.textColor,
    );
  }

  static TextStyle miniDescriptionBold(double width) {
    return TextStyle(
      fontSize: width,
      color: Colorpalette.textColor,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle quizQuestionText(double width) {
    return TextStyle(
      fontSize: width * 1.5,
      color: Colorpalette.textColor,
      fontWeight: FontWeight.w600,
      letterSpacing: 1,
    );
  }

  static TextStyle MINI_DESCRIPTION_TEXT(double width) {
    return TextStyle(
        fontSize: width, color: Colorpalette.textColor, letterSpacing: 3);
  }
}
