import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color backColor;

  const Category({
    @required this.id,
    @required this.title,
    this.backColor = Colors.orange,
  });
}
