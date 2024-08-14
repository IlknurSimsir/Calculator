import 'package:first_app/components/appBarDesign.dart';
import 'package:first_app/screens/announcements/AnnouncementPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final announcementProvider = StateProvider<List<String>>((ref) => []);

class AnnouncementList extends ConsumerStatefulWidget {
  const AnnouncementList({super.key});

  @override
  ConsumerState<AnnouncementList> createState() => _AnnouncementListState();
}

class _AnnouncementListState extends ConsumerState<AnnouncementList> {
  List<Map<String, String>> announcements = [
    {
      "title": "Duyuru başlığı 1",
      "content": "Duyuru içeriği 1",
      "date": "2024-08-12"
    },
    {
      "title": "Duyuru başlığı 2",
      "content": "Duyuru içeriği 2",
      "date": "2024-08-11"
    },
    {
      "title": "Duyuru başlığı 3",
      "content": "Duyuru içeriği 3",
      "date": "2024-08-10"
    },
    {
      "title": "Duyuru başlığı 4",
      "content": "Duyuru içeriği 4",
      "date": "2024-08-09"
    },
    {
      "title": "Duyuru başlığı 5",
      "content": "Duyuru içeriği 5",
      "date": "2024-08-08"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDesign(),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(announcements[index]["title"]!),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(announcements[index]["content"]!),
              Text("Tarih: ${announcements[index]["date"]!}"),
            ],
          ),
          trailing: const Icon(Icons.chevron_right),
          tileColor: const Color.fromARGB(255, 238, 238, 238),
          onTap: () {
            ref.read(announcementProvider.notifier).state = "flutter";
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AnnouncementPage(),
              ),
            );
          },
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: announcements.length,
      ),
    );
  }
}
