import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(EnerTrak());
}

class EnerTrak extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<EnerTrak> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'questionText': "what's your name ?",
        'answer': [
          {'text': 'Aryan', 'score': 10},
          {'text': 'Maria', 'score': 8},
          {'text': 'Anas', 'score': 6},
          {'text': 'Kani', 'score': 4},
        ],
      },
      {
        'questionText': "what's your favourite color ?",
        'answer': [
          {'text': 'Red', 'score': 10},
          {'text': 'Blue', 'score': 8},
          {'text': 'Yellow', 'score': 6},
          {'text': 'Black', 'score': 4},
        ],
      },
      {
        'questionText': "what's your house color ?",
        'answer': [
          {'text': 'Red', 'score': 10},
          {'text': 'Blue', 'score': 8},
          {'text': 'Yellow', 'score': 6},
          {'text': 'Black', 'score': 4},
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
