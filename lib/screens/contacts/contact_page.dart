import 'package:first_app/constant/buttons/buttons.dart';
import 'package:first_app/constant/width.dart';
import 'package:first_app/widgets/images.dart';
import 'package:flutter/material.dart';
import 'package:first_app/constant/screen_size.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = Width(context);
    double valueTextSize =
        ScreenSize.screenWidthControl(screenWidth)['valueTextSize']!;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LogoWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IntrinsicWidth(
                    child: IntrinsicHeight(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 188, 188, 188),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ContactButton(
                              btnText: "Tel: 0555 555 55 55",
                              onPressed: () {},
                              icon: Icons.phone,
                            ),
                            ContactButton(
                              btnText: "Tel: 0555 555 55 55",
                              onPressed: () {},
                              icon: Icons.phone_android_outlined,
                            ),
                            ContactButton(
                              btnText: "Mail : abc@gmail.com",
                              onPressed: () {},
                              icon: Icons.mail,
                            ),
                            ContactButton(
                              btnText: "Address : lorem ipsum dolor sit amet",
                              onPressed: () {},
                              icon: Icons.map,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
