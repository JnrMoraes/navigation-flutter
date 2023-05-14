import 'package:flutter/material.dart';
import 'package:navigation_two/pages/detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed('/detail', arguments: 'Param X');
              },
              child: const Text('Go to Detail'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: const RouteSettings(
                        // name: '/detail', arguments: 'Paramns send by route'
                        ),
                    builder: (_) => DetailPage(param: 'Param by home page'),
                  ),
                );
              },
              child: const Text('Go to Detail by route'),
            ),
             TextButton(
              onPressed: () async {
               var message =  await Navigator.of(context)
                    .pushNamed('/detail2', arguments: 'Param X');
                    print('Message retrieved by navigation:-> $message');
              },
              child: const Text('Go to Detail two and wait'),
            ),
          ],
        ),
      ),
    );
  }
}
