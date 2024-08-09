import 'package:first_app/constant/app_text_style.dart';
import 'package:first_app/constant/buttons/buttons.dart';
import 'package:first_app/constant/screen_size.dart';
import 'package:first_app/constant/sizedBox_ratio.dart';
import 'package:first_app/constant/width.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExamPage extends StatelessWidget {
  const ExamPage({super.key});

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
          "DriverApp Test",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/images/history_hitit.svg",
                height: 110,
                width: 100,
                fit: BoxFit.cover,
              ),
              Text(
                "Soru?",
                style: AppTextStyle.quizQuestionText(valueTextSize),
              ),
              SizedboxRatio.sizedBoxMinScale(valueResult),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      QuizChoiceButton(btnText: "Bizans"),
                      QuizChoiceButton(btnText: "Amerika"),
                      QuizChoiceButton(btnText: "Hitit"),
                      QuizChoiceButton(btnText: "Antakya"),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MidButton(
                    btnText: "Cevap",
                    btnBorderRadius: 30,
                    onPressed: () {},
                  ),
                ],
              ),
              SizedboxRatio.sizedBoxWithScale(valueResult, 10),
            ],
          ),
        ),
      ),
    );
  }
}
