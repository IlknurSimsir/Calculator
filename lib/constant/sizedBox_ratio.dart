import 'package:flutter/material.dart';

class SizedboxRatio {
  static SizedBox sizedBox3quarter(double width) {
    return SizedBox(
      height: width * 0.75,
    );
  }

  static SizedBox sizedBox2quarter(double width) {
    return SizedBox(
      height: width * 0.50,
    );
  }

  static SizedBox sizedBox1quarter(double width) {
    return SizedBox(
      height: width * 0.25,
    );
  }

  static SizedBox sizedBoxMinScale(double width) {
    return SizedBox(
      height: width * 0.05,
    );
  }

  static SizedBox sizedBoxWithScale(double width, int scale) {
    return SizedBox(
      height: width * scale * 0.01,
    );
  }
}
