import 'package:flutter/material.dart';
import 'package:quiz_apps/widget_button.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          const SizedBox(height: 30),
          const Center(
            child: Text('Apa nama widget untuk\nmembuat button ? ',
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
