import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback onAnsweredHandler;
  final String answerText;
  const Answer({ Key? key,required this.onAnsweredHandler,required this.answerText }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Center(child: Text(answerText)),
      onPressed: onAnsweredHandler,
    );
  }
}