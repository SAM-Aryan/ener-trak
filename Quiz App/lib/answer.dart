import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerString;
  final String answerScore;
  Answer(this.selectHandler, this.answerString, this.answerScore);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          child: Text(answerString),
          onPressed: selectHandler,
        ));
  }
}
