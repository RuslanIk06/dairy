import 'package:flutter/material.dart';
import 'package:my_dairy/pages/add_dairy_page.dart';
import 'package:my_dairy/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        AddDairyPage.routeName: (context) => const AddDairyPage(),
      },
    );
  }
}
