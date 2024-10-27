import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data){
            return Row(children: [
              Container(
                height: 100,
                padding: EdgeInsets.only(left: 33),
                child: Text(
                  ((data['question_index'] as int) + 1).toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 40, left: 20, bottom: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        data['correct_answer'] as String,
                        style:
                            TextStyle(color: Colors.cyanAccent, fontSize: 15),
                      ),
                      const Text(
                        "Your answer was ",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      Text(
                        data['user_answer'] as String,
                        style: TextStyle(color: Colors.amberAccent, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              )
            ],);
          }).toList()
        ),
      ),
    );
  }
}
