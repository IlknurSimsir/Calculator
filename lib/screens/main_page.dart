import 'package:first_app/components/appBarDesign.dart';
import 'package:first_app/constant/app_text_style.dart';
import 'package:first_app/constant/buttons/buttons.dart';
import 'package:first_app/constant/colorPalette.dart';
import 'package:first_app/constant/navigate_to.dart';
import 'package:first_app/constant/screen_size.dart';
import 'package:first_app/screens/announcements/announcementList.dart';
import 'package:first_app/screens/contacts/contact_page.dart';
import 'package:first_app/screens/exams/unitList.dart';
import 'package:first_app/screens/informations/ImportandInfoList.dart';
import 'package:first_app/screens/loginScreen.dart';
import 'package:first_app/screens/sources/sourcesList.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDesign(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 233, 233, 233),
                      const Color.fromARGB(255, 121, 121, 121)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(
                  child: Text("Hızlı Erişim Butonları",
                      style: AppTextStyle.miniDefaultDescriptionText(
                          ScreenSize.valueTextSize)),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: Wrap(
                  spacing: 20.0,
                  runSpacing: 20.0,
                  children: [
                    MidButton(
                      btnText: "Testler",
                      btnBorderRadius: 30,
                      icon: Icons.admin_panel_settings,
                      onPressed: () {
                        navigateTo(context, Unitlist());
                      },
                    ),
                    MidButton(
                      btnText: "Kaynaklar",
                      btnBorderRadius: 30,
                      icon: Icons.book,
                      onPressed: () {
                        navigateTo(context, SourcesList());
                      },
                    ),
                    MidButton(
                      btnText: "Duyurular",
                      btnBorderRadius: 30,
                      icon: Icons.announcement,
                      onPressed: () {
                        navigateTo(context, AnnouncementList());
                      },
                    ),
                    MidButton(
                      btnText: "Önemli Bilgiler",
                      btnBorderRadius: 30,
                      icon: Icons.info,
                      onPressed: () {
                        navigateTo(context, ImportandInfoList());
                      },
                    ),
                    MidButton(
                      btnText: "İletişim",
                      btnBorderRadius: 30,
                      icon: Icons.contact_phone,
                      onPressed: () {
                        navigateTo(context, ContactPage());
                      },
                    ),
                    MidButton(
                      btnText: "Giriş Yap",
                      btnBorderRadius: 30,
                      icon: Icons.login,
                      onPressed: () {
                        navigateTo(context, LoginScreen());
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3, // Sadece 3 duyuru gösterilecek
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 6,
                    margin: const EdgeInsets.only(bottom: 12.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    shadowColor: Colors.grey.withOpacity(0.4),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0), // Padding küçültüldü
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: [
                              Icon(Icons.announcement,
                                  color: Colorpalette.primaryColor),
                              const SizedBox(width: 6),
                              Text(
                                'Duyuru ${index + 1}',
                                style: const TextStyle(
                                  fontSize: 16, // Yazı boyutu küçültüldü
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          Text(
                            'Duyuru ${index + 1}. Ehliyet sınavında U dönüşü zorunlu hale getirildi.',
                            style: const TextStyle(
                              fontSize: 14, // Yazı boyutu küçültüldü
                              color: Colors.black54,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 6),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {
                                // Detay sayfasına gitme işlemi
                              },
                              child: const Text(
                                'Detayları Gör',
                                style: TextStyle(
                                  color: Colorpalette.primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14, // Yazı boyutu küçültüldü
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
