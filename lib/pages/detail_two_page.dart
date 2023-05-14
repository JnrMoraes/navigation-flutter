import 'package:flutter/material.dart';

class DetailTwoPage extends StatelessWidget {
  const DetailTwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageTwo'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pop('Page two param!');
          },
          child: const Text('Back'),
        ),
      ),
    );
  }
}
