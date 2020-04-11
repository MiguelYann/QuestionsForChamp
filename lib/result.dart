import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String result;

  Result({this.result});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(result));
  }
}
