import 'package:flutter/material.dart';

import 'package:fruit_and_vegetable/classes/quiz.dart';

import 'package:fruit_and_vegetable/customs/myappbar.dart';

import 'package:fruit_and_vegetable/customs/resultContainer.dart';

import '../customs/columnQuiz.dart';

class MyQuiz extends StatefulWidget {
  const MyQuiz({super.key});

  @override
  State<MyQuiz> createState() => _MyQuizState();
}

class _MyQuizState extends State<MyQuiz> {
  var _questionIndex = 0;
  var _totalScore = 0;

  List<Option> getOptions() {
    return questions
        .where((ques) => ques.question == questions[_questionIndex].question)
        .expand((ques) => ques.opt)
        .toList();
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: MyAppBar(Colors.yellow, 'Quiz'),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: _questionIndex < questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: questions,
                allOptions: getOptions(),
              ) //Quiz
            : MyResult(resetHandler: _resetQuiz, resultScore: _totalScore),
      ), //Padding
    );
  }
}
