import 'package:flutter/material.dart';

import 'start_screen.dart'; // Correct the import statement for 'start_screen.dart'
import 'questions_screen.dart'; // Correct the import statement for 'questions_screen.dart'
import 'package:adv_basics/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen'; // Correct the variable name

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen'; // Correct the variable name
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'start-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidget =
        activeScreen == 'start-screen' // Correct the variable name
            ? StartScreen(switchScreen)
            : QuestionScreen(onSelectAnswer: chooseAnswer);
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
