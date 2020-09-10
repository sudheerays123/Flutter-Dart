import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionindex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionindex,
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Question(
          questions[questionindex]['questiontext'],
        ),
        ...(questions[questionindex]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
