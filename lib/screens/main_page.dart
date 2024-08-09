import 'package:first_app/constant/buttons/buttons.dart';
import 'package:first_app/constant/navigate_to.dart';
import 'package:first_app/screens/announcements/announcementList.dart';
import 'package:first_app/screens/contacts/contact_page.dart';
import 'package:first_app/screens/exams/unitList.dart';
import 'package:first_app/screens/informations/ImportandInfoList.dart';
import 'package:first_app/screens/loginScreen.dart';
import 'package:first_app/screens/sources/sourcesList.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 63, 57, 56),
        title: const Text(
          "DriverApp",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                //SliderImg(),
                Wrap(
                  spacing: 10.0, // Butonlar arasındaki yatay boşluk
                  runSpacing: 10.0, // Satırlar arasındaki dikey boşluk
                  children: [
                    MidButton(
                        btnText: "Testler",
                        btnBorderRadius: 30,
                        icon: Icons.admin_panel_settings,
                        onPressed: () {
                          navigateTo(context, Unitlist());
                        }),
                    MidButton(
                        btnText: "Kaynaklar",
                        btnBorderRadius: 30,
                        icon: Icons.admin_panel_settings,
                        onPressed: () {
                          navigateTo(context, SourcesList());
                        }),
                    MidButton(
                        btnText: "Duyurular",
                        btnBorderRadius: 30,
                        icon: Icons.admin_panel_settings,
                        onPressed: () {
                          navigateTo(context, AnnouncementList());
                        }),
                    MidButton(
                        btnText: "Önemli Bilgiler",
                        btnBorderRadius: 30,
                        icon: Icons.admin_panel_settings,
                        onPressed: () {
                          navigateTo(context, ImportandInfoList());
                        }),
                    MidButton(
                        btnText: "İletişim",
                        btnBorderRadius: 30,
                        icon: Icons.admin_panel_settings,
                        onPressed: () {
                          navigateTo(context, ContactPage());
                        }),
                    MidButton(
                        btnText: "Giriş Yap",
                        btnBorderRadius: 30,
                        icon: Icons.admin_panel_settings,
                        onPressed: () {
                          navigateTo(context, LoginScreen());
                        }),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SliderImg extends StatelessWidget {
  const SliderImg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/$i.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    color: Colors.black.withOpacity(0.5),
                    child: Text(
                      'text $i',
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      }).toList(),
    );
  }
}
