import 'package:flutter/material.dart';
import 'package:quiz_app/questions_summary/question_identifier.dart';
class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key,required this.itemData});
  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer = itemData["user_answer"] == itemData["correct_answer"];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(questionIndex: itemData["question_index"] as int, isCorrectAnswer: isCorrectAnswer),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(itemData["question"] as String,style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),),
              const SizedBox(
                height: 5,
              ),
              Text(itemData["user_answer"] as String,style: const TextStyle(
                  color: Color.fromARGB(255, 249, 133, 241),
                  fontSize: 12,
              ),),
              const SizedBox(
                height: 3,
              ),
              Text(itemData["correct_answer"].toString(),style: const TextStyle(
                  color: Color.fromARGB(255, 150, 198, 241),
                  fontSize: 12,
              ),),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        )
      ],
    );
  }
}
