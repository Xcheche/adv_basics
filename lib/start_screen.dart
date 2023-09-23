import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Colors.white, // Issue 1: 'color' should be 'colorBlendMode'
            colorBlendMode: BlendMode
                .modulate, // Use 'colorBlendMode' to apply color to the image
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Learn Flutter the fun way',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed:
                startQuiz, // Issue 2: You had a comma here, should be a function call
            style: OutlinedButton.styleFrom(
              primary:
                  Colors.white, // Use 'primary' instead of 'foregroundColor'
              shape: const StadiumBorder(),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
