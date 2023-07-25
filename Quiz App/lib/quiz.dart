import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final Function answerQuestion;
  final List<Map<String, Object>> questions;

  Quiz(
      {required this.answerQuestion,
      required this.questionIndex,
      required this.questions});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        (questions[questionIndex]['questionText'] as String),
      ),
      ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(
          () => answerQuestion(answer['score']),
          answer['text'].toString(),
          answer['score'].toString(),
        );
      }).toList(),
    ]);
  }
}
