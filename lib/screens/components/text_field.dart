import 'package:flutter/material.dart';

class NumberTextField extends StatelessWidget {
  NumberTextField({this.onChanged});
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      style: TextStyle(fontSize: 35.0),
      onChanged: (value) => onChanged(value),
    );
  }
}
