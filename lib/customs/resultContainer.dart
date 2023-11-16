import 'package:flutter/material.dart';

import 'package:fruit_and_vegetable/classes/quiz.dart';
import 'package:fruit_and_vegetable/customs/myQuizText.dart';

class MyResult extends StatelessWidget {
  MyResult({required this.resultScore, required this.resetHandler, super.key});
  final int resultScore;
  final Function resetHandler;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          MyTextQuiz(text1: '$resultScore/${questions.length}'),
          const SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: () {
                resetHandler();
              },
              child: const Text('Reset quiz'))
        ],
      ),
    );
  }
}
