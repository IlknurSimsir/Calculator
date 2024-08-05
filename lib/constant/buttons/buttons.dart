import 'package:first_app/components/main_button.dart';
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
        btnColor: Colors.amber,
        btnBorderColor: Colors.greenAccent,
        btnBorderRadius: btnBorderRadius,
        icon: icon,
        withScaleFactor: 2,
        btnTextColor: Color.fromARGB(255, 134, 134, 134),
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
        btnColor: Colors.amber,
        btnBorderColor: Colors.greenAccent,
        btnBorderRadius: btnBorderRadius,
        icon: icon,
        withScaleFactor: 4,
        btnTextColor: Colors.black,
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
        btnColor: Colors.amber,
        btnBorderColor: Colors.greenAccent,
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
  final Function()? onPressed;

  const QuizChoiceButton({
    super.key,
    required this.btnText,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MainButton(
      btnText: btnText,
      btnColor: const Color.fromARGB(255, 160, 160, 160),
      btnBorderColor: const Color.fromARGB(255, 76, 76, 76),
      btnBorderRadius: 30,
      withScaleFactor: 6,
      btnTextColor: const Color.fromARGB(255, 255, 255, 255),
      heightScaleFactor: 1,
      btnMarginVertical: 5,
      btnMarginHorizontal: 2,
      btnPaddingVertical: 2,
      btnPaddingHorizontal: 2,
      isRow: false,
      onPressed: () {},
    );
  }
}

class ContactButton extends StatelessWidget {
  final String btnText;
  final Function()? onPressed;
  final IconData? icon;

  const ContactButton({
    super.key,
    required this.btnText,
    this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return MainButton(
      icon: icon,
      btnText: btnText,
      btnColor: const Color.fromARGB(255, 255, 255, 255),
      btnBorderColor: const Color.fromARGB(255, 204, 204, 204),
      btnBorderRadius: 30,
      withScaleFactor: 8,
      btnTextColor: const Color.fromARGB(255, 0, 0, 0),
      heightScaleFactor: 1.5,
      btnMarginVertical: 5,
      btnMarginHorizontal: 2,
      btnPaddingVertical: 2,
      btnPaddingHorizontal: 2,
      isRow: true,
      onPressed: () {},
    );
  }
}
