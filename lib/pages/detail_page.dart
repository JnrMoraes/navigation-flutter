// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  String param;
  DetailPage({
    Key? key,
    required this.param,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var param = ModalRoute.of(context)?.settings.arguments as String?;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Title'),
      ),
      body: Center(
        child: Text(param),
      ),
    );
  }
}
