import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions_data.dart';
import 'package:quiz_app/reuseable_button/answer_button.dart';

class questions extends StatefulWidget {
  const questions({super.key});

  @override
  State<questions> createState() => _questionsState();
}

class _questionsState extends State<questions> {

  var currentQuestionIndex = 0;
  void answerQuestion(){

    setState(() {
      currentQuestionIndex++;
    });

  }

  @override
  Widget build(BuildContext context) {

    final currentQuestion = question[currentQuestionIndex];

    return Scaffold(

        body: Container(

            width: double.infinity,

            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.deepPurpleAccent.shade200,
                Colors.deepPurple.shade900
              ],

                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight

              ),
            ),
            child: Container(
              margin: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    currentQuestion.text,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  ...currentQuestion.getShuffledAnswers().map((answer) {
                    return AnswerButton(answerText: answer, ontap: answerQuestion);
                  })
                ],
              ),
            )
        ));
  }
}
