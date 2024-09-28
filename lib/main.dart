import 'package:flutter/material.dart';
import 'package:quiz_app/intro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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

          child: const intro(),

    )));
  }
}
