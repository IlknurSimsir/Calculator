import 'package:first_app/components/appBarDesign.dart';
import 'package:first_app/constant/app_text_style.dart';
import 'package:first_app/constant/buttons/buttons.dart';
import 'package:first_app/constant/screen_size.dart';
import 'package:first_app/constant/sizedBox_ratio.dart';
import 'package:first_app/constant/width.dart';
import 'package:first_app/screens/exams/exam_result_page.dart';
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
  bool isTrue = false;
  List<Map<String, dynamic>> userAnswers = [];
  String? correctAnswer;
  String? selectedAnswer;
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
    if (selectedAnswer == null) {
      // Eğer kullanıcı henüz bir şık seçmediyse
      setState(() {
        selectedAnswer = answer;
        correctAnswer = questionList[questionNumber]["trueAnswer"] as String;
        isTrue = answer == correctAnswer;
        if (isTrue) {
          numberOfTrueAnswers++;
        }

        // Kullanıcının cevabını listeye ekleyelim
        userAnswers.add({
          'questionNumber': questionNumber,
          'question': questionList[questionNumber]["question"],
          'userAnswer': answer,
          'correctAnswer': correctAnswer,
          'isCorrect': isTrue,
        });
      });
    }
  }

  void restart() {
    setState(() {
      questionNumber = 0;
      numberOfTrueAnswers = 0;
      selectedAnswer = null;
      correctAnswer = null;
      isTrue = false;
      userAnswers.clear(); // Cevap listesini temizleyelim
    });
  }

  void next() {
    setState(() {
      if (questionNumber < questionList.length - 1) {
        questionNumber++;
        // Eğer bu soru daha önce cevaplandıysa, cevabı gösterelim
        var previousAnswer = userAnswers.firstWhere(
          (answer) => answer['questionNumber'] == questionNumber,
          orElse: () => {},
        );
        if (previousAnswer.isNotEmpty) {
          selectedAnswer = previousAnswer['userAnswer'];
          isTrue = previousAnswer['isCorrect'];
          correctAnswer = previousAnswer['correctAnswer'];
        } else {
          selectedAnswer = null;
          isTrue = false;
          correctAnswer = null;
        }
      }
    });
  }

  void previous() {
    setState(() {
      if (questionNumber > 0) {
        questionNumber--;
        // Eğer bu soru daha önce cevaplandıysa, cevabı gösterelim
        var previousAnswer = userAnswers.firstWhere(
          (answer) => answer['questionNumber'] == questionNumber,
          orElse: () => {},
        );
        if (previousAnswer.isNotEmpty) {
          selectedAnswer = previousAnswer['userAnswer'];
          isTrue = previousAnswer['isCorrect'];
          correctAnswer = previousAnswer['correctAnswer'];
        } else {
          selectedAnswer = null;
          isTrue = false;
          correctAnswer = null;
        }
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

    return Scaffold(
      appBar: AppBarDesign(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SingleChildScrollView(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: previous,
                        icon: (questionNumber == 0)
                            ? SizedBox(
                                width: valueTextSize * 2.5,
                              )
                            : const Icon(Icons.skip_previous),
                        style: IconButton.styleFrom(
                          iconSize: valueTextSize * 2.5,
                          foregroundColor: const Color.fromARGB(137, 0, 0, 0),
                          hoverColor: Colors.transparent,
                          splashFactory: NoSplash.splashFactory,
                        ),
                      ),
                      Column(
                        children: (questionList[questionNumber]["answer"]
                                as List<String>)
                            .map((answer) {
                          return Container(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            alignment: Alignment.center,
                            child: QuizChoiceButton(
                              btnText: answer,
                              isTrue: isTrue,
                              isSelected: selectedAnswer == answer,
                              correctAnswer: correctAnswer,
                              onPressed: () => handleAnswerSelected(answer),
                            ),
                          );
                        }).toList(),
                      ),
                      IconButton(
                        onPressed: next,
                        icon: (questionNumber == (questionList.length - 1))
                            ? SizedBox(
                                width: valueTextSize * 2.5,
                              )
                            : const Icon(Icons.skip_next),
                        style: IconButton.styleFrom(
                          iconSize: valueTextSize * 2.5,
                          foregroundColor: const Color.fromARGB(137, 0, 0, 0),
                          hoverColor: Colors.transparent,
                          splashFactory: NoSplash.splashFactory,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SmallButton(
                  btnText: "Sınavı Bitir",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ExamResultPage(
                          numberOfTrueAnswers: numberOfTrueAnswers,
                          userAnswers: userAnswers,
                          questionList: questionList,
                        ),
                      ),
                    );
                  },
                  btnBorderRadius: 20,
                ),
              ],
            ),
          ),
          SizedboxRatio.sizedBox1quarter(valueResult),
        ],
      ),
    );
  }
}
