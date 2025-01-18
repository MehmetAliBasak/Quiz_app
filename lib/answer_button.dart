import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key,required this.answer,required this.onTap,});
  final String answer;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 40,
          ),
            backgroundColor: Color.fromARGB(255, 33, 1, 95),
            foregroundColor: Colors.white,

          ),
          child:Text(answer),
      ),
    );

  }
}
