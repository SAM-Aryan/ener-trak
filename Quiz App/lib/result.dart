import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    var resultText;
    if (resultScore <= 8) {
      resultText = "You are a dumbass";
    } else if (resultScore <= 12) {
      resultText = "You are a bigger dumbass";
    } else if (resultScore <= 16) {
      resultText = "You are the biggest dumbass";
    } else {
      resultText = "You are a smaller dumbass";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text("Restart Quiz ?"),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
