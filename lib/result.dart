import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it';
    if (resultScore <= 8) {
      resultText = 'You and awesome!';
    } else if (resultScore <= 12) {
      resultText = 'Not bad';
    } else if (resultScore <= 18) {
      resultText = 'Not bad';
    } else {
      resultText = 'you are so bad!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(onPressed: resetHandler, child: Text('Restart Test')),
        ],
      ),
    );
  }
}
