import 'package:flutter/cupertino.dart';

class Question {
  String question;
  List<Option> opt;

  Question({
    required this.question,
    required this.opt,
  });
}

class Option {
  final String text;
  final bool isCorrect;

  Option({required this.text, required this.isCorrect});
}

final questions = [
  Question(question: 'What color is a salad?', opt: [
    Option(text: 'Green', isCorrect: true),
    Option(text: 'Brown', isCorrect: false),
    Option(text: 'Orange', isCorrect: false)
  ]),
  Question(question: 'Is an potato a fruit?', opt: [
    Option(text: 'No', isCorrect: true),
    Option(text: 'Yes', isCorrect: false),
    Option(text: 'None of the above', isCorrect: false)
  ]),
  Question(question: 'What vitams does an apple have?', opt: [
    Option(text: 'C and A', isCorrect: true),
    Option(text: 'C and D', isCorrect: false),
    Option(text: 'B9 and A', isCorrect: false)
  ]),
];
