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
  var numberOfTrueAnswers = 0;
  final questionList = [
    {
      "question": "aşağıdakilerden hangisi ada ülkesidir?",
      "answer": ["Bolu", "Makarna", "Paris"],
      "trueAnswer": "Makarna"
    },
    {
      "question": "aşağıdakilerden hangisi daha büyüktür?",
      "answer": ["Balon", "Makas", "Hava"],
      "trueAnswer": "Makas"
    },
    {
      "question": "aşağıdakilerden hangisi yemektir?",
      "answer": ["Sırma", "Makarna", "Martı"],
      "trueAnswer": "Sırma"
    },
  ];

  void handleAnswerSelected(String answer) {
    if (answer == questionList[questionNumber]["trueAnswer"]) {
      numberOfTrueAnswers++;
    }

    setState(() {
      if (questionNumber < questionList.length - 1) {
        questionNumber++;
      } else {
        questionNumber = questionList.length;
      }
    });
  }

  void restart() {
    setState(() {
      questionNumber = 0;
      numberOfTrueAnswers = 0;
    });
  }

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
          child: questionNumber < questionList.length
              ? Column(
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
                      children: (questionList[questionNumber]["answer"]
                              as List<String>)
                          .map((answer) {
                        return Container(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          alignment: Alignment.center,
                          child: QuizChoiceButton(
                            btnText: answer,
                            onPressed: () {
                              handleAnswerSelected(answer);
                            },
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
                )
              : Container(
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          "Quiz Bitti! Sonuç Ekranı\nSenin skorun: $numberOfTrueAnswers",
                          style: AppTextStyle.quizQuestionText(valueTextSize),
                          textAlign: TextAlign.center,
                        ),
                        IconButton(
                          onPressed: restart,
                          icon: const Icon(Icons.restart_alt),
                          style: IconButton.styleFrom(
                              iconSize: valueTextSize * 2.5,
                              foregroundColor:
                                  const Color.fromARGB(137, 0, 0, 0)),
                        ),
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
