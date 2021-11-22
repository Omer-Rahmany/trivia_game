import 'package:flutter/material.dart';
import 'package:flutter_assignment/answer.dart';
import 'package:flutter_assignment/question.dart';

class Quizz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function onAnsweredQuestionHandler;

  const Quizz(
      {Key? key,
      required this.questions,
      required this.questionIndex,
      required this.onAnsweredQuestionHandler})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [Question(questionText: questions[questionIndex]['questionText'] as String,),
        ...(questions[questionIndex]["answers"] as List).map((answer) =>  Answer(answerText: answer["text"], onAnsweredHandler: () { 
          onAnsweredQuestionHandler(answer["score"]);
         },)).toList(),
        ],
    );
  }
}
