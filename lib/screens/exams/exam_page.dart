import 'package:first_app/constant/app_text_style.dart';
import 'package:first_app/constant/buttons/buttons.dart';
import 'package:first_app/constant/screen_size.dart';
import 'package:first_app/constant/sizedBox_ratio.dart';
import 'package:first_app/constant/width.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExamPage extends StatefulWidget {
  const ExamPage({super.key});

  @override
  State<ExamPage> createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  var questionNumber = 0;
  final questionList = [
    {
      "question": "aşağıdakilerden hangisi ada ülkesidir?",
      "answer": ["Bolu", "Makarna", "Paris"],
    },
    {
      "question": "aşağıdakilerden hangisi daha büyüktür?",
      "answer": ["Balon", "Makas", "Hava"],
    },
    {
      "question": "aşağıdakilerden hangisi yemektir?",
      "answer": ["Sırma", "Makarna", "Martı"],
    },
  ];

  void increaseQuestionNumber() {
    setState(() {
      if (questionNumber < questionList.length - 1) {
        questionNumber++;
      } else {
        // Tüm sorular bitti, burada quiz'i bitirebilir veya başa dönebilirsiniz
        print("Quiz bitti!");
        // Örneğin, başa dönmek için:
        // questionNumber = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = Width(context);
    double valueTextSize =
        ScreenSize.screenWidthControl(screenWidth)['valueTextSize']!;
    double valueResult =
        ScreenSize.screenWidthControl(screenWidth)['valueResult']!;
    List<String> currentAnswers =
        (questionList[questionNumber]["answer"] as List).cast<String>();

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
                questionList[questionNumber]["question"] as String,
                style: AppTextStyle.quizQuestionText(valueTextSize),
              ),
              SizedboxRatio.sizedBoxMinScale(valueResult),
              Column(
                children: currentAnswers.map((answer) {
                  return Container(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    alignment: Alignment.center,
                    child: QuizChoiceButton(
                      btnText: answer,
                      onPressed: increaseQuestionNumber,
                    ),
                  );
                }).toList(),
              ),
              SizedboxRatio.sizedBoxMinScale(valueResult),
              MidButton(
                btnText: "Cevap",
                btnBorderRadius: 30,
                onPressed: () {
                  // Cevap butonuna basıldığında yapılacak işlemler
                },
              ),
              SizedboxRatio.sizedBoxWithScale(valueResult, 10),
            ],
          ),
        ),
      ),
    );
  }
}
