import 'package:flutter/material.dart';
import 'package:flutter_assignment/quiz.dart';
import 'package:flutter_assignment/result.dart';

void main(List<String> args) {
  runApp(const TriviaApp());
}

class TriviaApp extends StatefulWidget {
  const TriviaApp({Key? key}) : super(key: key);

  @override
  State<TriviaApp> createState() => _TriviaAppState();
}

class _TriviaAppState extends State<TriviaApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'dolphin', 'score': 30},
        {'text': 'dog', 'score': 20},
        {'text': 'cat', 'score': 10},
      ]
    },
    {
      'questionText': 'What\'s your favorite Color?',
      'answers': [
        {'text': 'blue', 'score': 30},
        {'text': 'orange', 'score': 20},
        {'text': 'green', 'score': 10},
      ]
    },
  ];

  int _questionIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex++;
      _totalScore += score;
    });
  }

  void _reset() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Trivia Game"),
        ),
        body: _questionIndex < _questions.length
            ? Quizz(
                questions: _questions,
                questionIndex: _questionIndex,
                onAnsweredQuestionHandler: _answerQuestion,
              )
            : Result(
                totalScore: _totalScore,
                resetHandler: _reset,
              ),
      ),
    );
  }
}
