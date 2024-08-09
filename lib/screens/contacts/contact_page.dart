import 'package:first_app/constant/buttons/buttons.dart';
import 'package:first_app/constant/width.dart';
import 'package:first_app/widgets/images.dart';
import 'package:flutter/material.dart';
import 'package:first_app/constant/screen_size.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  Future<void> _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
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
                              onPressed: () => _launchUrl('tel:05555555555'),
                              icon: Icons.phone,
                            ),
                            ContactButton(
                              btnText: "WhatsApp: 0555 555 55 55",
                              onPressed: () =>
                                  _launchUrl('https://wa.me/905555555555'),
                              icon: Icons.chat,
                            ),
                            ContactButton(
                              btnText: "Mail : abc@gmail.com",
                              onPressed: () =>
                                  _launchUrl('mailto:abc@gmail.com'),
                              icon: Icons.mail,
                            ),
                            ContactButton(
                              btnText: "Address : lorem ipsum dolor sit amet",
                              onPressed: () => _launchUrl(
                                  'https://www.google.com/maps/search/?api=1&query=lorem+ipsum+dolor+sit+amet'),
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
