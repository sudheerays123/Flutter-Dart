import 'package:flutter/material.dart';
import './main.dart';
import './TextOutput.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  String _string = 'This is Sudheera';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RaisedButton(
          onPressed : () {
            setState(() {
              _string = 'I am 15 years old';
            });
          },
          child: Text(
            'Next Information', 
            style: 
            TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            )
          ),
        ),
        TextOutput(_string),
      ],
    );
  }
}
