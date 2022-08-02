import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  static const String _myGreeting = "Hi there!";
  String _myVar = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello world',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_myGreeting),
        ),
        body: SafeArea(
          child: ListView(children: [
            Image.asset('assets/flutter.png',
                width: 150, height: 150, fit: BoxFit.fitHeight),
            Image.network(
                'https://www.lawcabs.ac.uk/sites/default/files/styles/large/public/2021-10/UCLAN logo.png',
                width: 150,
                height: 150,
                fit: BoxFit.fitHeight),
            const Icon(
              Icons.access_alarm_outlined,
              color: Colors.red,
              size: 200,
            ),
            FloatingActionButton(
              onPressed: () {
                print(
                    "This is the onPressed method for the Floating Action Button");
                _myVar = "Pressed!";
              },
              backgroundColor: Colors.green,
              tooltip: 'Click me',
              child: const Icon(Icons.navigation),
            ),
            Text(_myVar),
          ]),
        ),
      ),
    );
  }
}
