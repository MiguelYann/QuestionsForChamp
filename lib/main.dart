import 'package:flutter/material.dart';
import 'package:quizz_demo/quiz.dart';
import 'package:quizz_demo/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const List<Map<String, dynamic>> _questionsAnswers = [
    {
      "question": "What is your favorite language?",
      "answers": ['Java', 'C#', 'Python', 'JavaScript']
    },
    {
      "question": "Which free time you have per day?",
      "answers": ['1 hour', '2 hours', '3hours', "I'm always free"]
    },
    {
      "question": "Do you have a personal computer?",
      "answers": ["Yes", "No"]
    },
  ];
  static int _index = 0;
  static const _TEXT_RESULT = 'Thank You';

  void _handlerQuestionsAnswers() {
    if (_index < _questionsAnswers.length) {
      setState(() {
        _index++;
      });
    }
  }

  void _resetQuiz() {
    setState(() {
      _index = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Process Learn'),
            centerTitle: true,
          ),
          body: _index < _questionsAnswers.length
              ? Quiz(
                  question: _questionsAnswers[_index]['question'],
                  answers: _questionsAnswers[_index]['answers'],
              answerQuestion: _handlerQuestionsAnswers)
              : Result(_resetQuiz, result: _TEXT_RESULT)),
    );
  }
}
