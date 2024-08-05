import 'package:first_app/constant/navigate_to.dart';
import 'package:first_app/screens/informations/importandInfo.dart';
import 'package:flutter/material.dart';

class ImportandInfoList extends StatefulWidget {
  const ImportandInfoList({super.key});

  @override
  State<ImportandInfoList> createState() => _ImportandInfoListState();
}

class _ImportandInfoListState extends State<ImportandInfoList> {
  List questions = [
    "Information 1",
    "Information 2",
    "Information 3",
    "Information 4",
    "Information 5",
    "Information 6",
    "Information 7",
    "Information 8",
    "Information 9",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(questions[index]),
                subtitle: Text("Information name : $index"),
                trailing: const Icon(Icons.chevron_right),
                tileColor: const Color.fromARGB(255, 238, 238, 238),
                onTap: () {
                  navigateTo(context, ImportandInfoPage());
                },
              ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: questions.length),
    );
  }
}
