import 'package:flutter/material.dart';
import 'package:fruit_and_vegetable/classes/quiz.dart';
import 'package:fruit_and_vegetable/customs/myQuizText.dart';

class Quiz extends StatelessWidget {
  final List<Question> questions;
  final int questionIndex;
  final Function answerQuestion;
  final List<Option> allOptions;

  const Quiz(
      {Key? key,
      required this.questions,
      required this.answerQuestion,
      required this.questionIndex,
      required this.allOptions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          MyTextQuiz(text1: questions[questionIndex].question),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: allOptions.length,
                itemBuilder: ((context, index) {
                  return TextButton(
                      onPressed: () {
                        if (allOptions[index].isCorrect == true) {
                          answerQuestion(1);
                        } else {
                          answerQuestion(0);
                        }
                      },
                      child: MyTextQuiz(text1: allOptions[index].text));
                })),
          )
        ],
      ),
    ); //Column
  }
}
