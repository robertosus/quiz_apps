import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quiz_apps/description.dart';

class button extends StatefulWidget {
  const button({super.key});

  @override
  State<button> createState() => _buttonState();
}

class _buttonState extends State<button> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    AnswerButton(int index, String answer) {
      return ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: selectedIndex == index
                  ? (index == 0 ? Colors.blue : Colors.red)
                  : Colors.grey,
              fixedSize:
                  Size(MediaQuery.of(context).size.width - (2 * 24), 50)),
          onPressed: () {
            setState(() {
              selectedIndex = index;
              if (index != 0) {
                Timer(Duration(seconds: 1), () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => descriptionPage(),
                      ));
                });
              }
            });
          },
          child: Text(
            answer,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          ));
    }

    return Column(
      children: [
        AnswerButton(0, 'Flat Button'),
        SizedBox(height: 30),
        AnswerButton(1, 'Raised Button'),
        SizedBox(height: 30),
        AnswerButton(2, 'Text Button'),
        SizedBox(height: 30),
        AnswerButton(3, 'Column'),
      ],
    );
  }
}
