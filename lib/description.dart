import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class descriptionPage extends StatelessWidget {
  const descriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Text(
          'Description Page',
          style: TextStyle(fontSize: 20),
        )),
      ),
    );
  }
}
