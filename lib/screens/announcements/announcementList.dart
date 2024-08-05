import 'package:first_app/constant/navigate_to.dart';
import 'package:first_app/screens/announcements/AnnouncementPage.dart';
import 'package:first_app/screens/exams/testList.dart';
import 'package:flutter/material.dart';

class AnnouncementList extends StatefulWidget {
  const AnnouncementList({super.key});

  @override
  State<AnnouncementList> createState() => _AnnouncementListState();
}

class _AnnouncementListState extends State<AnnouncementList> {
  List units = [
    "Duyuru başlığı 1",
    "Duyuru başlığı 2",
    "Duyuru başlığı 3",
    "Duyuru başlığı 4",
    "Duyuru başlığı 5",
    "Duyuru başlığı 6",
    "Duyuru başlığı 7",
    "Duyuru başlığı 8",
    "Duyuru başlığı 9",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(units[index]),
                subtitle: Text("Duyuru başlığı : $index"),
                trailing: const Icon(Icons.chevron_right),
                tileColor: const Color.fromARGB(255, 238, 238, 238),
                onTap: () {
                  navigateTo(context, AnnouncementPage());
                },
              ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: units.length),
    );
  }
}
