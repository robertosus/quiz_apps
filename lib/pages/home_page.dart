import 'package:flutter/material.dart';
import 'package:quiz_apps/models/question.dart';
import 'package:quiz_apps/widget_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // var valueQuestions = Provider.of<QuestionProvider>(context);
    // valueQuestions.getQuestion();
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          const SizedBox(height: 30),
          Center(
            child: Text(sample_data[0]["question"],
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),
          ),
          const SizedBox(height: 30),
          Image.asset('assets/example.png', width: 150),
          const SizedBox(height: 30),
          WidgetButton()
        ]),
      ),
    );
  }
}
