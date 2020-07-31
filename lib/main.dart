import 'package:flutter/material.dart';
import './qna.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Olympiad',
      theme: ThemeData(),
      home: QnA(),
    );
  }
}
