import 'package:first_app/constant/navigate_to.dart';
import 'package:first_app/screens/exams/exam_page.dart';
import 'package:flutter/material.dart';

class TestList extends StatefulWidget {
  const TestList({super.key});

  @override
  State<TestList> createState() => _TestListState();
}

class _TestListState extends State<TestList> {
  List questions = [
    "Soru 1",
    "Soru 2",
    "Soru 3",
    "Soru 4",
    "Soru 5",
    "Soru 6",
    "Soru 7",
    "Soru 8",
    "Soru 9",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(questions[index]),
                subtitle: Text("Soru adı : $index"),
                trailing: const Icon(Icons.chevron_right),
                tileColor: const Color.fromARGB(255, 238, 238, 238),
                onTap: () {
                  navigateTo(context, ExamPage());
                },
              ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: questions.length),
    );
  }
}
