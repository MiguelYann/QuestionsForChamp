import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handler;
  final String answerText;

  Answer(this.handler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: handler,
        color: Colors.deepPurpleAccent,
      ),
    );
  }
}
