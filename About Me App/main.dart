import 'package:flutter/material.dart';
import './TextControl.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sudheera'),
          backgroundColor: Colors.red,
        ),
        body: TextControl(),
      ),
    );
  }
}
