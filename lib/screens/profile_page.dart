import 'package:first_app/constant/buttons/buttons.dart';
import 'package:first_app/constant/navigate_to.dart';
import 'package:first_app/screens/loginScreen.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MidButton(
              btnText: "Çıkış Yap",
              onPressed: () {
                navigateTo(context, LoginScreen());
              },
              btnBorderRadius: 20)
        ],
      ),
    );
  }
}
