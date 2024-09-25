import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions_data.dart';
import 'package:quiz_app/reuseable_button/answer_button.dart';

class questions extends StatefulWidget {
  const questions({super.key});

  @override
  State<questions> createState() => _questionsState();
}

class _questionsState extends State<questions> {
  @override
  Widget build(BuildContext context) {

    final currentQuestion = question[0];

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

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(currentQuestion.text, style: TextStyle(color: Colors.white, fontSize: 20),),
                SizedBox(height: 30),


                ...currentQuestion.answers.map((answer){
                  return AnswerButton(answerText: answer, ontap: (){});
                })


              ],
            )
        ));
  }
}
