import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:first_app/constant/colorPalette.dart';

class AppBarDesign extends StatelessWidget implements PreferredSizeWidget {
  const AppBarDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "TOGG SÜRÜCÜ KURSU",
        style: TextStyle(color: Colorpalette.whiteColor),
      ),
      centerTitle: true,
      iconTheme: const IconThemeData(color: Colorpalette.whiteColor),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: SvgPicture.asset(
            'assets/logos/apple_logo.svg',
            color: Colorpalette.primaryColor,
            height: 30,
            width: 30,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
