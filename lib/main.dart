import 'package:flutter/material.dart';
import 'home-screen.dart';
import 'third_screen.dart';
import 'second_screen.dart';
import 'four_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home: HomeScreen(),
      routes: {
        'second': (context) => SecondPage(),
        'third': (context) => ThirdPage(),
        'four': (context) => FourPage(),
      },
    );
  }
}
