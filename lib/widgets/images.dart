// widgets/logo_widget.dart

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/logos/debriyaj_logo.svg', // Logo resminizin yolunu buraya ekleyin
      width: 100, // İhtiyacınıza göre genişlik ve yükseklik ayarlarını yapın
      height: 100,
    );
  }
}
