import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: BasicPage(),
    );
  }
}

class BasicPage extends StatelessWidget {
  const BasicPage({Key? key}) : super(key: key);

  @override
  build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: const Text('App name'),
      ),
      body: simpleText('hello wolrd'),
    );
  }
}

simpleText(text) {
  return Text(text, style: const TextStyle(color: Color(0xff1d254f)));
}
