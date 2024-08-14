import 'package:first_app/components/text_field_container.dart';
import 'package:first_app/constant/colorPalette.dart';
import 'package:flutter/material.dart';

class RoundedInputFields extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool isEmail;
  final bool isPassword;
  final ValueChanged<String> onChange;
  const RoundedInputFields(
      {super.key,
      required this.hintText,
      required this.icon,
      required this.onChange,
      required this.isEmail,
      required this.isPassword});

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      inputBox: TextField(
        onChanged: onChange,
        obscureText: isPassword,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(
            icon,
            color: Colors.amber,
          ),
          fillColor: const Color.fromARGB(255, 0, 0, 0),
          border: InputBorder.none,
        ),
        style: TextStyle(
          color: Colorpalette.textColor,
        ),
      ),
    );
  }
}
