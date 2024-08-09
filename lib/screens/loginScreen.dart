import 'package:first_app/components/rounded_button.dart';
import 'package:first_app/components/rounded_input_fields.dart';
import 'package:first_app/components/square_box.dart';
import 'package:first_app/constant/app_text_style.dart';
import 'package:first_app/constant/width.dart';
import 'package:first_app/screens/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:first_app/constant/screen_size.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = '';
  String password = '';

  // Predefined credentials
  final String defaultEmail = 'user@example.com';
  final String defaultPassword = 'password123';

  void checkCredentialsAndLogin(BuildContext context) {
    if (email == defaultEmail && password == defaultPassword) {
      // Credentials are correct, navigate to Main_Page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                MainPage()), // Ensure MainPage is the correct name of your main page widget
      );
    } else {
      // Credentials are incorrect, show error message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('You entered an incorrect e-mail or password'),
          duration: Duration(seconds: 3),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = Width(context);
    double valueTextSize =
        ScreenSize.screenWidthControl(screenWidth)['valueTextSize']!;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Opacity(
              opacity: 0.7,
              child: SvgPicture.asset(
                "assets/images/up_wave.svg",
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/images/welcome.svg",
                height: 200,
                width: 200,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 280,
                    height: 280,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 188, 188, 188),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        RoundedInputFields(
                          hintText: "G-mail",
                          isEmail: true,
                          isPassword: false,
                          icon: Icons.mail,
                          onChange: (value) {
                            setState(() {
                              email = value;
                            });
                          },
                        ),
                        RoundedInputFields(
                          hintText: "Password",
                          isEmail: false,
                          isPassword: true,
                          icon: Icons.password,
                          onChange: (value) {
                            setState(() {
                              password = value;
                            });
                          },
                        ),
                        Text(
                          "Forget your password?",
                          style: AppTextStyle.miniBoldDescriptionText(
                              valueTextSize),
                        ),
                        RoundedButton(
                          btnText: "LOGIN",
                          onPressed: () => checkCredentialsAndLogin(context),
                          btnColor: Color.fromARGB(255, 19, 153, 255),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      indent: 50,
                      thickness: 0.5,
                      color: Colors.grey[400],
                    )),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Or Continue With",
                        style:
                            AppTextStyle.MINI_DESCRIPTION_TEXT(valueTextSize),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        endIndent: 50,
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareBox(
                    imagePath: "assets/logos/google_logo.svg",
                  ),
                  SquareBox(
                    imagePath: "assets/logos/apple_logo.svg",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a Member?",
                    style: AppTextStyle.miniBoldDescriptionText(valueTextSize),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                    child: Text(
                      " Register Now",
                      style:
                          AppTextStyle.miniBoldDescriptionText(valueTextSize),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Opacity(
              opacity: 0.7,
              child: SvgPicture.asset(
                "assets/images/down_wave.svg",
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
