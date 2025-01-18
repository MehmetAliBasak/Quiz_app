import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary/questions_summary.dart';
class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers, required this.onRestart});
  final List<String> chosenAnswers;
  final Function() onRestart;

  List<Map<String,Object>> getSummaryData() {
    List<Map<String,Object>> summary = [];
    for(int i = 0 ; i<questions.length; i++ ) {
      summary.add({
        "question_index" : i+1,
        "question" : questions[i].question,
        "correct_answer" : questions[i].answers[0],
        "user_answer" : chosenAnswers[i],

      });
    }
    return summary;
  }
  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data){
      return data["correct_answer"] == data["user_answer"];
    }).length;
    return SizedBox(
      width: double.maxFinite,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("You answered $numCorrectQuestions out of $numTotalQuestions question correctly!",textAlign: TextAlign.center,style: const TextStyle(
                color: Colors.white,fontSize: 20
            ),),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData: summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              icon: const Icon(Icons.refresh),
              onPressed: onRestart,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white
              ),
              label: const Text("Restart Quiz!"),
            )
          ],
        ),
      ),
    );
  }
}


