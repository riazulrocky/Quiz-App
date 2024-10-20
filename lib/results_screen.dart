import 'package:flutter/material.dart';
import 'package:quiz_app/question_summary.dart';

import 'data/questions_data.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData(){
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++){
      summary.add({
        'question_index' : i,
        'question' : question[i].text,
        'correct_answer' : question[i].answers[0],
        'user_answer' : chosenAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = question.length;
    final numCorrectAnswers = summaryData.where((data){
      return data["user_answer"] == data["correct_answer"];
    }).length;


    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.deepPurpleAccent.shade200,
              Colors.deepPurple.shade900
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You have answered $numCorrectAnswers out of $numTotalQuestions correctly"),
            const SizedBox(height: 30,),

            QuestionSummary(summaryData: summaryData),

            const SizedBox(height: 30,),
            TextButton(onPressed: (){}, child: const Text("Restart Quiz"))
          ],
        ),
      ),
    );
  }
}