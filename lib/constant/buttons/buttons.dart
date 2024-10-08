import 'package:first_app/components/main_button.dart';
import 'package:first_app/constant/colorPalette.dart';
import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  final String btnText;
  final IconData? icon;
  final Function() onPressed;
  final double btnBorderRadius;

  const SmallButton({
    super.key,
    required this.btnText,
    this.icon,
    required this.onPressed,
    required this.btnBorderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return MainButton(
        btnText: btnText,
        btnColor: Colorpalette.primaryColor,
        btnBorderColor: Colorpalette.borderColor,
        btnBorderRadius: btnBorderRadius,
        icon: icon,
        withScaleFactor: 5,
        btnTextColor: const Color.fromARGB(255, 134, 134, 134),
        heightScaleFactor: 1.5,
        btnMarginVertical: 2,
        btnMarginHorizontal: 2,
        btnPaddingVertical: 2,
        btnPaddingHorizontal: 2,
        isRow: false,
        onPressed: onPressed);
  }
}

class MidButton extends StatelessWidget {
  final String btnText;
  final IconData? icon;
  final Function() onPressed;
  final double btnBorderRadius;

  const MidButton({
    super.key,
    required this.btnText,
    this.icon,
    required this.onPressed,
    required this.btnBorderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return MainButton(
        btnText: btnText,
        btnBorderColor: Colorpalette.borderColor,
        btnColor: Colorpalette.primaryColor,
        btnBorderRadius: btnBorderRadius,
        icon: icon,
        withScaleFactor: 4,
        // btnTextColor: Colors.black,
        heightScaleFactor: 3,
        btnMarginVertical: 2,
        btnMarginHorizontal: 2,
        btnPaddingVertical: 2,
        btnPaddingHorizontal: 2,
        isRow: false,
        onPressed: onPressed);
  }
}

class LargeButton extends StatelessWidget {
  final String btnText;
  final IconData? icon;
  final Function() onPressed;
  final double btnBorderRadius;

  const LargeButton({
    super.key,
    required this.btnText,
    this.icon,
    required this.onPressed,
    required this.btnBorderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return MainButton(
        btnText: btnText,
        btnColor: Colorpalette.primaryColor,
        btnBorderColor: Colorpalette.borderColor,
        btnBorderRadius: btnBorderRadius,
        icon: icon,
        withScaleFactor: 6,
        btnTextColor: Colors.black,
        heightScaleFactor: 4,
        btnMarginVertical: 2,
        btnMarginHorizontal: 2,
        btnPaddingVertical: 2,
        btnPaddingHorizontal: 2,
        isRow: false,
        onPressed: onPressed);
  }
}

class QuizChoiceButton extends StatelessWidget {
  final String btnText;
  final VoidCallback onPressed;
  final bool isSelected;
  final bool isTrue;
  final String? correctAnswer;

  const QuizChoiceButton({
    super.key,
    required this.btnText,
    required this.onPressed,
    required this.isSelected,
    required this.isTrue,
    this.correctAnswer,
  });

  @override
  Widget build(BuildContext context) {
    Color btnColor;
    if (isSelected) {
      btnColor = isTrue ? Colors.green : Colors.red;
    } else if (correctAnswer == btnText && correctAnswer != null) {
      btnColor = Colors.green;
    } else {
      btnColor = Colorpalette.primaryColor;
    }
    return MainButton(
      btnText: btnText,
      btnColor: btnColor,
      btnBorderColor: Colorpalette.borderColor,
      btnBorderRadius: 30,
      withScaleFactor: 6,
      btnTextColor: Colorpalette.textColor,
      heightScaleFactor: 1,
      btnMarginVertical: 5,
      btnMarginHorizontal: 2,
      btnPaddingVertical: 2,
      btnPaddingHorizontal: 2,
      isRow: false,
      onPressed: onPressed,
    );
  }
}

class ContactButton extends StatelessWidget {
  final String btnText;
  final VoidCallback onPressed;
  final IconData? icon;

  const ContactButton({
    super.key,
    required this.btnText,
    required this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return MainButton(
      icon: icon,
      btnText: btnText,
      btnColor: Colorpalette.primaryColor,
      btnBorderColor: Colorpalette.borderColor,
      btnBorderRadius: 30,
      withScaleFactor: 8,
      btnTextColor: const Color.fromARGB(255, 0, 0, 0),
      heightScaleFactor: 1.5,
      btnMarginVertical: 5,
      btnMarginHorizontal: 2,
      btnPaddingVertical: 2,
      btnPaddingHorizontal: 2,
      isRow: true,
      onPressed: onPressed,
    );
  }
}
