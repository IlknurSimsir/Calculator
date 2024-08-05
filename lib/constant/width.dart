// screen_size_util.dart
import 'package:flutter/material.dart';

double Width(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  double screen = size.width;
  return screen;
}
