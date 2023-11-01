import 'package:flutter/material.dart';
import 'package:project6/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'নগদ',

      home:  MyHomePage(),
    );
  }
}



