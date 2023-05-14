import 'package:flutter/material.dart';
import 'package:navigation_two/pages/detail_page.dart';
import 'package:navigation_two/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (_) => const HomePage(),
        '/detail': (_) => const DetailPage(),
      },
    );
  }
}
