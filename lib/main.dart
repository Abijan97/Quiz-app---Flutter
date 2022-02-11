import 'package:first_app/quiz.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './result.dart';
import 'backtoHome.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void _answerQuestion() {
    questionIndex = questionIndex + 1;

    setState(() {});

    print(questionIndex);
  }

  void _backHome() {
    questionIndex = 0;
    setState(() {});
  }

  Widget build(BuildContext context) {
    var _questions = [
      {
        'question': 'What\'s your favourite color?',
        'answers': ['Black', 'White', 'Green', 'Red']
      },
      {
        'question': 'What\'s your favourite animal?',
        'answers': ['Panda', 'Tiger', 'Lion', 'Cat']
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: questionIndex,
              )
            : Column(
                children: [Result(), BacktoHome(_backHome)],
              ),
      ),
    );
  }
}
