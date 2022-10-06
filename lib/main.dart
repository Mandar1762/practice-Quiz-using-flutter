import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'what is favourite color? ',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'red', 'score': 5},
        {'text': 'green', 'score': 3},
        {'text': 'white', 'score': 1},
      ]
    },
    {
      'questionText': 'what is favourite animal? ',
      'answers': [
        {'text': 'rabbit', 'score': 3},
        {'text': 'snake', 'score': 11},
        {'text': 'elephant', 'score': 5},
        {'text': 'lion', 'score': 9},
      ]
    },
    {
      'questionText': 'what is favourite instructor? ',
      'answers': [
        {'text': 'mandar', 'score': 1},
        {'text': 'mohish', 'score': 10},
        {'text': 'ajinkya', 'score': 3},
        {'text': 'aduu', 'score': 2},
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _reserQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _reserQuiz)),
    );
  }
}
