import 'package:flutter/material.dart';

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
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex++;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['好きなラーメンは？', '好きなパスタは？', '好きな寿司は？'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('初めてのflutter'),
        ),
        body: Column(children: const [
          Text(
            questions[questionIndex],
          ),
          ElevatedButton(onPressed: answerQuestion, child: Text('answer1')),
          ElevatedButton(onPressed: answerQuestion, child: Text('answer1')),
          ElevatedButton(onPressed: answerQuestion, child: Text('answer1')),
        ]),
      ),
    );
  }
}
