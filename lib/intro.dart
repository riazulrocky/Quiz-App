import 'package:flutter/material.dart';

class intro extends StatefulWidget {
  const intro({super.key});

  @override
  State<intro> createState() => _introState();
}

class _introState extends State<intro> {
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
            Image.asset("assets/images/quiz-app.png", width: 200,)
            SizedBox(height: 10,)
            // Text(data)
            // OutlinedButton(onPressed: onPressed, child: child)
          ],
        ),
      ),

    );
  }
}
