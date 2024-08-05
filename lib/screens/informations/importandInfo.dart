import 'package:first_app/constant/app_text_style.dart';
import 'package:first_app/constant/screen_size.dart';
import 'package:first_app/constant/sizedBox_ratio.dart';
import 'package:first_app/constant/width.dart';
import 'package:flutter/material.dart';

class ImportandInfoPage extends StatelessWidget {
  const ImportandInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = Width(context);
    double valueTextSize =
        ScreenSize.screenWidthControl(screenWidth)['valueTextSize']!;
    double valueResult =
        ScreenSize.screenWidthControl(screenWidth)['valueResult']!;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text(
          "Önemli Bilgiler",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedboxRatio.sizedBoxWithScale(valueResult, 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Başlık",
                    style: AppTextStyle.quizQuestionText(valueTextSize),
                  ),
                ],
              ),
              SizedboxRatio.sizedBoxWithScale(valueResult, 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: valueResult,
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut maximus purus mi, eu imperdiet nulla feugiat ac. Donec tristique ipsum et nulla vehicula mattis. Donec luctus odio id mauris molestie vestibulum. In finibus venenatis ultricies. Quisque libero elit, gravida ut imperdiet vel, tincidunt vel lectus. Proin lacinia libero orci, a commodo diam aliquam et. Ut sed diam consequat, dapibus odio a, rhoncus tortor. Nulla scelerisque fermentum nisi, in malesuada mauris fringilla et.",
                      style: AppTextStyle.miniDefaultDescriptionText(
                          valueTextSize * 1.2, Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
