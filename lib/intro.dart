import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';

class intro extends StatelessWidget {
  const intro(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
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

          )
        ),

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image.asset(
              "assets/images/quiz-app.png",
              width: 200,
            ),
            SizedBox(height: 50),
            Text(
              "Flutter",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 80,),
            OutlinedButton.icon(onPressed: startQuiz,

                style: OutlinedButton.styleFrom(foregroundColor: Colors.white),

                icon: const Icon(Icons.arrow_right),
              label: const Text("Start Quiz"),)

          ],
        ),
      ),

    );
  }
}
