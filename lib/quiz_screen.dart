import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'start_screen.dart';
import 'result_screen.dart';
import 'package:quiz_app/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  Widget? activeScreen;
  void restartQuiz () {
    setState(() {
      selectedAnswers = [];
    });
    activeScreen = StartScreen(switchScreen);
  }

  void switchScreen(){
      setState(() {
        activeScreen = QuestionScreen(onSelectedAnswer: chooseAnswer,);
      });
  }
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length){

      setState(() {
        activeScreen = ResultScreen(chosenAnswers: selectedAnswers,onRestart: restartQuiz ,);
      });
    }
  }
  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child:activeScreen,
        ),
      ),
    );
  }
}
