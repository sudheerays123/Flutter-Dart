import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int ResultScore;
  final Function ResetQuiz;

  

  Result(this.ResultScore, this.ResetQuiz);

  // String get ResultPhrase {
  //   var ResultText = 'Good';
  //   if (ResultScore < 10)
  //     ResultText = 'You have to practice more !';
  //   else
  //     ResultText = 'Amazing ! You got all of them correct !';

  //   return ResultText;
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        Text(
          'Your score is : ' + '${ResultScore} out of 2',
          style: TextStyle(
            letterSpacing: 0,
            backgroundColor: Colors.amber[600],
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
          textAlign: TextAlign.center,
        ),
        
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
        ),
        // IconButton(
        //   icon: Icon(Icons.settings_backup_restore),
        //   iconSize: 50,
        //   onPressed: ResetQuiz,

        // ),
        FlatButton(
          child: Column(
            children: <Widget>[
              Icon(
                Icons.settings_backup_restore,
                size: 50,
              ),
              Text('Restart Quiz',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.orange,
                  )),
            ],
          ),
          onPressed: ResetQuiz,
          textColor: Colors.orange,
        ),
      ]),
    );
  }
}

