import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _isQuizzOver = false;
  var _resultScore = 0;

  final questions = const [
    {
      "questionText": "Q1",
      "answers": [
        {"answerText": "first", "score": 0},
        {"answerText": "second", "score": 3},
        {"answerText": "third", "score": 5},
      ]
    },
    {
      "questionText": "Q2",
      "answers": [
        {"answerText": "second", "score": 0},
        {"answerText": "third", "score": 3},
        {"answerText": "first", "score": 5},
      ]
    },
    {
      "questionText": "Q3",
      "answers": [
        {"answerText": "first", "score": 0},
        {"answerText": "third", "score": 3},
        {"answerText": "second", "score": 5},
      ]
    },
  ];

  void _answerQuestion(int score) {
    if (_questionIndex == questions.length - 1) {
      setState(() => _isQuizzOver = true);
    } else {
      setState(() => _questionIndex = _questionIndex + 1);
    }
    _resultScore += score;
    print(_resultScore);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("the app bar"),
        ),
        body: _isQuizzOver
            ? Result(resultScore: _resultScore)
            : Quiz(
                questions: questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion),
      ),
    );
  }
}
