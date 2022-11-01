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
  var questions = ['好きなラーメンは？', '好きなパスタは？', '好きな寿司は？'];
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex++;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('初めてのflutter'),
        ),
        body: Column(children: const [
          Text('the question'),
          ElevatedButton(onPressed: null, child: Text('answer1')),
          ElevatedButton(onPressed: null, child: Text('answer1')),
          ElevatedButton(onPressed: null, child: Text('answer1')),
        ]),
      ),
    );
  }
}
