import 'package:flutter/material.dart';
import 'package:snekcart/pages/homepage.dart';
import 'package:snekcart/pages/intropage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Intropage(),
      routes: {
        'homepage':(context) => Homepage(),
      },
    );
  }
}