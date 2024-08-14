import 'package:first_app/components/appBarDesign.dart';
import 'package:first_app/constant/app_text_style.dart';
import 'package:first_app/constant/screen_size.dart';
import 'package:first_app/constant/width.dart';
import 'package:flutter/material.dart';

class ExamResultPage extends StatelessWidget {
  final int numberOfTrueAnswers;
  final List<Map<String, dynamic>> userAnswers;
  final List questionList;

  const ExamResultPage({
    Key? key,
    required this.numberOfTrueAnswers,
    required this.userAnswers,
    required this.questionList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = Width(context);

    double valueTextSize =
        ScreenSize.screenWidthControl(screenWidth)['valueTextSize']!;
    double point = 0;

    var questions = questionList.length;
    point = (100 / questions) * numberOfTrueAnswers;
    String formattedPoint = point.toStringAsFixed(2);
    return Scaffold(
      appBar: AppBarDesign(),
      body: Column(
        children: [
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text("Tebrikler! Puanın: $formattedPoint",
                      style: AppTextStyle.quizQuestionText(valueTextSize)),
                  Text(
                    "$questions soruda $numberOfTrueAnswers doğru işaretledin. ",
                    style: AppTextStyle.miniDescriptionText(valueTextSize),
                  ),
                ],
              )),
          Expanded(
            child: ListView.builder(
              itemCount: questionList.length,
              itemBuilder: (context, index) {
                final question = questionList[index];
                final userAnswer =
                    index < userAnswers.length ? userAnswers[index] : null;
                final isAnswered = userAnswer != null;
                final isCorrect = isAnswered ? userAnswer['isCorrect'] : false;

                return Card(
                  margin: const EdgeInsets.all(8),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Soru ${index + 1}: ${question['question']}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        if (isAnswered)
                          ...question['answer'].map<Widget>((option) {
                            final isSelected =
                                option == userAnswer['userAnswer'];
                            final isCorrectAnswer =
                                option == question['trueAnswer'];
                            Color? optionColor;

                            if (isSelected) {
                              optionColor =
                                  isCorrect ? Colors.green : Colors.red;
                            } else if (isCorrectAnswer && !isCorrect) {
                              optionColor = Colors.green;
                            }

                            return Text(
                              option,
                              style: TextStyle(
                                color: optionColor,
                                fontWeight: isSelected ||
                                        (isCorrectAnswer && !isCorrect)
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                              ),
                            );
                          }).toList()
                        else
                          const Text(
                            'Bu soru cevaplanmadı.',
                            style: TextStyle(
                              color: Colors.orange,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
