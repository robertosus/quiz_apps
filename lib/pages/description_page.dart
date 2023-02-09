import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          const Center(
            child: Text('Apa nama widget untuk\nmembuat button ? ',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),
          ),
          SizedBox(height: 30),
          Center(child: Image.asset('assets/example.png', width: 150)),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text('Flat Button',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                )),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
                textAlign: TextAlign.justify,
                'Use text buttons on toolbars, in dialogs, or inline with other content but offset from that content with padding so that the buttons presence is obvious. Text buttons do not have visible borders and must therefore rely on their position relative to other content for context. In dialogs and cards, they should be grouped together in one of the bottom corners. Avoid using text buttons where they would blend in with other content, for example in the middle of lists.'),
          ),
          SizedBox(height: 24),
          Center(
              child: ElevatedButton(
                  onPressed: () {}, child: Text('Next Question')))
        ],
      )),
    );
  }
}
