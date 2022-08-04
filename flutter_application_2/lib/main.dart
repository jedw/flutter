import 'package:flutter/material.dart';
import 'dart:developer' as developer;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Instagram Demo', home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: const Text("Instagram")),
      body: Row(
        children: [
          Container(width: screenWidth / 3, height: 100, color: Colors.blue),
          Container(width: screenWidth / 3, height: 100, color: Colors.red),
          Container(width: screenWidth / 3, height: 100, color: Colors.green),
        ],
      ),
    ));
  }
}
