import 'package:first_app/constant/navigate_to.dart';
import 'package:first_app/screens/exams/testList.dart';
import 'package:flutter/material.dart';

class Unitlist extends StatefulWidget {
  const Unitlist({super.key});

  @override
  State<Unitlist> createState() => _UnitlistState();
}

class _UnitlistState extends State<Unitlist> {
  List units = [
    "Ünite 1",
    "Ünite 2",
    "Ünite 3",
    "Ünite 4",
    "Ünite 5",
    "Ünite 6",
    "Ünite 7",
    "Ünite 8",
    "Ünite 9",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(units[index]),
                subtitle: Text("Ünite adı : $index"),
                trailing: const Icon(Icons.chevron_right),
                tileColor: const Color.fromARGB(255, 238, 238, 238),
                onTap: () {
                  navigateTo(context, TestList());
                },
              ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: units.length),
    );
  }
}
