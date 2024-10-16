import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("You have answered X out of Y correctly."),
          SizedBox(height: 30),
          Text("Answers and Questions"),
          TextButton(onPressed: (){}, child: Text("Restart Quiz"))
        ],
      ),
    );
  }
}
