import 'package:flutter/material.dart';
class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({super.key, required this.questionIndex, required this.isCorrectAnswer});
  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: isCorrectAnswer ? const Color.fromARGB(255, 150, 198, 241) : const Color.fromARGB(255, 249, 133, 241)
      ),
      child: Text(
        "$questionIndex",
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
