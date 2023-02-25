import 'package:flutter/material.dart';
import 'package:my_dairy/widgets/dairy_item.dart';
import '../models/model.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<DairyModels> dataDairy = [
    DairyModels(date: "24-20-2022", title: "Belajar", notes: "Belajar Flutter"),
    DairyModels(date: "25-20-2022", title: "Secret", notes: "Penagum Rahasia"),
    DairyModels(date: "25-20-2022", title: "Main", notes: "Main ke pantai"),
  ];

  void addDairy(DairyModels dary) {
    dataDairy.add(dary);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              final dairy = dataDairy.elementAt(index);
              return DairyItem(dairy: dairy);
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
            itemCount: dataDairy.length),
      ),
    );
  }
}
