import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetHandler;
  const Result({Key? key, required this.totalScore, required this.resetHandler})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.only(top: 20),
        width: double.infinity,
        child: Text(
          "Finished with total score of: $totalScore",
          style: const TextStyle(
            fontSize: 25
          ),
          textAlign: TextAlign.center,
        ),
      ),
      const SizedBox(height: 40,),
      ElevatedButton(
        onPressed: resetHandler,
        child: const Text("Reset"),
      ),
    ]);
  }
}
