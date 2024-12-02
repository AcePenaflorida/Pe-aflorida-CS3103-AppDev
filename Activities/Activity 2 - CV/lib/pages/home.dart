import 'package:flutter/material.dart';
import 'package:tutorial_flutter/pages/appdrawer.dart';
import 'package:tutorial_flutter/pages/body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      body: const Body(),
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text(
          "My CV",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        elevation: 150,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
    );
  }
}
