import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String Questions;
  Question(this.Questions);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        Questions,
        style: TextStyle(
          fontSize: 28,
          color: Colors.red,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
