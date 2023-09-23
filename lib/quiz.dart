import 'package:flutter/material.dart';

import 'start_screen.dart'; // Correct the import statement for 'start_screen.dart'
import 'questions_screen.dart'; // Correct the import statement for 'questions_screen.dart'

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen'; // Correct the variable name

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen'; // Correct the variable name
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidget =
        activeScreen == 'start-screen' // Correct the variable name
            ? StartScreen(switchScreen)
            : const QuestionScreen();
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 64, 48, 91),
              Color.fromARGB(255, 64, 48, 91),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
