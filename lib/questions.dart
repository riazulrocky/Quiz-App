import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions_data.dart';
import 'package:quiz_app/reuseable_button/answer_button.dart';

class Questions extends StatefulWidget {
  const Questions({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {



  var currentQuestionIndex = 0;
  void answerQuestion(String selectAnswer){
    widget.onSelectAnswer(selectAnswer);
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
              margin: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    currentQuestion.text,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 30),

                  ...currentQuestion.getShuffledAnswers().map((answer) {
                    return AnswerButton(answerText: answer, ontap: (){
                      answerQuestion(answer);
                    });
                  })
                ],
              ),
            )
        )
    );
  }
}
