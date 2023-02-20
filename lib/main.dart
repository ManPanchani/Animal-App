import 'package:animal_app/screens/home_page.dart';
import 'package:animal_app/screens/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const HomePage(),
        "SecondPage": (context) => const SecondPage(),
      },
    ),
  );
}
