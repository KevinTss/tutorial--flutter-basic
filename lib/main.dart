import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: const MyApp(),
      theme: themeData,
    ));

final ThemeData themeData = ThemeData(
  canvasColor: Colors.lightGreenAccent,
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.redAccent),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
            child: const Text("Click"),
            onPressed: () {
              Navigator.push(context, PageTwo());
            }),
      ),
    );
  }
}

class PageTwo extends MaterialPageRoute {
  PageTwo()
      : super(builder: (BuildContext context) {
          return MaterialApp(
              home: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Theme.of(context).canvasColor,
                    elevation: 1.0,
                  ),
                  body: Center(
                    child: TextButton(
                      child: const Text('hello'),
                      onPressed: () {
                        Navigator.push(context, PageThree());
                      },
                    ),
                  )));
        });
}

class PageThree extends MaterialPageRoute {
  PageThree()
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
                title: const Text('Last page'),
                backgroundColor: Theme.of(context).colorScheme.secondary,
                elevation: 2.0,
                actions: <Widget>[
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close))
                ]),
            body: Center(
                child: MaterialButton(
                    onPressed: () {
                      Navigator.popUntil(context,
                          ModalRoute.withName(Navigator.defaultRouteName));
                    },
                    child: const Text('Go home!'))),
          );
        });
}
