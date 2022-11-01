import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/question.dart';
import './main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['好きなラーメンは？', '好きなパスタは？', '好きな寿司は？'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('初めてのflutter'),
        ),
        body: Column(children: [
          Question(questionText: questions[_questionIndex],),
          ElevatedButton(
              onPressed: _answerQuestion, child: const Text('answer1')),
          ElevatedButton(
              onPressed: _answerQuestion, child: const Text('answer1')),
          ElevatedButton(
              onPressed: _answerQuestion, child: const Text('answer1')),
        ]),
      ),
    );
  }
}
