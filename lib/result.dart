import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String result;
  final Function reset;

  String get resultText {
    return 'You have Done $result';
  }

  Result(this.reset, {this.result});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Center(
              child: Text(
                result,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
              )),
          RaisedButton(
            color: Colors.amberAccent,
            child: Text(
              'Restart Quiz',
            ),
            onPressed: reset,
          )
        ],
      ),
    );
  }
}
