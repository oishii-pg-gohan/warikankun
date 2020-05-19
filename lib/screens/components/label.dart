import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  Label({this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 25.0),
    );
  }
}
