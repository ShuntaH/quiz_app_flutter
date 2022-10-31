import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('初めてのflutter'),
        ),
        body: Column(children: const [
          Text('the question'),
          ElevatedButton(onPressed: null, child: Text('イタリアン')),
          ElevatedButton(onPressed: null, child: Text('中華')),
          ElevatedButton(onPressed: null, child: Text('割烹')),
        ]),
      ),
    );
  }
}
