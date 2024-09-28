import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';

import 'intro.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  var activeScreen = "intro-screen";

  void switchScreen(){
    setState(() {
      activeScreen = "question-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(

            body: Container(

              width: double.infinity,

              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.deepPurpleAccent.shade200,
                  Colors.deepPurple.shade900
                ],

                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,

                ),
              ),

              child: activeScreen == "start-screen"? intro(switchScreen) : const questions(),

            )));;
  }
}
