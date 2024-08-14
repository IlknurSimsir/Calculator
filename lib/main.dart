import 'package:first_app/constant/colorPalette.dart';
import 'package:first_app/screens/announcements/announcementList.dart';
import 'package:first_app/screens/loginScreen.dart';
import 'package:first_app/screens/main_page.dart';
import 'package:first_app/screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

void main() {
  runApp(ProviderScope(
    child: DriverApp(),
  ));
}

class DriverApp extends StatelessWidget {
  const DriverApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colorpalette.primaryColor,
        scaffoldBackgroundColor: Colorpalette.primaryBackground,

        textTheme: TextTheme().copyWith(
          bodyLarge: TextStyle(color: Colorpalette.whiteColor),
          bodyMedium: TextStyle(color: Colorpalette.greyColor),
        ),

        appBarTheme: const AppBarTheme(
          color: Colorpalette.accentColor,
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Colorpalette.primaryColor,
        ),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(
              secondary: Colorpalette
                  .accentColor, // Replace accentColor with secondary
            )
            .copyWith(background: Colorpalette.backgroundColor),
        // Other theme settings
      ),
      home: const Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: LoginScreen(),
        ),
      ),
      routes: {
        "/MainPage": (context) => const MainPage(),
        "/Announcements": (context) => AnnouncementList(),
        "/Profile": (context) => const ProfilePage(),
      },
    );
  }
}

class PersistenBottomNavBarDemo extends StatelessWidget {
  const PersistenBottomNavBarDemo({super.key});
  List<PersistentTabConfig> _tabs() => [
        PersistentTabConfig(
          screen: const SafeArea(child: MainPage()),
          item: ItemConfig(
            icon: const Icon(Icons.home),
            title: "Ana Sayfa",
          ),
        ),
        PersistentTabConfig(
          screen: const SafeArea(child: AnnouncementList()),
          item: ItemConfig(
            icon: const Icon(Icons.notifications),
            title: "Announcements",
          ),
        ),
        PersistentTabConfig(
          screen: const SafeArea(child: ProfilePage()),
          item: ItemConfig(
            icon: const Icon(Icons.account_balance),
            title: "Profil",
          ),
        ),
      ];

  @override
  Widget build(BuildContext context) => PersistentTabView(
        tabs: _tabs(),
        navBarBuilder: (navBarConfig) => Style1BottomNavBar(
          navBarConfig: navBarConfig,
        ),
      );
}
