import 'package:first_app/constant/navigate_to.dart';
import 'package:first_app/screens/informations/importandInfo.dart';
import 'package:flutter/material.dart';

class SourcesList extends StatefulWidget {
  const SourcesList({super.key});

  @override
  State<SourcesList> createState() => _SourcesListState();
}

class _SourcesListState extends State<SourcesList> {
  List questions = [
    "Source 1",
    "Source 2",
    "Source 3",
    "Source 4",
    "Source 5",
    "Source 6",
    "Source 7",
    "Source 8",
    "Source 9",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(questions[index]),
                subtitle: Text("Source type : $index"),
                trailing: const Icon(Icons.chevron_right),
                tileColor: const Color.fromARGB(255, 238, 238, 238),
                onTap: () {
                  print("kaynak görüntüleniyor");
                },
              ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: questions.length),
    );
  }
}
