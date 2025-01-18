import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/quiz-icon.png",
              width: 300,
              color: Colors.white,
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Flutter Quiz App!",
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            OutlinedButton.icon(
              onPressed: () {
                startQuiz();
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              label: const Text("Star Quiz!"),
              icon: const Icon(Icons.arrow_right_alt),
            ),
          ],
        ),
      );
  }
}
