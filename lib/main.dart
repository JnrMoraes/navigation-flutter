import 'package:flutter/material.dart';
import 'package:navigation_two/core/navigator_custom_observer.dart';
import 'package:navigation_two/pages/detail_page.dart';
import 'package:navigation_two/pages/detail_two_page.dart';
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
      navigatorObservers: [
        NavigatorCustomObserver(),
      ],
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(
            builder: (context) => const HomePage(),
          );
        }
        if (settings.name == '/detail') {
          String param = settings.arguments as String ?? 'not sent param';
          return MaterialPageRoute(
            builder: (context) => DetailPage(
              param: param,
            ),
          );
        }
        return null;
      },

      routes: {
        '/': (_) => const HomePage(),
        '/detail2': (_) => const DetailTwoPage(),
      },
    );
  }
}
