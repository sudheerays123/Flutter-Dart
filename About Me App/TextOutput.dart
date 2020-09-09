import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  final str;
  TextOutput(this.str);

  @override
  Widget build(BuildContext context) {
    return Text(str);
  }
}
