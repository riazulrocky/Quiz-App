import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';

import 'data/questions_data.dart';
import 'intro.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  List<String> selectAnswers = [];

  var activeScreen = "intro-screen";

  void switchScreen(){
    setState(() {
      activeScreen = "question-screen";
    });
  }

  void chooseAnswer(String answer){
    selectAnswers.add(answer);

    if(selectAnswers.length == question.length){
      selectAnswers = [];
      setState(() {
        activeScreen == "intro-screen";
      });
    }
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

              child: activeScreen == "intro-screen"? intro(switchScreen) : questions(onSelectAnswer: chooseAnswer),

            )));;
  }
}
