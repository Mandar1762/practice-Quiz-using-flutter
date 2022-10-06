import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'you did it!';
    if (resultScore <= 8) {
      resultText = "you are awesome and innocent!";
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable';
    } else if (resultScore <= 16) {
      resultText = 'you are ...Strange?!';
    } else {
      resultText = 'you are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return  Center(
      child:Column(
        children: <Widget>[
       Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      ElevatedButton(child: Text('Restart Quiz!'), onPressed:resetHandler,)
      ],
    ),
    );
  }
}
