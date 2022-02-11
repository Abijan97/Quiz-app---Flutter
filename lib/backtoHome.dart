import 'package:first_app/quiz.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class BacktoHome extends StatelessWidget {
  final VoidCallback GoToHome;

  BacktoHome(this.GoToHome);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.amber,
        color: Colors.green,
        child: Text('Back To Home'),
        onPressed: GoToHome,
      ),
    );
  }
}
