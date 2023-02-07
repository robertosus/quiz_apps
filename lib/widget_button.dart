// ignore_for_file: implementation_imports

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quiz_apps/description.dart';

class buttonAnswer extends StatefulWidget {
  final String answer;
  const buttonAnswer({super.key, required this.answer});

  @override
  State<buttonAnswer> createState() => _buttonAnswerState();
}

class _buttonAnswerState extends State<buttonAnswer> {
  bool isActive = false;
  bool wrongAnswer = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: isActive
                ? (wrongAnswer ? Colors.red : Colors.blue)
                : Colors.grey,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            minimumSize:
                Size(MediaQuery.of(context).size.width - (2 * 24), 50)),
        onPressed: () {
          setState(() {
            isActive = !isActive;
          });
          if (wrongAnswer == true) {
            Timer(Duration(seconds: 1), () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => descriptionPage(),
                  ));
            });
          }
        },
        child:
            Text(widget.answer, style: TextStyle(fontWeight: FontWeight.w700)));
  }
}
