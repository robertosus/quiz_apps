import 'package:flutter/material.dart';
import 'package:quiz_apps/pages/home_page.dart';
import 'package:quiz_apps/widget_button.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}
