import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final String question;
  final List<String> answers;
  final Function answerQuestion;

  const Quiz(
      {@required this.question,
      @required this.answers,
      @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Question(question),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ...answers.map((answer) => Answer(answerQuestion, answer)).toList()
          ],
        )
      ],
    );
  }
}
