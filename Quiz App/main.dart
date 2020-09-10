import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './result.dart';
import './quiz.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  final questions = [
    {
      'questiontext': 'Is this made in flutter',
      'answers': [
        {'text': 'Yes', 'score': 1},
        {'text': 'No', 'score': 0}
      ],
    },
    {
      'questiontext': 'Are you Sudheera',
      'answers': [
        {'text': 'Yes', 'score': 1},
        {'text': 'No', 'score': 0}
      ],
    },
];

int _questionindex = 0;
  var _totalScore = 0;

  void _ResetQuiz() {
    setState(() {
      _questionindex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionindex = _questionindex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange[100],
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Quiz App',
                style: TextStyle(color: Colors.blue[900]),
              ),
            ],
          ),
          backgroundColor: Colors.amber,
        ),
        body: _questionindex < questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionindex: _questionindex,
                questions: questions,
              )
            : Result(_totalScore, _ResetQuiz),
      ),
    );
  }
}
